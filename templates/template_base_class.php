<?php	


class template{
	public $patch;
	public $title;
	public $image;
	public $header;
	public $content;
	
	function __construct(){
		$this->patch='';
		$this->title='';
		$this->header='';
		$this->content='';
	}
	function show_title($title, $title_image){
		$out='';
		$out .= '<div><img src="images/title_icons/'.$title_image.'" class="site_title"><h1 class="site_title">'.$title.'</h1></div>'."\n";
		//echo '<div style="clear: both" />';
		return($out);
		
	}
	function show_path($path=Array(null)){
		$out ='';
		$out.='<div>';
		
		$out.='<img src="images/path_tab_left.png" class="path" /><a href="/"><div class="path">SKLEP</div></a><img style="margin:0;" class="path" src="images/path_tab_right.png" />'."\n";
		foreach($path as $p){
			$out.= '<img class="path" src="images/path_tab_next.png" /><img src="images/path_tab_left.png" class="path" /><a href="'.$p['link'].'"><div class="path">'.$p['title'].'</div></a><img style="margin:0;" class="path" src="images/path_tab_right.png" />'."\n";
		}		
		$out.= '<div style="clear: both" ></div>'."\n";
		$out.= '</div>'."\n";
		return($out);
	}
	
	function dialog_page($text){
		$out= '
		<div class="dialog">
					<div style="width:291px;height:31px"><img src="images/dialog_top.png" /></div>
					<div style="width:279px;background: url(images/dialog_middle.png) repeat-y top right; padding:0 6px">'.$text.'</div>
					<div style="width:455px;height:251px"><img src="images/dialog_bottom.png" /></div>
					
					
		</div>
			
		';
		return($out);
		}
//<div style=;padding-left:190px;padding-right:20px;" > 291px × 31px
	
	function show_page(){
		$menu = new categories_menu;
		$cart = new small_cart;
		$login = new small_login;

		//<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		$out = '<!DOCTYPE html 
                     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
                        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
                        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
				<head>
	 				<meta http-equiv="content-type" content="text/html; charset=utf-8" />
					<script type="text/javascript" src="scripts/yetii.js"></script>
					<script type="text/javascript" src="scripts/swfobject.js"></script>
					<script type="text/javascript" src="scripts/custom_form.js"></script>
					<script type="text/javascript" src="scripts/mootools.js"></script>
					<script type="text/javascript" src="scripts/slideshow.js"></script>
					<link href="style.css" rel="stylesheet" type="text/css" />
					<link href="font.css" rel="stylesheet" type="text/css" />
					<link href="templates/templates.css" rel="stylesheet" type="text/css" />
					<script type="text/javascript">
                    var flashvars = {};
                      var params = {};
                      params.play = "true";
                      params.menu = "false";
                      params.quality = "best";
                      params.bgcolor = "#fff";
                      params.wmode  = "transparent";
                      params.allowscriptaccess = "sameDomain";
                      var attributes = {};
                      attributes.id = "flash1";
                      swfobject.embedSWF("smoke.swf", "smoke", "100", "246", "9.0.0", false, flashvars, params, attributes);

						function replaceT(obj){
						var newO=document.createElement(\'input\');
						newO.setAttribute(\'type\',\'password\');
						newO.setAttribute(\'name\',obj.getAttribute(\'name\'));
                        newO.setAttribute(\'size\',obj.getAttribute(\'size\'));
                        newO.setAttribute(\'style\',obj.getAttribute(\'style\'));
						newO.setAttribute(\'class\', \'login\'); 
						obj.parentNode.replaceChild(newO,obj);
						newO.focus();
						}
                        
                   function showArticleImage(id){
                        var container = $(\'articleImages_box\');
                        var images = container.getElements(\'img\');

                         
                         images[id].fade(\'in\');
                        for(var i=0; i<images.length; i++){
                            if(i!=id){
                                 images[i].fade(\'out\');
                            } 
                        }
                   }
                   
                   
                    function hideArticleImage(){
                        var container = $(\'articleImages_box\');
                        var images = container.getElements(\'img\');
                        images[0].fade(\'in\');
                        for(var i=1; i<images.length; i++){
                                images[i].fade(\'out\');
                        }
                    }
                        
                      
					</script>';
                    $out.=$menu->export_styles();
					$out.=$this->header;
				$out.='
			</head>

			<body>
<!--
<div class="free_supply">
    <div class="free_supply_content">
        Darmowa wysyłka
    </div>
</div>
-->
				
<!--
				<div class="smoke_conteiner">
				    <div id="smoke" style="border:solid thin;background:black;">d

    				</div>
<div id="slideshow-container">
	<div id="slides">
	  <img src="images/slides/1.jpg" />
	  <img src="images/slides/2.jpg" />
	  <img src="images/slides/3.jpg" />
	  <img src="images/slides/4.jpg" />
	</div>
	<div id="slideButtons">
		<button class="slideButton" id="b1" >1</button>
		<button style="left:20px;" class="slideButton" id="b2" >2</button>
		<button style="left:40px;" class="slideButton" id="b3" >3</button>
		<button style="left:60px;" class="slideButton" id="b4" >4</button>
	</div>-->
	
<div class="header">
<div style="width:997px;height:32px;"><img src="images/naglowek_sklepu_1.jpg" /></div>
<div style="float:left;width:230px;height:361px;" ><a href="/"><img src="images/naglowek_sklepu_2.jpg" /></a></div>
<div style="float:left" >
    <div class="smoke_conteiner" style="width:100px;height:255px;" ><div id="smoke" ></div></div>
    <div style="width:100px;height:106px;" ><img src="images/naglowek_sklepu_4.jpg" /></div>
</div>
<div style="float:left;width:162px;height:361px"><img src="images/naglowek_sklepu_5.jpg" /></div>
<div style="float:left">
    <div id="slideshow-container" style="width:449px;height:285px" >
        <div id="slides">
              <img src="img/slides/darmowa_wanilia.jpg" />
              <img src="img/slides/darmowa_wysylka.jpg" />
              <img src="img/slides/gratisy_do_zamowien.jpg" />
              <img src="img/slides/punkty_rabatowe.jpg" />
        </div>
        <div id="slideButtons">
            <button class="slideButton" id="b1" >1</button>
            <button style="left:25px;" class="slideButton" id="b2" >2</button>
            <button style="left:50px;" class="slideButton" id="b3" >3</button>
            <button style="left:75px;" class="slideButton" id="b4" >4</button>
        </div>
    </div>
    <div style="width:449px;height:76px" ><img src="images/naglowek_sklepu_7.jpg" /></div>
</div>
<div style="width:56;height:356px;"><img src="images/naglowek_sklepu_8.jpg" /></div>
</div>
<div style="clear:both"></div>

<!--    			</div>

				</div>-->
				
				<div class="h_menu">
	 				<div class="h_menu2">';
						$out.=$menu->show_horizontal();
		 				$out.='
	 				</div>
				</div>
				<div class="info_and_tools">
					<div class="info" style="float:left;">
						<a href="?go=artykuly&alias=o_nas">O nas</a>
						<a href="?go=artykuly&alias=regulamin">regulamin</a>
						<a href="?go=artykuly&alias=wysylka_i_platnosci">Wysyłka i Płatnośći</a>
						<a href="?go=artykuly&alias=reklamacje">Reklamacje</a>
						<a href="?go=artykuly&alias=gwarancja_jakosci">Gwarancja jakości</a>
					</div>
					<div class="tools" align="right">';
					    if (isset($_SESSION['customer']['customer_id'])) {
					        $out.='
                            <a href="?go=logowanie&logout=1" class="tool_logoff">Wyloguj</a>';
                       }
                       else {
                            $out.='
                            <a href="?go=rejestracja" class="tool_register">Rejestracja</a>';
                        }
					
					
					$out.='<br style="clear: both" />
					</div>
				</div>

				<div class="content_conteiner">

			
					<div class="content">
						<div class="h_line" ></div>';
						$out.=$this->content;
						$out.='
						<div style="clear:both;height:100px;"></div>
					</div> <!-- content -->
					
					<div class="right_column">
					';
					$out.=$login->show().'<br />';
					$out.=$cart->show();
					
							$out.='
					</div> <!-- right col -->
					
				</div><!-- content_conteiner -->	
					
   				 
   				 <div class="footer" align="center">
   				     <div class="h_line" ></div>
   				     <div class="h_line" style="margin-top:10px;"></div>
   				     '.$menu->show_in_footer().'
   				     <div class="copyright"><p>Copyright © 2011 by TIENTEA</p></div>
   				 </div><!-- footer-->


			</body>';
			return($out);
	}
}

?>






