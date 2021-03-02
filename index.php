<?php
session_start();


//ini_set( 'display_errors', 'On' ); 
//error_reporting( E_ALL );

 define('RP',    $_SERVER['DOCUMENT_ROOT'] );
require RP.'/config/config.php';
require(RP.'/modules/classes/categories_menu.php');
require(RP.'/engine/security.php');
require(RP.'/engine/functions.php');
require(RP.'/engine/base.php');
require(RP.'/modules/classes/small_cart.php');
require(RP.'/modules/classes/small_login.php');
		$db = new db;
// CONTENT -------------------------------------------------------------------------
$modules= Array( 'koszyk' => 'cart.php',
				 'herbaty' => 'categories.php',
				 'logowanie' => 'login.php',
				 'rejestracja' => 'register.php',
				 'zamowienie' => 'order.php',
				 'moje_konto' => 'my_account.php',
				 'zamowienia' => 'orders.php',
				 'informacje' => 'information.php',
				 'artykuly' => 'articles.php',
				 'zapomnienie_hasla' => 'password_forgotten.php',
				 'gratisowe_herbaty' => 'gratis.php'
				 );
				
	if (isset($_GET['go'])) {
		$go=check($_GET['go']);
		if (isset($modules[$go])){
			if (is_file(RP.'/modules/classes/'.$modules[$go])) {
				require(RP.'/modules/classes/'.$modules[$go]);
			}
			else {
				require(RP.'/modules/classes/bad_site.php');
			}
		}
		else {
				require(RP.'/modules/classes/bad_site.php');
		}
	}
	else require 'modules/classes/main_page.php';

	// TODO: usuń pokazywanie sesji
	  //show_tab($_SESSION);
	// usuń ------------------------------------------------------------------------------------------ 
	$module->service();
?>