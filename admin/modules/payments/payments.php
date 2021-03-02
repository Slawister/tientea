<?php


	
		$items[] = new inputText('Nazwa', 'payment_name');
		$items[] = new inputText('Koszt', 'payment_cost');


$module= new admin_module('Opis', 'payments', 'payment_id', $items);

?>