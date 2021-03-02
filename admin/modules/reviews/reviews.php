<?php			
		$items[]=new inputList('Klient', 'customers', Array('customer_id', 'customer_name', 'customer_surname', 'email'));
		$items[]=new inputText('Ocena', 'review_rate');
		$items[]=new inputList('Produkt', 'products', Array('product_id', 'product_name'));
		$options=Array('required' => 1, 'inBase' => 1, 'listing'=>0);
		$items[] = new inputTextBox('Text', 'review_text', $options);
		$options=Array('required' => 0, 'inBase' => 1, 'listing'=>1);
		$items[]=new inputList('Status', 'dict_review_statuses', Array('review_status_id', 'review_status_name'), $options);

$module= new admin_module('Opis', 'reviews', 'review_id', $items);

	$module->list->join_tab[]=(Array('LEFT OUTER', 'reviews', 'dict_review_statuses', 'review_status_id'));
	$module->list->join_tab[]=(Array('LEFT OUTER', 'reviews', 'customers', 'customer_id'));
	$module->list->join_tab[]=(Array('LEFT OUTER', 'reviews', 'products', 'product_id'));
	$options=Array('required' => 0, 'inBase' => 0, 'listing'=>1);
//	array_unshift($module->list->items, new inputText('Klient', 'email ', $options));

if(!isset($_GET['order'])){
	$module->list->order='bug_id';
	$module->list->desc='DESC';
}


?>