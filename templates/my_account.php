<?php


require(RP.'/templates/template_base_class.php');

class my_account_template extends template {
	function build_page($customer, $orders){
		$out='';
		$out.= '
		
			<div class="my_account">
		<a  href="?go=moje_konto&edycja=1">Edycja</a><a href="?go=moje_konto&edycja=2">Zmień hasło</a><br style="clear:both"/>
	
			<table class="my_account" width="500">
					<tr><td class="separator" colspan="2">&nbsp;</td></tr>
					<tr>
						<th colspan="2">Dane konta</th>
					</tr>
					<tr><td class="separator" colspan="2">&nbsp;</td></tr>
					<tr>
						<td class="label">Imię Nazwisko</td><td class="value">'.$customer['customer_name'].' '.$customer['customer_surname'].'</td>
					</tr>
					<tr>
						<td class="label">Login/Adres email</td><td class="value">'.$customer['email'].'</td>
					</tr>
					<tr>
						<td class="label">Data urodzenia</td><td class="value">'.$customer['birthday'].'</td>
					</tr>
					<tr><td class="separator" colspan="2">&nbsp;</td></tr>
					<tr>
						<th colspan="2">Adres</th>
					</tr>
					<tr><td class="separator" colspan="2">&nbsp;</td></tr>
					<tr>
						<td class="label">Imię Nazwisko</td><td class="value">'.$customer['name'].' '.$customer['surname'].'</td>
					</tr>
					<tr>
						<td class="label">Ulica, Nr domu/Nr lokalu</td><td class="value">'.$customer['street'].' '.$customer['home_nr'];
						if($customer['local_nr']!=0){
							$out.= '/'.$customer['local_nr'];
						}
				$out.= '</td>
					</tr>
					<tr>
						<td class="label">Kod pocztowy, Miasto</td><td class="value">'.$customer['post_code'].' '.$customer['city'].'</td>
					</tr>
	
			</table>
	
	
		<img class="my_account" src="../images/my_account_logo.png" />';

		$out.='	
			<table class="my_account_orders" width="700" cellpadding="0" cellspacing="0">
				<tr><td class="separator" colspan="3">&nbsp;</td></tr>
				<tr>
					<th></th><th>Nr zamówienia</th><th>Data</th><th>Status</th>
				</tr>
				<tr><td class="separator" colspan="4">&nbsp;</td></tr>';
				$i=0;

				if (count($orders)>0)
					foreach ($orders as $order){
						$i++;
						$out.= '	
							<tr>
								<td><button  type="button"   
											onclick="
											if(document.getElementById(\'id_'.$i.'\').style.display == \'table\'){
												document.getElementById(\'id_'.$i.'\').style.display = \'none\';
							
											}
											else {
												document.getElementById(\'id_'.$i.'\').style.display = \'table\';
											}
											"
									>Szczegóły</button>
								</td>
								<td>'.order_nr($order['order_nr'], $order['date']).'</td><td>'.$order['date'].'</td><td>'.$order['status_name'].'</td>
							</tr>
							
							<tr>
								<td colspan="4" align="right">
									<table class="my_account_order_details" id="id_'.$i.'" cellpadding="0" cellspacing="0" width="500" style="display:none">
										<tr>
			
											<th>Nazwa</th><th>Ilość</th><th>Cena</th>
			
										</tr>';
										foreach($order['products'] as $product){
											$out.= '
											<tr>
												<td class="name">'.$product['name'].' '.$product['weight'].' g</td><td width="60">'.$product['quantity'].'</td><td width="60">'.$product['price'].' zł</td>
											</tr>';
										}
							$out.= '
									</table>
								<td>	
							</tr>
							<tr><td class="separator" colspan="4">&nbsp;</td></tr>';
					}
				else {
					$out.='<tr><td colspan="4">Brak zamówień</td></tr>';
				}

		$out.= '
				</table>
				</div>';
				$this->content.=$out;
	}
	
	function build_edit_page($form_items, $errors){
					$out= '<div class="my_account_edit" align="center">'.$errors.'
			<form id="formularz" name="formularz" method="post" action="">
			<table class="form">
			<tr><td colspan="2" class="separator">&nbsp;</td></tr>
				<tr>
					<th class="register_form" colspan="2">';
	if(!empty($form_items['formularz-3']))
		$out.='Dane Konta:';
	else
		$out.='Podaj nowe hasło:';
	
	$out.=' </th>
				</tr>
			<tr><td colspan="2" class="separator">&nbsp;</td></tr>
';
				$out.= $form_items['formularz-0'];


				$out.= $form_items['formularz-1'];

				$out.= $form_items['formularz-2'];

				$out.= $form_items['formularz-3'];
			$out.= '
			</tr>
			<tr><td colspan="2" class="separator">&nbsp;</td></tr>
				<tr>';
	if(!empty($form_items['formularz2-0'])){
					$out.='
					<th class="register_form" colspan="2">Adres:</th>
				</tr>
			<tr><td colspan="2" class="separator">&nbsp;</td></tr>
			<tr>';
				$out.= $form_items['formularz2-0'];

				$out.= $form_items['formularz2-1'];

				$out.= $form_items['formularz2-2'];

				$out.= $form_items['formularz2-3'].$form_items['formularz2-4'];

				$out.= $form_items['formularz2-5'];

				$out.= $form_items['formularz2-6'];
	}
			$out.='
			<tr><td colspan="2" class="separator">&nbsp;</td></tr>
			<tr><td colspan="2" class="separator">&nbsp;</td></tr>
				<td></td>
				<td class="label"><input type="submit" name="formularz_OK" class="form_submit" value="Zatwierdź" /></td>
			</tr>
			</table>
			';
			$this->content.=$out;
	}
}
?>


