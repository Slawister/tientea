<?php		

	$tab='weights';
	$id_name='weight_id';
	
	if(isset($_GET[edit])){
		if (!is_numeric($_GET[edit]) && $_GET[edit]!='new'){
			DIE('błędne ID');
		}

		$items[] = new inputText('waga', 'weight', 1);

		$Form=new Form($base, $tab, $id_name, 'formularz', $items, $_GET['edit']);
		
		//$form2=new Form($base, 'products_weights', 'product_weights_id', 'formularz2', Array
		
		standart_form_behavior(Array($Form));
		
		echo '</form>';

	}
	else {
	$col=Array($id_name,'weight');
	$head=Array('','Waga');
	$products=new listing($base, $tab, $head, $col, '', ''); 
	$products->show();
	
	
	
	}
	?>