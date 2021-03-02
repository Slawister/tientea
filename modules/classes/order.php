<?php					

require(RP.'/engine/form.php');

class order{
	
	public $db;

	function service(){

			if (isset($_POST['formularz_OK'])){
				$errors=$this->check();
					if($errors==''){

						$this->add();
						
					}
					else $this->show($errors);
			}
			else 
				$this->show();

	}
	

	function __construct(){
		
		global $db;
		$this->db = $db;
		
		if (!isset($_SESSION['customer']['customer_id']) || $_POST['difrent_address']){
			$this->new_address = true;
		}
		else {
			$this->new_address = false;
		}



			$this->items2[] =new inputText('Imię', 'name');
			$this->items2[] =new inputText('Nazwisko', 'surname');
			$this->items2[] =new inputText('ulica', 'street');
			$this->items2[] =new inputHomeNr('Nr domu/Nr lokalu', 'home_nr');
			$options=Array('required' => 0, 'inBase' => 1);
			$this->items2[] =new inputLocalNr('Nr lokalu', 'local_nr', $options);
			$this->items2[] =new inputText('Kod Pocztowy', 'post_code');
			$this->items2[] =new inputText('Miasto', 'city');
			$this->address_Form=new Form($db, 'addresses', 'address_id', 'formularz2', $this->items2, $edit);

	//	($name, $tab, $col, $filter, $required)
		$this->items[] =new inputList('Sposób dostawy', 'supplies', Array('supply_id', 'supply_name'));
		$this->items[] =new inputList('Płatność', 'payments', Array('payment_id', 'payment_name'));
		$this->items[] =new inputTextBox('Dodatkowe informacje', 'comment', $options);
		
		if (isset($_SESSION['customer']['customer_id'])){	
			$this->address=$this->db->getrow('addresses', Array('address_id', 'name', 'surname', 'street', 'home_nr', 'local_nr', 'post_code', 'city'), $_SESSION['address_id']);
			$this->items[] = new inputHidden('ad', 'address_id', $_SESSION['customer']['address_id']);
			$this->items[] = new inputHidden('ui', 'customer_id', $_SESSION['customer']['customer_id']);
		}

		
		$this->Form=new Form($db, 'order', 'order_id', 'formularz', $this->items, 'new');
	}
		
	function show($errors=''){
		require (RP.'/templates/order.php');
		$template = new order_template();
		$template->content=$template->show_path(Array(Array('title'=>'Zamówienie', 'link'=>'')));
		$template->content=$template->show_title('Zamówienie', 'order.png');
		

		if(isset($_SESSION['cart']['products'])){
			$db = new db;
			$customer_address = $db->getRow('addresses', Array('address_id', 'name', 'surname',	'street', 'home_nr','local_nr','post_code','city'), $_SESSION['customer']['address_id']);
			$tiens=$db->getRow('customers', Array('customer_id', 'customer_points'), $_SESSION['customer']['customer_id']);
			$tiens=$tiens['customer_points'];
			if($tiens*0.04>$_SESSION['cart']['total_price']){
				$tiens=floor($_SESSION['cart']['total_price']/0.04);
			}
			/*$customer_address= $customer_address['name'].' '.$customer_address['surname'].'<br />'.$customer_address['street'].' '.$customer_address['home_nr'].'/'.$customer_address['local_nr'].'<br />
			'.$customer_address['post_code'].' '.$customer_address['city'];*/
			$supplies = $db->getRows('supplies', Array('supply_id', 'supply_name', 'supply_cost'));
			$form_values=$this->Form->template_export();
			$form_values+= $this->address_Form->template_export();
			//show_tab($form_values);
			$payments = $db->getRows('payments', Array('payment_id', 'payment_name', 'payment_cost'));
			if ($_SESSION['cart']['total_price']>=100){
				for($i=0;$i<count($supplies);$i++){
					$supplies[$i]['supply_cost']=0;
				}
			}
			
			$template->build_page($_SESSION['customer']['customer_id'], $_SESSION['customer']['address_id'], $customer_address, $payments, $supplies, '',$tiens, $form_values, $errors);
			echo $template->show_page();
		}
		else {
			$template->content.=$template->dialog_page('Z pustego koszyka to i Salomon nie zamówi.');
			echo $template->show_page();
		}
	}

	function add(){
		$id=$this->Form->add();

		$order_points=ceil($_SESSION['cart']['total_price']*4);
		$customer_points='0';
		$address_id=$this->Form->values['ad'];

		if(isset($_SESSION['customer']['customer_id'])){
			if($_POST['tien_payment']!=1){
				if(!$this->new_address){
					//zalogowany, bez pkt, normalny adres
					mysql_query('UPDATE customers SET customer_points=customer_points+'.$order_points.' WHERE customer_id='.$_SESSION['customer']['customer_id']);
					//$this->db->update('shamanshop_5.order', Array('order_id', 'order_points'), Array($id, $order_points));
					//echo 'Punkty dodane='.ceil($order_points);
				}
				else{
					//zalogowany, bez pkt, inny adres
					$address_id=$this->address_Form->add();
					//$this->db->update('shamanshop_5.order', Array('order_id', 'address_id', 'order_points'), Array($id, $id2, ceil($_SESSION['cart']['total_price']*4)));
					mysql_query('UPDATE customers SET customer_points=customer_points+'.$order_points.' WHERE customer_id='.$_SESSION['customer']['customer_id']);
					//echo 'Punkty dodane='.ceil($_SESSION['cart']['total_price']*4).' inny adres id='.$address_id;
				}
			}
			else if(!$this->new_address){
				//zalogowany, platnosc pkt, normalny adres
				$customer_points=$this->db->getRow('customers', Array('customer_id', 'customer_points'), $_SESSION['customer']['customer_id']);
				$customer_points=$customer_points['customer_points'];
				if ($customer_points*0.04>$_SESSION['cart']['total_price']){
					$customer_points=floor($_SESSION['cart']['total_price']/0.04);
				}
				$order_points=ceil(($_SESSION['cart']['total_price']-$customer_points*0.04)*4);

				$query='UPDATE customers SET customer_points=customer_points+'.$order_points.'-'.$customer_points.' WHERE customer_id='.$_SESSION['customer']['customer_id'];
				mysql_query($query);

				//echo 'Płatnosc punktami. Punkty wykorzystane='.$customer_points.' Punkty dodane='.$order_points.'normalny adres';
				
			}
			else {
				//zalogowany, platnosc pkt, inny adres
				$address_id=$this->address_Form->add();
				$customer_points=$this->db->getRow('customers', Array('customer_id', 'customer_points'), $_SESSION['customer']['customer_id']);
				$customer_points=$customer_points['customer_points'];
				if ($customer_points*0.04>$_SESSION['cart']['total_price']){
					$customer_points=floor($_SESSION['cart']['total_price']/0.04);
				}
				$order_points=ceil(($_SESSION['cart']['total_price']-$customer_points*0.04)*4);

				//$this->db->update('shamanshop_5.order', Array('order_id', 'address_id', 'order_points', 'point_payment'), Array($id, $id2, $order_points, $customer_points));
				$query='UPDATE customers SET customer_points=customer_points+'.$order_points.'-'.$customer_points.' WHERE customer_id='.$_SESSION['customer']['customer_id'];
				mysql_query($query);
				//echo 'Płatnosc punktami. Punkty wykorzystane='.$customer_points.' Punkty dodane='.$order_points.' inny adres id='.$id2;
				
				
			}
			
		}
		else{
			$address_id=$this->address_Form->add();
			$order_points=0;

		}

		/*


		

		if ($this->new_address){
			$id2=$this->address_Form->add();
			$this->db->update('shamanshop_5.order', Array('order_id', 'address_id'), Array($id, $id2));
			
		}
		if(isset($_SESSION['customer']['customer_id'])){

			$customer_points=$this->db->getRow('customers', Array('customer_id', 'customer_points'), $_SESSION['customer']['customer_id']);
			$customer_points=$customer_point['customer_points'];
			if($_POST['tien_payment']==1){
				mysql_query('UPDATE customers SET customer_points='.(ceil($_SESSION['cart']['total_price']*4)).' WHERE customer_id='.$_SESSION['customer']['customer_id']);
			}
		}
*/
		reset ($_SESSION['cart']); // Funkcja ta powoduje powrót do pierwszego elementu tablicy
			while (list ($col, $value) = each ($_SESSION['cart']['products'])) {
			//show_tab($value);
			$this->db->add('order_products', Array('order_id', 'product_id', 'order_product_price', 'order_product_weight', 'order_product_quantity'), Array($id, $value['product_id'], $value['price'], $value['weight'], $value['quantity'] ));
		}
	foreach ($_SESSION['cart']['gratis'] as $value){
		      $this->db->add('order_products', Array('order_id', 'product_id', 'order_product_price', 'order_product_weight', 'order_product_quantity'), Array($id, $value['product_id'], '0', '0', '0' ));
		      }
		 $query='UPDATE shamanshop_5.order
					SET
					order_nr =((SELECT max_order_nr FROM (SELECT MAX( order_nr ) AS max_order_nr FROM shamanshop_5.order) AS sub_selected_value) + 1 ),
					address_id='.$address_id.', order_points='.$order_points.', points_payment='.$customer_points.'
					WHERE order_id = \''.$id.'\'';
		
		mysql_query($query);

		require (RP.'/templates/order.php');
		$template = new order_template();
		$template->content=$template->show_path(Array(Array('title'=>'Zamówienie', 'link'=>'')));
		$template->content=$template->show_title('Zamówienie', 'order.png');
        
        $text="Zamówienie zostało przyjęte.<br />
        Dołożymy wszelkich starań, aby czas realizacji był jak najkrótszy.<br />
        Na Twój adres e-mail zostały wysłane szczegóły dotyczące złożonego zamówienia.<br />
        W razie pytań lub wątpliwości skontaktuj się z nami!<br />
        gg: 5455560, e-mail: sklep@tientea.pl <br />
        Jesteśmy stale do Twojej dyspozycji.<br />
        Serdecznie zapraszamy do ponownych odwiedzin!<br />
        ";
        
		$template->content.=$template->dialog_page('Zamówienie przyjęte. Dziękujemy.');
		echo $template->show_page();
	} 
	
	function check(){
		$errors='';
		$errors=$this->Form->check();
		if ($errors=='') {
			if($this->new_address){
				$errors.=$this->address_Form->Check();
				if ($errors=='') { 
					if(!preg_match ( '/^[0-9]{2}-[0-9]{3}$/i' , $this->address_Form->values['Kod Pocztowy'])){
						$errors.='Nieprawodłowy kod pocztowy<br />'.$this->address_Form->values['Kod Pocztowy'];
					}
				}
			}
		}

		return($errors);
	}
}

$module = new order;
?>