<?php
require(RP.'/templates/template_base_class.php');
class order_template extends template {
	//document.getItemById("helloText").innerHTML
 function build_page($customer_id, $customer_address_id, $customer_address, $payments, $supplies, $products=Array(null), $customer_points, $form_items = array(null), $errors=''){



if(!isset($form_items['formularz-3'])){
	$form_items['formularz-3']='';
}
if(!isset($form_items['formularz-4'])){
	$form_items['formularz-4']='';
}

	$products = $_SESSION['cart']['products'];
	$temp_payment=$payments[0];
	$temp_supply=$supplies[0];
	$logged=false;
	if(isset($_SESSION['customer']['customer_id'])){
		$logged=true;
	}
		
		$out.= '
		<script type="text/javascript" src="../engine/postcode.js"></script>
		<script type="text/javascript">
		
function check(form)
{
	var error="Uzupełnij proszę ";
	if (';
	if($logged)
	 	$out.='form.elements["difrent_address"].checked';
	else 
		$out.='true';
	$out.='
	 ){
		if(form.elements["formularz2-0"].value == ""){
			alert(error+"imię.");
			return false;
		}
		if(form.elements["formularz2-1"].value == ""){
			alert(error+"nazwisko.");
			return false;
		}
		if(form.elements["formularz2-2"].value == ""){
			alert(error+"ulicę.");
			return false;
		}
		if(form.elements["formularz2-3"].value == ""){
			alert(error+"nr domu.");
			return false;
		}
		if(form.elements["formularz2-5"].value == ""){
			alert(error+"kod Pocztowy.");

			return false;
		}
		if(form.elements["formularz2-6"].value == ""){
			alert(error+"miasto.");
			return false;
		}
  	  	var regex = /^[0-9]{2}\-[0-9]{3}$/;
		if (!regex.test(form.elements["formularz2-5"].value)){
			alert("Kod pocztowy zdaje się nie być poprawny.");
			return false;
		}
	}

	return true;
}
		function code_to_city(code){
			city = post_code(code);
			if (city!=undefined){
				document.getElementById(\'formularz2-6\').value=city;
			}
		}
					function payment(elementId)
					{
					';
							$i=0;
							foreach($payments as $payment){
								if ($i==0){
									$out.= 'if';
									$i=1;
								}
								else $out.= 'else if';
								
								$out.= '(elementId=='.$payment['payment_id'].'){
									if('.$payment['payment_cost'].'>0){	
									document.getElementById(\'payment_cost_product_list\').textContent=\''.$payment['payment_cost'].' zł\';
									}
									else {
										document.getElementById(\'payment_cost_product_list\').textContent=\'\';
									}
									document.getElementById(\'payment_name_product_list\').innerHTML =\'Płatność:<br />'.$payment['payment_name'].'\';
									order_sum();
								}';
							}
							
							$out.= '
					}
 					function supply_cost(id)
 					{
 					';
					$i=0;
					foreach ($supplies as $supply) {
						if($i==0){
							$out.= 'if';
							$i=1;
						}	
						else 
							$out.= 'else if';
						
						$out.= '(id=='.$supply['supply_id'].'){
							return('.$supply['supply_cost'].');
						}';
					}
 					$out.= '
 					}

					function supply(elementId)
					{
					';
							$i=0;
							foreach($supplies as $supply){
								if ($i==0){
									$out.= 'if';
									$i=1;
								}
								else $out.= 'else if';
								
								$out.= '(elementId=='.$supply['supply_id'].'){
									document.getElementById(\'supply_cost_product_list\').textContent=\''.$supply['supply_cost'].' zł\';
									document.getElementById(\'supply_name_product_list\').innerHTML=\'Dostawa:<br />'.$supply['supply_name'].'\';
									order_sum();
								}';
							}
							
							$out.= '
					}
 					function payment_cost(id)
 					{
 					';
					$i=0;
					foreach ($payments as $payment) {
						if($i==0){
							$out.= 'if';
							$i=1;
						}	
						else 
							$out.= 'else if';
						
						$out.= '(id=='.$payment['payment_id'].'){
							return('.$payment['payment_cost'].');
						}';
					}
 					$out.= '
 					}
				function order_sum(){
					

					if(document.getElementById(\'tien_payment_check\')!=null && document.getElementById(\'tien_payment_check\').checked){
						document.getElementById(\'sum_order_product_list\').textContent=Math.round(('.$_SESSION['cart']['total_price'].'
						+payment_cost(document.getElementById(\'formularz-1\').options[document.getElementById(\'formularz-1\').selectedIndex].value)
						+supply_cost(document.getElementById(\'formularz-0\').options[document.getElementById(\'formularz-0\').selectedIndex].value)-'.round($customer_points*0.04, 2).')*100)/100+\' zł\';
						document.getElementById(\'tiens_for_order\').innerHTML=\'<strong>'.ceil(($_SESSION['cart']['total_price']-$customer_points*0.04)*4).'</strong>\';
						document.getElementById(\'order_sub_sum\').textContent=\''.round($_SESSION['cart']['total_price']-$customer_points*0.04,2).'\';
						}
					else {
				
						document.getElementById(\'sum_order_product_list\').textContent='.$_SESSION['cart']['total_price'].'
						+payment_cost(document.getElementById(\'formularz-1\').options[document.getElementById(\'formularz-1\').selectedIndex].value)
						+supply_cost(document.getElementById(\'formularz-0\').options[document.getElementById(\'formularz-0\').selectedIndex].value) +\' zł\';
						document.getElementById(\'tiens_for_order\').innerHTML=\'<strong>'.ceil($_SESSION['cart']['total_price']*4).'</strong>\';
						document.getElementById(\'order_sub_sum\').textContent=\''.$_SESSION['cart']['total_price'].'\'
					}
				}

		</script>';
		$this->header=$out;
		$out='';
		
        
        
        
        
        
        
        
        
        
        
        
        
	       $out.='
        <div class="order_left_col">
        '.$errors;
    //  $this->show_path(Array(Array('title'=> 'Zamówienie', 'link'=>'')));
        
        $out.= '
            <table width="100%">
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
                <tr>
                    <th>Adres:</th>
                </tr>
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
            </table>
            <form id="formularz2" name="formularz2" method="post" action="" onsubmit="if (check(this)) return true; return false">';
            if($logged){
                $out.= '
                <label><input type="checkbox" name="difrent_address" class="styled" value="1" onclick="
                document.getElementById(\'address_form_div\').style.display = this.checked ? \'block\' : \'none\';
                document.getElementById(\'address_info_div\').style.display = this.checked ? \'none\' : \'block\';
                Custom.check(this, 1);
                "/>Wysyłka na inny adres</label>.
                <div id="address_info_div">
                <table class="address_info" align="right">
                <tr>
                    <td>'.$customer_address['name'].' '.$customer_address['surname'].'</td>
                </tr>
                <tr>
                    <td>'.$customer_address['street'].' '.$customer_address['home_nr'].'/'.$customer_address['local_nr'].'</td>
                </tr>
                <tr>
                    <td>'.$customer_address['post_code'].' '.$customer_address['city'].'</td>
                </tr>
                </table>
                </div>
                <div id="address_form_div" style="display: none">';
            }
            else $out.= '<div id="address_form_div">';
                    
            $out.= '<table class="order_table">';

                        $out.= $form_items['formularz2-0'];

                        $out.= $form_items['formularz2-1'];

                        $out.= $form_items['formularz2-2'];

                        $out.= $form_items['formularz2-3'].$form_items['formularz2-4'];

                        $temp = explode('/>', $form_items['formularz2-5']);
                        $out.= $temp[0].'onChange="code_to_city(this.value);" />'.$temp[1];

                        $out.= $form_items['formularz2-6'];
                        $out.= '
                    </table>
            </div>

            <table class="order_table">
                '.$form_items['formularz-3'].$form_items['formularz-4'].'
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
                <tr>
                    <th colspan="2">Szczegóły Zamówienia</th>
                </tr>
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
                <tr>
                    <td class="label">Sposób dostawy</td>
                    <td class="value">
                        <select  id="formularz-0" name="formularz-0" onchange="supply(this.options[this.selectedIndex].value)">
                        ';
                        foreach ($supplies as $supply){
                            $out.= '<option value="'.$supply['supply_id'].'"';
                            if ($_SESSION['customer']['supply_id'] == $supply['supply_id']){
                                $out.= 'selected="selected"';
                                $temp_supply=$supply;
                            }
                            
                            $out.= '>'.$supply['supply_name'].' ('.$supply['supply_cost'].' zł)</option>';
                        }
                        $out.= '
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="label">Płatność</td><td class="value">
                        <select  id="formularz-1" name="formularz-1" onchange="payment(this.options[this.selectedIndex].value);">';
                        foreach($payments as $payment){
                        $out.= '<option value="'.$payment['payment_id'].'"';
                        if ($_SESSION['customer']['payment_id'] == $payment['payment_id']){
                            $out.= 'selected="selected"';
                            $temp_payment=$payment;
                        }
                        
                        $out.= '>'.$payment['payment_name'];
                        if ($payment['payment_cost']>0){
                            $out.= ' ('.$payment['payment_cost'].' zł)';
                        }
                        
                        $out.= '</option>';
                        }
                        $out.= '
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="label">Dodatkowe informacje</td>
                    <td class="value">
                        <textarea name="formularz-2" cols="40" rows="5" ></textarea></td>
                </tr>
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>';
                if($logged)
                $out.='<tr><td ></td><td><label><input type="checkbox" class="styled" name="tien_payment" id="tien_payment_check" value="1" 
                onclick="
                document.getElementById(\'tien_payment_row\').style.display = this.checked ? \'table-row\' : \'none\';
                order_sum();
                Custom.check(this, 2);
                "> Wykorzystaj Tieny ('.$customer_points.' tienów = -'.($customer_points*0.04).' zł)</label></td></tr>';
                $out.='
                <tr>
                    <td></td><td align="right"><input type="submit" class="form_submit" name="formularz_OK" value="Zamawiam" /></td>
                </tr>
            </table>
            </form>
        </div>
        <div class="order_right_col">
            <table class="order_products_list" cellpadding="0" cellspacing="0">
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
                <tr>
                    <th colspan="2">Zamówienie</th>
                </tr>
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>';
                foreach ($products as $product) {
                    $out.= '<tr>
                    <td class="order_products_list_name">'.$product['product_name'].' ';
                    if ($product['weight']>=50)
                    $out.='['.$product['weight'].'g]</td>';
                    
                    $out.='<td class="order_products_list_price">';
                    if($product['quantity']>1){
                        $out.=$product['quantity'].' x ';
                    }
                    $out.=$product['price'].' zł</td>
                </tr>';
                }
                
                $out.='
                </tr>';
                if(isset($_SESSION['cart']['gratis'])){
                    if($_SESSION['gratis_nr']<0)
                        $i=$_SESSION['gratis_nr']+count($_SESSION['cart']['gratis']);
                    else
                        $i=1000;
                        
                        $out.='<tr><th colspan="2">Gratisy</th></tr>';
                        foreach($_SESSION['cart']['gratis'] as $product){
                           if($i>0) 
                              $out.='<tr><td colspan="2" class="order_products_list_name">'.$product['product_name'].' [50g]</td></tr>';
                          $i--;
                        }
                }
                
                $out.='
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
                <tr style="display:none" id="tien_payment_row">
                    <td class="order_products_list_name">Rabat za Tieny</td><td class="order_products_list_price"><strong>-'.($customer_points*0.04).' zł</strong></td>
                </tr>
                <tr>
                    <th>Suma</th><th id="order_sub_sum">'.$_SESSION['cart']['total_price'].' zł<th>


                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>

                <tr>
                    <td class="order_products_list_name"><p id="supply_name_product_list">Dostawa:<br />'.$temp_supply['supply_name'].'</p> </td>
                    <td class="order_products_list_price"><p id="supply_cost_product_list">'.$temp_supply['supply_cost'].' zł</p> </td>
                </tr>
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>

                <tr>
                    <td class="order_products_list_name"><p id="payment_name_product_list">Płatność:<br />'.$temp_payment['payment_name'].'</p> </td>
                    <td class="order_products_list_price"><p id="payment_cost_product_list">';
                    if($temp_payment['payment_cost']>0){
                        $out.= $temp_payment['payment_cost'].' zł';
                    }
                    $out.='</p></td>
                </tr>
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
                <tr>
                    <th >Do zapłaty</th><th id="sum_order_product_list" class="order_products_list_price">'.($_SESSION['cart']['total_price']+$temp_supply['supply_cost']+$temp_payment['payment_cost']).' zł</th>
                </tr>
                <tr><td class="separator" colspan="2">&nbsp;</td></tr>
                                <tr title="Tieny czyli nasz program punktów rabatowych. Aby je otrzymać musisz być zalogowany."';
                    if(!$logged)
                        $out.=' style="text-decoration: line-through;" ';
                    $out.='>
                    <td class="order_products_list_name">Ilość TIENÓW za zamówienie</td><td class="order_products_list_price" id="tiens_for_order"><strong>'.ceil($_SESSION['cart']['total_price']*4).'</strong></td>
                </tr>
            </table>
        </div>

        <div style="clear: both" />';	

		$this->content.=$out;

	}
}
?>
