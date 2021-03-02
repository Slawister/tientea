<?php	

		require RP.'/templates/template_base_class.php';
		
		class category_template extends template {
			function build_page($category, $products_groups, $subcategories){

				$out='';
				$out.='<table class="category_dialog" cellpadding="0" cellspacing="0"  >
					<tr>
						<td class="category_dialog_left">
							<img src="'.HTTP_ADDRESS.'/img/kategorie/duzy_'.$category['category_alias'].'.png" alt="kategoria"/>
						</td>
						<td class="category_dialog_middle">
							'.$category['category_description'].'
						</td>
				
						<td class="category_dialog_right">
							<img src="../images/category_dialog_right.png" />
						</td>
						</tr>
				</table>';

			$out.= '<div id="tab-container-1" >
	
		     <ul class="subcategory_filter" id="tab-container-1-nav" >';
			 $i='';
		     foreach($subcategories as $subcategory){
		     	$out.='
		     	<li><a href="#tab'.$i.'">'.$subcategory.'</a></li>'."\n".'
		     	';
			 }
		     
			 
		     $out.='</ul>

			  ';
		 




				$j=0;
				foreach($products_groups as $products){
					$j++;
					$out.='<div class="tab" id="tab'.$j.'" >
					';
						
						$i=0;
						foreach ($products as $product){
							$i++;
							$out.='<div class="product_div">
							<a href="?go=herbaty&category='.$product['category_alias'].'&product='.$product['product_alias'].'">';
                            if($product['is_gratis']){
                                $out.='<img  style="position:absolute;z-index: 2;" src="/images/gratis.png"  />
                                ';
                            }
							$out.='<img width="220" src="'.HTTP_ADDRESS.'/img/produkty/'.$product['product_alias'].'_1.jpg" /><br />'.$product['product_name'].'<br />
							';
							if($category['category_name']=='Gratisowe herbaty')
							      $out.=$product['category_name'];
                            else 
                                  $out.=$product['price'].' zł</a>
                                  ';
                                  

                                if($category['category_alias']=='gratis'){
                                    $out.='<form method="post" action="?go=koszyk"><input type="hidden" name="gratis_product" value="'.$product['product_id'].','.$product['product_name'].',?go=herbaty&category='.$product['category_alias'].'&product='.$product['product_alias'].','.HTTP_ADDRESS.'/img/produkty/'.$product['product_alias'].'_1.jpg">
                                    <input class="form_submit" type="submit" value="Dodaj gratis" name="cart"></form>';
                                }

                            $out.='</div>';
							if (!($i%3)){
								$out.=''."\n";
							}
							
						}
						$out.='
						</div>';
				}
$out.='</div>';
		

		
	$out.=	'
		 <script type="text/javascript">
		 var tabber1 = new Yetii({
		 id: \'tab-container-1\'
		 });
		 </script>';
		
				
				return($out);

				
			}
		}	
/* for ($i=0; $i<$this->pages; $i++){
		echo '<a href="?go=herbaty&category='.$category_alias.'&page='.($i+1).'">'.' '.($i+1).' '.'</a>';
	}
	//echo $this->products
	*/
			
?>







	