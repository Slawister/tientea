<?php	


class small_cart {
	

	function show(){
	           
	           $url = getUrl();
    $free_price=180;
$out.='<a href="?go=koszyk"><h1 class="right_column_cart_header">Koszyk</h1></a>';
		if(isset($_SESSION['cart'])){			
				$out.='<table class="order_products_list" cellpadding="0" cellspacing="0">';
				foreach ($_SESSION['cart']['products'] as $product) {
					$out.= '<tr>
					<td class="order_products_list_name"><a href="'.$product['url'].'">'.$product['product_name'].' ';
					if($product['weight']>=50){ 
					$out.='['.$product['weight'].'g]';
                    }
					$out.='</a></td>
					             <td style="width:10px;padding-top:9px;">
					             <form method="post" action="?go=koszyk">
                                    <input type="hidden" name="product_id" value="'.$product['product_id'].'" />
                                    <input type="hidden" name="price" value="'.$product['price'].'" />
                                    <input type="hidden" name="weight" value="'.$product['weight'].'" />
                                    <input type="hidden" name="url" value="'.$url.'" />
                                    <button type="submit" title="Usuń z koszyka" name="cart" value="small_usun" class="small_cart_delete"></button>
                                </form>
                                <td>
					
					</tr>
					<tr>
					<td colspan="2" class="order_products_list_price">
					';
					if($product['quantity']>1){
						$out.=$product['quantity'].' x ';
					}
					$out.=$product['price'].' zł</td>
				</tr>';
				}
                if(isset($_SESSION['cart']['gratis'])){
                    
                    if($_SESSION['gratis_nr']<0)
                        $i=$_SESSION['gratis_nr']+count($_SESSION['cart']['gratis']);
                    else
                        $i=1000;
                     
                        foreach ($_SESSION['cart']['gratis'] as $key => $product) {
                            $out.= '<tr>
                            <td class="order_products_list_name"><a ';
                            if($i<=0)
                                $out.='style="text-decoration: line-through;" title="Niestety ktowa Twojego zamówienia nie pozwala na zachowanie tego gratisu, aby go otrzymać domów jeszcze za '.((floor($_SESSION['cart']['total_price']/50)+1)*50-$_SESSION['cart']['total_price']).' zł" ';
                            $out.=' href="'.$product['url'].'">'.$product['product_name'].'
                            </a></td>
                                  <td style="width:10px;padding-top:9px;">
                                     <form method="post" action="?go=koszyk">
                                        <input type="hidden" name="gratis_id" value="'.$key.'" />
                                        <input type="hidden" name="url" value="'.$url.'" />
                                        <button type="submit" title="Usuń z koszyka" name="cart" value="small_usun_gratis" class="small_cart_delete"></button>
                                    </form>
                                    <td>
                            </tr>
                            <tr>
                            <td colspan="2" class="order_products_list_price">Gratis!</td>
                        </tr>';
                        $i--;
                        }
                }
				$out.='</table>';
                
                
				if($_SESSION['gratis_nr']>0){
				$out.='<a href="?go=gratisowe_herbaty" class="h_menu_item gratisy" style="font-size:17px;padding-top:5px;padding-bottom:5px;">Wybierz Gratis';
                
				if($_SESSION['gratis_nr']>1)
				    $out.='y';
				$out.=' ('.$_SESSION['gratis_nr'].')</a><br />';
				}


                $out.='
				<table class="order_products_list">
				<tr><th>suma: </th><th>'.$_SESSION['cart']['total_price'].' zł</th></tr></table>
				
				<br /><p style="font-size:17px">';
                
                
				if ($_SESSION['cart']['total_price']<$free_price)
					$out.='Do darmowej wysyłki brakuje: '.($free_price-$_SESSION['cart']['total_price']).' zł.</p>';
				else 
					$out.='<strong>Osiągnąłeś darmową wysyłkę!</strong></p>';
				
				if($_GET['go']!='zamowienie')
					$out.='<a class="extra_button" href="?go=zamowienie">Zamów</a>';
                
		}
		else $out.='Twój koszyk jest aktualnie pusty.<br />
		             <br />Zapraszamy do zakupów!<br /><br />
		             <strong>Darmowa wysyłka przy zamówieniach powyżej 180zł</strong>';

		return($out);
	}
	
}
