<?php	
class order_listing extends listing{
	function showLine($col, $start, $odd){

		if ($odd) $out='<tr class="odd">';
		else $out='<tr class="even">';
		$out.='<td class="option">';
		$out.='<form method="POST" action="'.$this->rootURL.$col[$this->col[0]].'">
		<input type="submit" style="width:20px; background-color:red" name="'.$this->name.'_OK" value="delete"
		onclick="if (!confirm(\'Czy na pewno chcesz wyczyścić cały formularz?\')) return false;"
		/></form>';
		$out.="</td>";
		for($i=$start; $i<count($col); $i++){
			if($i==1){
				$value=order_nr($col[$this->col[$i]], $col[$this->col[6]]);
			}
			else if (empty($col[$this->col[$i]]))
				$value=$this->null_value;
			else {
				$value=$col[$this->col[$i]];
			}
			
			$out.='<td><a href="'.$this->rootURL.$col[$this->col[0]].'"><div>'.$value.'</div></a></td>';
		}
		$out.="</tr>\n";
		echo $out;
	}
}

	class order_module extends extendet_admin_module {
		function show(){
            $this->db=new db;
			echo '<a href="?go='.$this->go.'&edit='.$this->id.'">Opis</a>';
			$i=1;
			foreach ($this->internal_modules as $i_module){
				$i++;
				echo '<a href="?go='.$this->go.'&edit='.$this->id.'&edit'.$i.'=list">module-'.$i.'</a> ';
			}
			echo '<br /><a onclick="document.getElementById(\'button-ok\').click();"><img src="/admin/img/save.png" /></a>';
			if ($this->id!='new') echo '<a onclick="if (confirm(\'Czy na pewno chcesz usunac element?\')) document.getElementById(\'button-del\').click();"><img src="/admin/img/delete.png" /></a>';
			$i=1;
			
			foreach ($this->internal_modules as $i_module){
				$i++;
				/// if(isset($_GET['edit'.$i])){
				 if(isset($_GET['edit'.$i]) ){
					 $i_module->service();
					 $i=0;
					 break;
				}
			}
			
			if($i>0) {
				$this->Form->show();
				$order_details=$this->db->getRow('order', Array('order_id', 'address_id', 'order_points', 'points_payment', 'payment_id', 'supply_id'), $this->id);
				$address=$this->db->getRow('addresses', Array('address_id', 'name imie', 'surname', 'street', 'home_nr', 'local_nr', 'post_code',  'city'), $order_details['address_id'] );
				$payment=$this->db->getRow('payments', Array('payment_id', 'payment_cost', 'payment_name'), $order_details['payment_id']);
				$supply=$this->db->getRow('supplies', Array('supply_id', 'supply_cost', 'supply_name'), $order_details['supply_id']);
				
				$options['filter']='order_id='.$_GET['edit'];
				$options['join_tab']= Array(Array('LEFT OUTER', 'order_products', 'products', 'product_id'));
				$products=$this->db->getRows('order_products', Array('order_product_id', 'order_product_price', 'order_product_weight', 'order_product_quantity', 'product_name'), $options);
				echo 'Adres dostawy: <br />';
				echo $address['imie'].' '.$address['surname'].'<br />'.$address['street'].' '.$address['home_nr'];
				if (!empty($address['local_nr'])) echo '/'.$address['local_nr'];
				echo '<br />'.$address['post_code'].' '.$address['city'];
				echo '<br /><br />Zamówienie:<table>';
				$sum='';
				echo '<tr><td>Nazwa</td><td>Waga</td><td>Ilość</td><td>Cena</td></tr>';
				if ($products==null) $products=Array(null);
				
				foreach ($products as $product){
				    if($product['order_product_price']==0 && $product['order_product_quantity']==0 && $product['order_product_weight']==0){
				        echo '<tr><td>GRATIS - '.$product['product_name'].'</td><td></td><td></td><td>GRATIS</td></tr>';
                    }
                    else{ 
					   $sum+=$product['order_product_price']*$product['order_product_quantity'];
					   echo '<tr><td>'.$product['product_name'].'</td><td>'.$product['order_product_weight'].'</td><td>'.$product['order_product_quantity'].'</td><td>'.$product['order_product_price']*$product['order_product_quantity'].'zł ('.$product['order_product_price'].'zł)</td></tr>';
                    }
				}
				if ($sum>=180){
					$supply['supply_cost']=0;
				}
				if($order_details['points_payment']>0){
					 echo '<tr><td></td><td></td><td>Płatność punktami</td><td>-'.$order_details['points_payment']*0.04.' zł ('.$order_details['points_payment'].' tienów)</td></tr>';
					$sum-=ceil($order_details['points_payment']*0.04);
				}
				if($payment['payment_cost']>0)
					echo '<tr><td></td><td></td><td>Płatność: '.$payment['payment_name'].'</td><td>'.$payment['payment_cost'].'</td></tr>';
				echo '<tr><td></td><td></td><td>Wysyłka: '.$supply['supply_name'].'</td><td>'.$supply['supply_cost'].'</td></tr>';
				echo '<tr><td></td><td></td><td>Suma</td><td>'.($sum+$supply['supply_cost']+$payment['payment_cost']).'</td></tr>';
				echo '</table>';
			}
		}
	}
	if (isset($_GET['edit'])) $edit=check($_GET['edit']);
	else $edit='';
	
	if (isset($_GET['edit2'])) $edit2=check($_GET['edit2']);
	else $edit2='';
	
	$tab='order';
	$id_name='order_id';

		$items[2]= new inputList("Status", 'dict_order_statuses', array('order_status_id', 'status_name'));
		$options=Array('required' => 0, 'inBase' => 1, 'listing'=>0);
		$items[]= new inputList('Płatność', 'payments', Array('payment_id', 'payment_name'), $options);
		$items[]= new inputList('Wysyłka', 'supplies', Array('supply_id', 'supply_name'), $options);

		$items[]= new inputTextBox('Komentarz', 'comment', $options);
		$options=Array('required' => 0, 'inBase' => 0, 'listing'=>1);
		$items[]= new inputText('data', 'order_date',$options);		
		
		$items2[]= new inputList('Produkt', 'products', Array('product_id', 'product_name'));
		$items2[]=new inputText('Cena', 'order_product_price');
		$items2[]=new inputText('Ilość', 'order_product_quantity');
		$options=Array('required' => 1, 'inBase' => 1, 'listing'=>0);
		$items2[]=new inputHidden('asd', 'order_id', $edit, $options);
		
		$i_module = new admin_module('Produkty', 'order_products', 'order_product_id', $items2, $edit2);
		$i_module->list->join_tab[]=Array('LEFT OUTER', $i_module->tab, 'products', 'product_id');
		$list=new order_listing(new db, 'order', 'order_id', $items );
		$module = new order_module('Opis', 'order', 'order_id', $items, $edit, Array($i_module), $list);
		
		$module->list->null_value='<i>niezarejestrowany</i>';
		
		
		
		$join_tab[]=Array('LEFT OUTER', $tab, 'supplies', 'supply_id');
		$join_tab[]=Array('LEFT OUTER', $tab, 'payments', 'payment_id');
		$join_tab[]=Array('LEFT OUTER', $tab, 'addresses', 'address_id');
		$join_tab[]=Array('LEFT OUTER', $tab, 'customers', 'customer_id');
		$join_tab[]=Array('LEFT OUTER', $tab, 'dict_order_statuses', 'order_status_id');
		
		$module ->list-> join_tab = $join_tab;
		$options=Array('required' => 0, 'inBase' => 0, 'listing'=>1);
		array_unshift($module->list->items, new inputText('numer', 'order_nr ', $options),  new inputText('klient', 'email', $options), new inputText('imie', 'name', $options), new inputText('nazwisko', 'surname', $options));
	

?>