<?php						


		
		$items[] = new inputText('Nazwa', 'supply_name');
		$items[] = new inputText('Koszt', 'supply_cost');


$module= new admin_module('Opis', 'supplies', 'supply_id', $items);

?>