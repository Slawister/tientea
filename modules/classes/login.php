<?php



class login {

	public $errors;
	public $dialog_text;
	function service(){
	   $this->title="Logowanie";
    $this->dialog_text = 'Oh '.$_SESSION['customer']['customer_name'].'! Jak dobrze Cię widzieć, może herbaty ?';
    
        if (isset($_POST['Zaloguj'])){
            $login=check($_POST['login']);
            $password=check($_POST['password']);
            
            $customer=$this->check($login, $password);
            if($customer){
                $this->FNlogin($customer);
            }
            else
                $this->errors='Niepoprawny email lub hasło. <a href="?go=zapomnienie_hasla">Zapomniałeś hasła? Kliknij tutaj.</a> <br /><br />Jeśli nie masz konta <a href="?go=rejestracja">>>zarejestruj się<<</a><br />';
        }

        if (isset($_GET['logout'])){
            $this->title="Wylogowanie";
            $this->logout();
        }
        
        $this->show($_POST['url']);
	}
	
	function __construct() {
		global $db;
		$this->db=$db;		
	}
	
	
	function show($redirect='') {

		if (!isset($_SESSION['customer']['customer_id']) && !isset($_GET['logout'])){
			
				require(RP.'/templates/login.php');
				$template = new login_template();
				$template->content=$template->show_path(Array(Array('title'=>$this->title, 'link'=>'')));
				$template->content.=$template->show_title($this->title, 'login.png');
				$template->build_page($this->errors);
				echo $template->show_page();
				
		}
		else {
		
			if(empty($redirect))
			{
				require(RP.'/templates/template_base_class.php');
				$template = new template();
				$template->content=$template->show_path(Array(Array('title'=> $this->title, 'link'=>'')));
				$template->content.=$template->show_title($this->title, 'login.png');
				$template->content.=$template->dialog_page($this->dialog_text);
				echo $template->show_page();
			}
			else {
			 header('Location: '.$redirect);	
			}
	
		}
		

	

	}

	function FNlogin($customer) {
		$_SESSION['customer']=$customer;
        if($_POST['autologin']){
            $cookie_value=generateAutologinCookie($customer['customer_id'], $customer['password']);
            $cookie_time = (3600 * 24 * 120); // 120 days
            setcookie ('A', $cookie_value, time() + $cookie_time);
        }

	}

	function logout(){
		unset($_SESSION['cart']);
		unset($_SESSION['customer']);
        setcookie('A', '',time() - 3600);
		session_destroy();
		$this->dialog_text="Dziękujemy za wspólnie spędzony czas.<br />
                            Do zobaczenia przy kolejnej filiżance herbaty!"
        ;
	}
	

	function check($login, $password){

		$customer=$this->db->getRow('customers', Array('email', 'customer_id', 'password', 'customer_name', 'customer_surname', 'address_id', 'supply_id', 'payment_id'), $login.'\' AND password=\''.password($password));
		if (count($customer)>1){
			return($customer);
		}
		else 
			return(0);
	}
    
    function autologin(){
        $login_info=resolveAutologinCookie($_COOKIE['A']);
        $customer=$this->db->getRow('customers', Array('customer_id', 'email', 'password', 'customer_name', 'customer_surname', 'address_id', 'supply_id', 'payment_id'), $login_info['id'].'\' AND password=\''.$login_info['hash']);
        
        if (count($customer)>1){
            $this->FNlogin($customer);
        }
        else 
            setcookie('A', '',time() - 3600);
    }

}

$module=new login;