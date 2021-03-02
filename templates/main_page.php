<?php
require('template_base_class.php');
class main_page_template extends template {
	function build_page($articles, $boxes){
		//show_tab($boxes);
		$out='';
		$out.='
		<br style="clear: both" />
			<div class="articleImages_box" id="articleImages_box">
			    <img src="img/str_glowna/powitanie.jpg" style="position:absolute; opacity: 1;" />
			    <img src="img/str_glowna/jak_zaparzyc.jpg" style="position:absolute; opacity: 0;" />
				<img src="img/str_glowna/misio.jpg" style="position:absolute; opacity: 0;" />
				<img src="img/str_glowna/afrodyzjaki.jpg" style="position:absolute; opacity: 0;" />
				<img src="img/str_glowna/grecja.jpg" style="position:absolute; opacity: 0;" />
				
			</div>
			
			<div class="articlesLinks_box" onmouseout="hideArticleImage()">
               <ul class="articlesLinks_box">';
                $i=1;
                foreach($articles as $article){
                    $out.= '<li onmouseover="showArticleImage('.$i.');"><a href="?go=artykuly&alias='.$article['article_alias'].'" >'.$article['article_title'].$article['article_introdution'].'</a></li>';
                    $i++;
                }
                $out.= '
                </ul>
			</div>
			
			<div style="clear: both"></div>
			<br /><br />
			<div class="boxes">';
			for($i=0;$i<3;$i++)
				$out.='<div class="news_box">
				    <a href="?go=artykuly&alias='.$boxes[$i]['article_alias'].'">
						<h1>'.$boxes[$i]['article_title'].'</h1>
						  <div><img src="'.$boxes[$i]['article_image'].'">'
						      .$boxes[$i]['article_introdution'].'
						  </div>
					</a>
				</div>';
			
			$out.='
			</div>'
			
			;
		$this->content.=$out;
	}
}
?>