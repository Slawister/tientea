<?php
require(RP.'/templates/main_page.php');

class main_page{
	function service(){
		$this->show_mainpage();
	}
	function show_mainpage(){
	    global $db;
		$articles_db=$db->getRows('articles', Array('article_id', 'article_alias', 'article_title', 'box_id', 'article_introdution', 'article_image'), Array('filter' => ' box_id >= 1 AND box_id<=4 AND article_active=1', 'order'=> 'article_order'));
		$articles='';
		foreach ($articles_db as $article){
			if ($article['box_id']>1){
				$articles[$article['box_id']]['article_introdution']=$article['article_introdution'];
				$articles[$article['box_id']]['article_title']=$article['article_title'];
				$articles[$article['box_id']]['article_alias']=$article['article_alias'];
				$articles[$article['box_id']]['article_image']=$article['article_image'];
			}
			else{
				$articles[$article['box_id']][$article['article_id']]['article_title']=$article['article_title'];
				$articles[$article['box_id']][$article['article_id']]['article_alias']=$article['article_alias'];
				$articles[$article['box_id']][$article['article_id']]['article_introdution']=$article['article_introdution'];
			}
			
		}
		//show_tab($boxes);
		//show_tab($boxes);	
		$template = new main_page_template;
		$template->content.=$template->show_title('Witamy w TienTea', 'tea.png');
		$template->build_page($articles[1], Array($articles[2], $articles[3], $articles[4]));

		echo $template->show_page();
	}
}
$module = new main_page; 
?>
