<?php
session_start();


ob_start();

define("RP",    $_SERVER['DOCUMENT_ROOT'] );
ini_set( 'display_errors', 'On' ); 
error_reporting( E_ALL );


	require(RP.'/config/config.php');
	require(RP.'/engine/base.php');
	require(RP.'/engine/form.php');
	require(RP.'/engine/security.php');
	require(RP.'/admin/listing.php');
	require(RP.'/engine/functions.php');
	require (RP.'/admin/modules/admin_module.php');
	
	if (isset($_GET['go'])) $go=$_GET['go'];
	else $go='';
	
	
	
	$base=new db;
	$string_title="Panel administracyjny";
	$module='';
	
	$modules= Array( 'produkty' => 'products',
					'kategorie' => 'categories',
					'podkategorie' => 'subcategories',
					'artykuły' => 'articles',
					'klienci'	=> 'customers',
					'zamowienia' => 'orders',
					'StatusyZamowien' => 'order_statuses',
					'Wysylki' => 'supplies',
					'Platnosci' => 'payments',
					'Buger' => 'buger',
					'Recenzje' => 'reviews',
					'test' => 'test'
			
				 );
				 
				 


	if (isset($modules[$go])){
		if (is_file(RP.'/admin/modules/'.$modules[$go].'/'.$modules[$go].'.php')) {
			require(RP.'/admin/modules/'.$modules[$go].'/'.$modules[$go].'.php');
		}
		else {
			require(RP.'/admin/modules/bad_site.php');
		}
	}
	else {
		require(RP.'/admin/modules/bad_site.php');
	}
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	
	 <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link href="style.css" rel="stylesheet" type="text/css" />
	<title>Untitled Document</title>
		
		
	<script type="text/javascript">

		function setFile(elementId)
		{
			var win = window.open('plugins/ajaxfilemanager/ajaxfilemanager.php?editor=form&elementId='+elementId, 'ajaxFileImageManager', 'width=782,height=500');		

		return false;
		}
	</script>
	<script type="text/javascript">
	function buttonclick(elementId)
		{
			var buttont=getelementbyid(elementID);
			buttont.click();
		}
	</script>
	
	
	<script type="text/javascript" src="../scripts/yetii.js"></script>


</head>

<body>

<div class="header"><img src="img/tools.jpg" /><?php echo $string_title; ?></div>
<div class="left_column">
	<?php
		$left_menu= new menu($base);
		$left_menu->show($modules);
	?>	
	
</div>

<div class="content">
	<?php

$module->service();
		
		
	?>
</div>

</body>
</html>

<?php 
	ob_end_flush();
?>
