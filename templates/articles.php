<?php
require('template_base_class.php');
class articles_template extends template {
	function build_page($title, $content){
		$out='';
		$out.='<div class="article"><p>'.$content.'</p></div>';

		$this->content.=$out;
	}
}
?>
