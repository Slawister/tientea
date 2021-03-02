<?php		
 
require(RP.'/templates/template_base_class.php');
class cart_template extends template{
//	function build_page($supplies, $products=''){
	function build_page($products=''){
		$out='';
		$products = $_SESSION['cart']['products'];

		$out.= '
		<div class="cart_table" align="center">
		
		<table cellpadding="0" cellspacing="0" class="cart_table">
			<tr>
				<td colspan="5" class="separator">&nbsp;</td>
			</tr>
			<tr>
				<th class="cart_table"></th>
				
				<th class="cart_table">Nazwa</th>
				<th class="cart_table">Ilość</th>
				<th class="cart_table">Cena</th>
				<th class="cart_table"></th>
			</tr>';
            $i=0;
			foreach ($products as $item) {
				$out.= '<tr>

							<td class="cart_table"><img src="'.$item['photo'].'" style="width:95px;"/></td>
							<td class="cart_table"><a class="cart_table" href="'.$item['url'].'" >'.$item['product_name'].'</a>';
							if($item['weight']>=50)
							     $out.='<br />'.$item['weight'].' g</td>';
							
							$out.='<td class="cart_table">
							<form method="post" action="?go=koszyk"><select onChange="this.form.submit();" name="quantity">';
							for($i=1;$i<=10;$i++){
							 $out.='<option ';
							  if($item['quantity']==$i)
                                $out.='selected="selected" ';
							 $out.="value=\"$i\">$i</option>";   
                            }
							$out.='</select><input type="hidden" name="cart" value="dodaj_wiele" />';
                            $out.="<input type=\"hidden\" name=\"product\" value=\"$item[product_id],$item[price],$item[weight]\" />
                            </form>";
                            
							
							
							
							$out.='</td>
							<td width="10%" class="cart_table">'.$item['price']*$item['quantity'].' zł<br />';
							if ($item['quantity']>1)
								$out.= '<span class="cart_table" >('.$item['price'].' zł za opakowanie)';
							$out.= '</td>
							
                            <td class="cart_table" style="padding:0;width:32px;">
                                <form method="post" action="?go=koszyk">
                                    <input type="hidden" name="product_id" value="'.$item['product_id'].'" />
                                    <input type="hidden" name="price" value="'.$item['price'].'" />
                                    <input type="hidden" name="weight" value="'.$item['weight'].'" />
                                    
                                    <button type="submit" title="Dodaj kolejne opakowanie" class="cart_plus" value="dodaj" name="cart"></button>
                                    <button type="submit" title="Odejmij jedno opakowanie" class="cart_minus" name="cart" value="minus"></button>
                                    <button type="submit" title="Usuń z koszyka" class="cart_delete" name="cart" value="usun"></button>
                                </form>
                            </td>
                                                    
						</tr>
						<tr>
							<td colspan="5" class="separator">&nbsp;</td>
						</tr>
						 ';
			}
            if(isset($_SESSION['cart']['gratis'])){
            $out.='<tr><th colspan="5">Gratisy</th></tr>';
                foreach($_SESSION['cart']['gratis'] as $key => $item){
                        $out.='<tr>

                            <td class="cart_table"><img src="'.$item['photo'].'" style="width:95px"/></td>
                            <td class="cart_table"><a class="cart_table" href="'.$item['url'].'" >'.$item['product_name'].'</a></td>
                            <td class="cart_table"></td>
                            <td width="10%" class="cart_table">0 zł<br />
                            
                            
                            </td>
                            
                            <td class="cart_table" style="padding:0;width:32px;">
                                <form method="post" action="?go=koszyk">
                                    <input type="hidden" name="gratis_id" value="'.$key.'" />
                                    <button type="submit" title="Usuń z koszyka" class="cart_delete" name="cart" value="usun_gratis"></button>
                                </form>
                            </td>
                                                    
                        </tr>
                        <tr>
                            <td colspan="5" class="separator">&nbsp;</td>
                        </tr>';
                            
                    }
            }
			$out.= '    <tr>
                            <td colspan="5" class="separator">&nbsp;</td>
                        </tr>
                        <tr>
						<td></td>
						<th  class="cart_table">Razem</th>
						<th class="cart_table">'.$_SESSION['cart']['total_quantity'].'</th>
						<th class="cart_table">'.$_SESSION['cart']['total_price'].' zł</th>
						<td></td>
						</tr>
						<tr>
							<td></td><td></td>
							<td colspan="3" class="cart_table_separator">&nbsp;</td>
						</tr>
                       </tr>';
						/*$out.='<tr>
						<td></td><td></td>
						<td class="cart_table_supplies">+ koszty Wysyłki:</td><td /><td />
						</tr>';
						
						foreach ($supplies as $supply) {
							$out.= '<tr>
									<td></td><td></td>
									<td class="cart_table_supplies" style="padding-left:20px;">'.$supply['supply_name'].' - '.$supply['supply_cost'].' zł</td><td /><td class="cart_table_supplies">'.($supply['supply_cost']+$_SESSION['cart']['total_price']).' zł</td>
								</tr>';
						}
						 */

						
			$out.= '<tr><td colspan="5" align="right"><a style="text-align:left" class="extra_button" href="?go=zamowienie">Zamów</a></td></tr></table>
		</div>';
		$this->content .= $out;
	}
} 
?>