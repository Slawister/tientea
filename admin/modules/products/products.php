<?php					
/*
class inputListLink extends inputList{
	public function show($value, $item_nr){
	$selected='';
		$base=new db;
		$results=$base->getRows($this->tab, $this->col, ARRAY('filter' => $this->options['filter']));
		$out='<tr><td class="label">'.$this->name.'</td><td class="value"><select id="'.$item_nr.'" onchange="document.forms[0].submit()" name="'.$item_nr.'">'."\n";
		if (!empty($value)) {
			$selected=$value;
		}
		else $out.='<option></option>';
		foreach ( $results as $item ){
			$i=0;
			foreach($this->col as $head){
				if ($i==0){
					$out.='<option value="'.$item[$head].'"';
					if ($selected==$item[$head]){
						$out.=' selected="selected"';
					}
					$out.=">";
					$i++;
				}
				else { 
					$out.=$item[$head].' ';
				}
			}
			$out.='</option>'."\n";
		}
		$out.="</select></td></tr>";
		echo $out;
	}
}
 * 
 */
		if (isset($_GET['edit'])) $edit=check($_GET['edit']);
		else $edit='';
		if (isset($_GET['edit2'])) $edit2=check($_GET['edit2']);
		else $edit2='';
		
		$options=Array('required' => 1, 'inBase' => 1, 'listing'=>0);
		$items[] =new inputText('Nazwa Produktu', 'product_name');
        $options=Array('required' => 1, 'inBase' => 1, 'listing'=>1);
		$items[] = new InputTextAlias('Alias', 'product_alias', $options);
		$items[] = new inputText('Kolejność', 'product_order');
		$items[] = new inputList('Kategoria', 'categories', Array('category_id', 'category_name'));

		$options=Array('required' => 0, 'inBase' => 1, 'listing'=>1);
		$items[] = new inputList('Pod Kategoria', 'subcategories', Array('subcategory_id', 'subcategory_name'), $options); 
		$options['listing']=0;
        $items[] = new inputList('Jednostka', 'dict_units', Array('unit_id', 'unit_value'), $options);
        $items[] = new inputCheckBox('Gratis', 'is_gratis', Array('required' => 0, 'inBase' => 1));
       
		$items[] =new inputCkeEditor('Opis', 'product_description', $options);
		$items[] =new inputCkeEditor('Jak zaparzyć', 'tab1', $options);
		$items[] =new inputCkeEditor('Skład', 'tab2', $options);
		$items[] =new inputCkeEditor('Pochodzenie', 'tab3', $options);
		//$items[] = new inputPhoto('zdjecie', 'photo', $options);
		$items[] =new inputList('Aktywna zakładka', 'dict_active_tab', Array('active_tab_id', 'active_tab_name'), $options);
		//$weights=$base->getRows('weights', Array('weight_id', 'weight'), '', '');
		$items2[] =new inputHidden('prod_id', 'product_id', $edit,$options);
		$items2[] =new inputText('ilość', 'weight');
		$items2[] =new inputText('cena', 'price');
			
		$i_modules[0]=new admin_module('Ilosci', 'product_weights', 'product_weight_id', $items2, $edit2);

		
		$module = new extendet_admin_module('Opis', 'products', 'product_id', $items, $edit, $i_modules);

		$module->list->join_tab=Array(Array('LEFT OUTER', 'products', 'categories', 'category_id'));
		$module->list->join_tab[]=Array('LEFT OUTER', 'products', 'subcategories', 'subcategory_id');
		//$module->list->join_tab[]=; 
		
		if (!empty($_POST['Opis-2']) ) {
			$module->Form->items[3]->options['filter']='category_id='.$_POST['Opis-2'];
		}
		else if (!empty($module->Form->edit) && $module->Form->edit!='new'){
			$base=new db;
			$tmp=$base->getRow('products', Array('product_id', 'category_id'), $edit);
			$module->Form->items[3]->options['filter']='category_id='.$tmp['category_id'];
		}
	
?>