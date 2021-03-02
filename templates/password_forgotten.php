<?php		

require('template_base_class.php');

class password_forgotten_template extends template {
	function build_page($errors){
		$out='';
		$out.= '<div style="margin-left:10px">';
			$this->show_path(Array(Array('title'=>'Zapomnienie hasła', '')));
			$this->show_title('Logowanie', 'login.png', 10);
			
			$out.= '<div style="margin-left:100px;margin-top:50px">
				<img class="login_page" src="images/login-left.jpg" />
				<div class="login_page" align="right">Podaj na adres email na jaki zarejestrowałeś się w naszym sklepie:
					<form action="?go=zapomnienie_hasla" method="post">
					<br />Adres email: <input type="text" style="margin-right:5px;" name="email_forgotten_password" class="login" size="30"/ value="'.$_POST['email_forgotten_password'].'">	
					<input class="button" style="margin-top:5px" type="submit" name="Zaloguj" value="OK" />
					</form>';
					$out.= '<br /><span class="login_page">'.$errors.'</span>
				 </div>
				<img class="login_page" src="images/login-right.jpg" />
			</div>';
				

	
		
		
		
		$out.= '</div>';
		$this->content.=$out;
	}
}


?>