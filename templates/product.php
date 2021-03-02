<?php							
require(RP.'/templates/template_base_class.php');

class product_template extends template {
	function build_page($product, $prices, $reviews){

		$this->header.='<script type="text/javascript" src="scripts/rating.js"></script>
			<script type="text/javascript">
		
function check(form)
{
	var error="Uzupełnij proszę ";

		
	
	if(!Custom.check()){
		alert("Proszę oceń produkt");
		return false;
	}
	if(form.elements[\'formularz-4\'].value==""){
		alert("Recenzja nie może być pusta");
		return false;
	}
	return true;
}	
		
		</script>';
        
      $this->header.='<script src="plugins/lightbox/js/jquery-1.7.2.min.js"></script>
                      <script src="plugins/lightbox/js/lightbox.js"></script>
                      <link href="plugins/lightbox/css/lightbox.css" rel="stylesheet" />';

		$out='';
		
		$out.= '<div class="product_left" >';
		$out.=$this->show_title($product['product_name'], 'tea.png');
		$out.= '<div class="description">
		'.$product['product_description'].'
		</div>
		
		 <div class="product_details" id="tab-container-1">
		
		     <ul id="tab-container-1-nav">';
			 
		    if(!empty($product['tab1'])){
		     	$out.='<li><a href="#tab1">Jak przygotować</a></li>';
            }
		    if(!empty($product['tab2'])){
		    	$out.='<li><a href="#tab2">Skład</a></li>';
            }
			if(!empty($product['tab3'])){
				$out.='<li><a href="#tab3">Pochodzenie</a></li>';
            }
		    
		    $out.='</ul>
			  <br style="clear: both" />';
		 
		  if(!empty($product['tab1'])){
		       $out.='<div class="tab" id="tab1">';
		       $out.=$product['tab1'];
		       $out.='</div>';
          
          }
          
         
		  if(!empty($product['tab2'])){
            $out.='<div class="tab" id="tab2">'; 
		    $out.=$product['tab2'];
            $out.='</div>';
          }
          
          
		  if(!empty($product['tab3'])){
		      $out.='<div class="tab" id="tab3">'; 
			  $out.=$product['tab3'];
		      $out.='</div>';
          }
		 
		$out.='
		 </div>';
		 
		
		$out.=	'
		 <script type="text/javascript">
		 var tabber1 = new Yetii({
		 id: \'tab-container-1\',active: '.$product['active_tab_id'].'
		 });
		 </script>
		
		</div>
		
		<div class="product_right">
		<a href="'.HTTP_ADDRESS.'/img/produkty/'.$product['product_alias'].'_2.jpg" rel="lightbox"><img width="300" src="'.HTTP_ADDRESS.'/img/produkty/'.$product['product_alias'].'_2.jpg" alt="zdjecie_herbaty"/></a>';

		if(count($prices)>=1){
		   
		$out.= '<table class="prices_table" cellpadding="0" cellspacing="0">
			<tr >
			<th>Ilość</th><th>Cena</th><th>&nbsp;</th>';
            
            if($product['is_gratis'])
                if($_SESSION['gratis_nr']>0)
                    $out.='<tr><td colspan=2>Możesz dodać ten progukt jako gratis</td><td>
                    <form method="post" action="?go=koszyk"><input type="hidden" name="gratis_product" value="'.$product['product_id'].','.$product['product_name'].',?go=herbaty&category='.$product['category_alias'].'&product='.$product['product_alias'].','.HTTP_ADDRESS.'/img/produkty/'.$product['product_alias'].'_1.jpg">
                                    <input class="form_submit" type="submit" value="Dodaj gratis" name="cart"></form>
                    </td></tr>';
                else
                    $out.='<tr><td colspan=3>Jeśli zamówisz jeszcze za '.((floor($_SESSION['cart']['total_price']/50)+1)*50-$_SESSION['cart']['total_price']).' zł będziesz mógł dodać produkt za darmo.</td></tr>';
            $out.='<tr><td colspan="3" ></td></tr>';
		
			foreach($prices as $price){
				$out.= '<tr><td>'.$price['weight'].' '.$product['unit_value'].'</td>'.'<td><strong>'.$price['price'].' zł</strong></td>';
				$out.='<td>
	                    <form action="?go=koszyk" method="post">                
                        <input type="hidden" name="product_id" value="'.$product['product_id'].'" />
                        <input type="hidden" name="product_name" value="'.$product['product_name'].'" />
                        <input type="hidden" name="weight" value="'.$price['weight'].'"/>
                        <input type="hidden" name="price" value="'.$price['price'].'" />
                        <input type="hidden" name="url" value="'.getUrl().'" />
                        <input type="hidden" name="photo" value="'.HTTP_ADDRESS.'/img/produkty/'.$product['product_alias'].'_1.jpg" />
				<input class="form_submit" type="submit" name="cart" value="do koszyka" ></form></td>
				</tr>';
			}

        

		$out.= '</table>';
		
		}
		else $out.= 'Aktualnie prak produktu na stanie';
		$out.= '
		<br />
		</div>
		<div style="clear:both;"></div>';
		
		$out.='<div class="reviews">
			<h1 style="float:left">Recenzje</h1><a class="extra_button" onclick="
		
													document.getElementById(\'new_review\').style.display = \'table\';
		
													this.style.display=\'none\';
												"
				>Nowa </a><div style="clear:both;"></div>
				<hr />
				
				<div id="new_review" style="width:87%;margin:0 auto;display:none">
					<form action="" method="post" onsubmit="if (check(this)) return true; return false"">
					<div class="rating">
						Ocena:<br />
						<input type="radio" name="rate" value="1" class="rating" onclick="Custom.rate(this);">
						<input type="radio" name="rate" value="2" class="rating" onclick="Custom.rate(this);">
						<input type="radio" name="rate" value="3" class="rating" onclick="Custom.rate(this);">
						<input type="radio" name="rate" value="4" class="rating" onclick="Custom.rate(this);">
						<input type="radio" name="rate" value="5" class="rating" onclick="Custom.rate(this);">
						<span onclick="Custom.rate(1)" class="radio"></span>
						<span onclick="Custom.rate(2)" class="radio"></span>
						<span onclick="Custom.rate(3)" class="radio"></span>
						<span onclick="Custom.rate(4)" class="radio"></span>
						<span onclick="Custom.rate(5)" class="radio"></span>
						<span id="rating_text">(0/5)</span>
					</div>
					<textarea name="formularz-4" cols="80" rows="5" ></textarea><br />
					<input type="hidden" name="pid" value="'.$product['product_id'].'">
					<input class="form_submit" type="submit" name="review" value="Zatwierdź" >
					</form>
					<hr/>
				</div>';
		if(count($reviews)>=1){
				foreach($reviews as $review){
					$out.='<div class="review">';
						for($i=0; $i<$review['review_rate']; $i++){
							$out.='<span class="radio" style="background-position:0px -26px;"></span>';
						}
						for($i=$review['review_rate']; $i<5; $i++){
							$out.='<span class="radio"></span>';
						}
						$out.='<span >('.$review['review_rate'].'/5)</span>
						<div style="clear:both;">
							<hr /><p>'.nl2br($review['review_text']).'<p><hr />
							<p style="text-align:right;">'.$review['customer_name'].' '.substr($review['customer_surname'],0,1).'.</p>
						</div>';
					$out.='</div>';
				}
			$out.='
			</div>';
		}
	else
		$out.='Na chwilę obecną brak recenzji';
	
	$this->content.=$out;
	}
}
?>