<?php		


require('template_base_class.php');

class register_template extends template{
	function build_page($form_items, $errors=''){
	//show_tab($_POST);
		$this->header.='<script type="text/javascript" src="../engine/postcode.js"></script>
		<script type="text/javascript">
		';

		$this->header.='
		function code_to_city(code){
			city = post_code(code);
			if (city!=undefined){
				document.getElementById(\'formularz2-6\').value=city;
			}
		}
		function check(form)
		{
			var error="Uzupełnij proszę ";
				if(form.elements["formularz-0"].value == ""){
					alert(error+"adres email.");
					return false;
				}
				if(form.elements["formularz-1"].value == ""){
					alert(error+"hasło.");
					return false;
				}
				if(form.elements["formularz-3"].value == ""){
					alert(error+"datę urodzin.");
					return false;
				}	
				if(form.elements["formularz-3m"].value == ""){
					alert(error+"datę urodzin.");
					return false;
				}	
				if(form.elements["formularz-3y"].value == ""){
					alert(error+"datę urodzin.");
					return false;
				}	
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
				regex = /^[a-zA-Z0-9._-]+@([a-zA-Z0-9.-]+\.)+[a-zA-Z0-9.-]{2,4}$/;
  				if(!regex.test(form.elements["formularz-0"].value)){
  					alert("Adres email zdaje się nie być poprawny."+form.elements["formularz-0"].value);
					return false;
  				}
				if(form.elements["formularz-1"].value != form.elements["formularz-2"].value){
					alert("Hasła nie są takie same.")
					return false;
				}

		
			return true;
		}
		</script>';
		$out='';
		$out .= '
		<div class="register_form" align="center">
		<!--<p class="error">
			'.$errors.'</p>-->

				<form id="formularz" name="formularz" method="post" action="" onsubmit="if (check(this)) return true; return false">
				<table class="register_form">
				<tr><td colspan="2" class="separator">&nbsp;</td></tr>
					<tr>
						<th class="register_form" colspan="2">Dane Konta:</th>
					</tr>
					<tr><td colspan="2" class="separator">&nbsp;</td></tr>

			';
				$out.= $form_items['formularz-0'];
			$out.= '
			
			';
				$out.= $form_items['formularz-1'];
			$out.= '
			
			';
				$out.= $form_items['formularz-2'];
			$out.= '
			
			';
				$out.= $form_items['formularz-3'];
			$out.= '
		    ';
                $out.= $form_items['formularz-5'];
            $out.= '
			
			<tr><td colspan="2" class="separator">&nbsp;</td></tr>
			<tr>
				<th class="register_form" colspan="2">Adres dostawy:</th>
			</tr>
			<tr><td colspan="2" class="separator">&nbsp;</td></tr>
			';
				$out.= $form_items['formularz2-0'];
			$out.= '
			';
				$out.= $form_items['formularz2-1'];
			$out.= '
			';
				$out.= $form_items['formularz2-2'];
			$out.= '
						
			';
				$out.= $form_items['formularz2-3'].$form_items['formularz2-4'];
			$out.= '
			
			';
			$temp = explode('/>', $form_items['formularz2-5']);
			$out.= $temp[0].'onChange="code_to_city(this.value);" />'.$temp[1];
			$out.= '
			';
				$out.= $form_items['formularz2-6'];
			$out.= '
			

				
					<tr><td colspan="2" class="separator">&nbsp;</td></tr>
					<tr><td class="label" colspan="2" >
					<div style="margin-left:60px; padding-top:0px; text-align:left;">
						<label><input type="checkbox" class="styled" onclick="Custom.check(this,1);" checked="checked"> Oświadczam, że zapoznałem się z regulaminem i go akceptuję</label>
					</div></td>
					</tr>
                    <tr><td colspan="2" class="separator">&nbsp;</td></tr>
                    <tr><td class="label" colspan="2" >
                    <div style="margin-left:60px; padding-top:0px; text-align:left;">
                        <label><input type="checkbox" class="styled" onclick="Custom.check(this,2);" checked="checked" name="formularz-4"> Dodaj mnie do Tientea newsletter</label>
                    </div></td>
                    </tr>
					<tr>
						<td></td>
						<td class="label"><input type="submit" name="formularz2_OK" class="form_submit" value="Zarejestruj" /></td>
					</tr>
			
					</table>	
			</form>
			</div>';
			if($errors!='')
			$out.= '<script type="text/javascript">alert("'.$errors.'")</script>';
			$this->content.=$out;
				}
} 
?>