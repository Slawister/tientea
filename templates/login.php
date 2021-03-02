<?php		

require('template_base_class.php');

class login_template extends template {
	function build_page($errors){
		$out='';
		$out.= '<div style="margin-left:10px">';
			$this->show_path(Array(Array('title'=>'Logowanie', '')));
			$this->show_title('Logowanie', 'login.png', 10);
			
			$out.= '<div style="margin-left:100px;margin-top:50px">
				<img class="login_page" src="images/login-left.jpg" />
				<div class="login_page" align="right">
					<form action="?go=logowanie" method="post">
					
					email:<input type="text" style="margin-right:5px;" name="login" class="login" />	haslo:<input type="password" name="password" class="login" />
					<input type="hidden" name="url" value="'.$_POST['url'].'" >
					<input class="button" style="margin-top:5px" type="submit" name="Zaloguj" value="Zaloguj" />
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