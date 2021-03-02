<?php

		$items[] =new inputText('Tytuł', 'article_title');
		$items[] =new inputText('Alias', 'article_alias');
        $options=Array('required' => 0, 'listing'=>1, 'inBase'=>1);
        $items[] =new inputText('Kolejność', 'article_order', $options);
		$options=Array('required' => 0, 'listing'=>0, 'inBase'=>1);
		$items[] =new inputPhoto('Obrazek', 'article_image', $options);
		$items[] =new inputCkeEditor('Wstęp', 'article_introdution', $options);
		$options=Array('required' => 1, 'listing'=>0, 'inBase'=>1);
		$items[] =new inputCkeEditor('Treść', 'article_content', $options);
		$items[] =new inputList('Box', 'dict_boxes', Array('box_id', 'box_name'));
		$options=Array('required' => 0, 'listing'=>1, 'inBase'=>1);
		$items[] =new inputCheckBox('Aktywny', 'article_active', $options);

$module = new admin_module('Artykuły', 'articles', 'article_id', $items);
$module->list->join_tab[]=(Array('LEFT OUTER', 'articles', 'dict_boxes', 'box_id'));
?>