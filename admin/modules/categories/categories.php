<?php			


	if (isset($_GET['edit'])) $edit=check($_GET['edit']);
	else $edit='';
	if (isset($_GET['edit2'])) $edit2=check($_GET['edit2']);
	else $edit2='';
		$options=Array('required' => 1, 'inBase' => 1, 'listing'=>0);
	
		$items[] = new inputText('Nazwa Kategorii', 'category_name');
		$items[] = new inputText('Alias', 'category_alias', $options);
        $options=Array('required' => 0, 'inBase' => 1, 'listing'=>0);
        $items[] = new inputCheckBox('Herbaty', 'category_isTea', $options);
         
		//$items[] = new inputPhoto('zdjęcie w menu', 'image', $options);
	//	$items[] = new inputPhoto('duże zdjęcie', 'large_image', $options);
		$items[] = new inputCkeEditor('Opis kategorii','category_description',$options);
		
		$items2[] = new inputText('Nazwa Kategorii', 'subcategory_name');
		$items2[] = new inputTextAlias('Alias', 'subcategory_alias');
		$items2[] = new inputCkeEditor('Opis kategorii','description', $options);
		$options['listing']=0;
		$items2[] = new inputHidden('kategoria_id', 'category_id', $edit,$options);
		
		$i_module=new admin_module('Podkategorie', 'subcategories', 'subcategory_id', $items2, $edit2);

$module= new extendet_admin_module('Opis', 'categories', 'category_id', $items, $edit, Array($i_module));