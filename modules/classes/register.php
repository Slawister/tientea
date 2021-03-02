<?php

require(RP.'/engine/form.php');

class register{
	
	function service(){

		if (isset($_POST[$this->address_Form->name.'_OK'])){
				$errors=$this->check();
				if($errors==''){
					$this->add();
				}
				else {
					$this->show($errors);
				}
		}
		else if (isset($_GET['c'])){
			$this->activation();
		}
		else 
			$this->show();
	}

	function __construct(){
		global $db;
		$this->db=$db;
		
		$this->items[] =new inputText('E-mail', 'email');
		$this->items[] =new inputPassword('Hasło', 'password');
		$this->items[] =new inputPassword('Powtórz hasło', 'password', Array('required' => 1, 'inBase' => 0, 'listing' => 0));
		$this->items2[] =new inputText('Imię', 'name');
		$this->items[] =new inputBirthday('Data urodzenia', 'birthday');
		$this->items2[] =new inputText('Nazwisko', 'surname');
        
				
		$this->items2[] =new inputText('ulica', 'street');
		$this->items2[] =new inputHomeNr('Nr domu/Nr lokalu', 'home_nr');
		$options = Array('inBase' => 1, 'required' => 0);
		$this->items2[] =new inputLocalNr('Nr lokalu', 'local_nr', $options);
		$this->items2[] =new inputText('Kod Pocztowy', 'post_code');
		$this->items2[] =new inputText('Miasto', 'city');
        $this->items[] = new inputCheckBox('Newsletter', 'customer_newsletter', $options);
        $this->items[] = new inputText('Nr telefonu', 'telephone');
		/*($this->items[] =new inputHidden('rand', 'rand');*/
		
		$this->Form=new Form($db, 'customers', '', 'formularz', $this->items, 'new');
		$this->address_Form=new Form($db, 'addresses', '', 'formularz2', $this->items2, 'new');
	}
		
	function show($errors=''){
/*		$this->Form->show(1);
		$this->address_Form->show(3);*/
		require(RP.'/templates/register.php');
		$template = new register_template;
		$path[]=Array('title' => 'Rejestracja', 'link' => '');
		$template->content=$template->show_path($path);
		$template->content=$template->show_title('Rejestracja', 'register.png');
		$form_items=$this->Form->template_export();

		$form_items+=$this->address_Form->template_export();

		$template->build_page($form_items, $errors);
		echo $template->show_page();
		
	}
	function add(){

		$id=$this->Form->add();
		$id2=$this->address_Form->add();
		$code=md5($this->Form->values['email'].$this->Form->values['rand']);
		$this->db->add('registration', Array('registration_id', 'customer_id', 'code'), Array('', $id, $code) );

		$this->db->update('customers', Array('customer_id', 'address_id', 'customer_name', 'customer_surname'), Array($id, $id2, $this->address_Form->values['Imię'], $this->address_Form->values['Nazwisko']));
		
		$to      = $this->Form->values['email'];
		$subject = 'Rejestracja w sklepie Tientea.pl';
		$message = "witam\n http://www.tientea.pl/?go=rejestracja&c=".$code;
		$headers = 	'From: rejestracja@tientea.pl' . "\r\n" .
					'Reply-To: rejestracja@tientea.pl' . "\r\n" ;
		//mail($to, $subject, $message, $headers);
		
		require(RP.'/templates/register.php');
		$template = new register_template;
		$path[]=Array('title' => 'Rejestracja', 'link' => '');
		$template->content=$template->show_path($path);
		$template->content=$template->show_title('Rejestracja', 'register.png');
        
        $text="Witamy w gronie Klientów Tientea.pl!<br /><br />
        Dziękujemy za utworzenie konta i zapraszamy na filiżankę pysznej herbaty!<br /><br />
        Aby dopełnić aktywacji, odbierz wiadomość e-mail i  kliknij na link aktywacyjny zawarty w jej treści.<br /><br />
        Zapraszamy i życzymy owocnych zakupów!";
        
        
		$template->content.=$template->dialog_page($text);
		$template->content.='http://www.test.tientea.pl/?go=rejestracja&c='.$code;
		echo $template->show_page();
	}
	function activation(){
		require(RP.'/templates/register.php');
		$template = new register_template;
		$path[]=Array('title' => 'Rejestracja', 'link' => '');
		$template->content=$template->show_path($path);
		$template->content=$template->show_title('Rejestracja', 'register.png');
		
		$code=check($_GET['c']);
		$reg=$this->db->getRow('registration', Array('code', 'customer_id', 'registration_id'), $code);
		if ($reg['customer_id']){
			$this->db->update('customers', Array('customer_id', 'registered'), Array($reg['customer_id'], '1') );
			$this->db->delete('registration', 'registration_id', $reg['registration_id']);
			$template->content.=$template->dialog_page('Dziękuje zaaktywowałeś swoje konto.');
			
		}
		else 
			$template->content.=$template->dialog_page('Kod aktywacyjny jest niepoprawny');
			
		echo $template->show_page();
	}
	
	function check(){
		$errors='';
		$errors=$this->Form->check();
		$errors.=$this->address_Form->check();

		if ($errors=='') {
			$duplicate=$this->db->getRow('customers', Array('email'), $_POST['formularz-0']);
			if ($duplicate['email']){
				$errors.= 'W sklepie istnieje już konto o danym adresie e-mail!';
			}
			$pattern='/^([\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+\.)*[\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)$/i';
			if (!preg_match($pattern, $_POST['formularz-0'])) {
				$errors.='Niepoprawny email<br />';
			}
			if(!preg_match ( '/^[0-9]{2}-[0-9]{3}$/i' , $this->address_Form->values['Kod Pocztowy'])){
				$errors.='Nieprawodłowy kod pocztowy<br />';
			}
			if($this->Form->values['Data urodzenia']=='niepoprawna'){
				$errors.='Niepoprawna data urodzenia';
			}
			if($_POST['formularz-1']!=$_POST['formularz-2']){
				$errors.='Hasła nie są takie same';
			}
			$this->Form->values['rand']=rand();
			
		}
		return($errors);
	}
}

$module = new register;
?>