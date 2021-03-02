<?php
require(RP.'/templates/articles.php');

class articles{
	function service(){
		$this->show_mainpage();
	}
	function show_mainpage(){
		$article=db::getRow('articles', Array('article_alias', 'article_id', 'article_title', 'article_content'), $_GET['alias']);

		if (count($article)>2){
			$template = new articles_template;
			$template->content.=$template->show_title($article['article_title'], 'tea.png');
			$template->build_page($article['article_title'], $article['article_content']);
	
			echo $template->show_page();
		}
		else {
			echo "brak strony";	
		}
	}
}
$module = new articles; 
?>
