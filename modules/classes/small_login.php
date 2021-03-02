<?php

/**
 * 
 */
class small_login  {
		
	function show () {
		$url='';
		if ($_GET['go']!='logowanie' && $_GET['go']!='zapomnienie_hasla')
			$url = getUrl();
		else 
			$url=$_POST['url'];
		
		$out='<div class="login_area"><h1 class="right_column_cart_header">';
		if (!isset($_SESSION['customer']['customer_id'])){
    		 if(isSet($_COOKIE['A'])){
                require 'login.php';
                $login_module=new login;
                $login_module->autologin();
              }
		}

		if (isset($_SESSION['customer']['customer_id']))
        { 
    		$out.='
    		Witaj '.$_SESSION['customer']['customer_name'].'</h1>
    		<a href="?go=moje_konto" class="tool_my_account">Twoje konto</a>';
       }
       else {
            $out.='
            Zaloguj się:</h1>
            <form action="?go=logowanie" method="post">

                        <input size="27" type="text" name="login" value="adres email" class="login" onfocus="if(this.value==\'adres email\') this.value=\'\';" />
                        <input size="27" type="text" name="password" value="hasło" class="login" onfocus="replaceT(this);" /><br />
                        <label><input type="checkbox" name="autologin" value="1"> Zapamiętaj mnie.</label>
                        <input type="hidden" name="url" value="'.$url.'" >';
                        //<button class="tool_login" type="submit" name="Zaloguj" value="Zaloguj" style="margin:0;padding:0"></button>
           $out.='<p style="text-align:right;margin-top:5px;"><input class="form_submit" type="submit" name="Zaloguj" value="Zaloguj" style="margin:0;padding:0"></p>
           </form><br />';
        }
		
		$out.='</div>';
		return($out);
	}

}
