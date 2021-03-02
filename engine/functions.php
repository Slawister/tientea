<?php		

	function redirection($end_url){
		$url='http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF']);
		if ((substr($url,-1) == '/') OR (substr($url,-1)=='\\'))
		$url = substr($url,0,-1);
		$url.='/'.$end_url;
			 
		header("Location: $url");
	}
	
	function show_tab($tab=''){
		echo '<pre>';
		print_r($tab);
		echo '</pre>';
	}
	
	function getUrl()
	{   
	    $var_array = array();
	    $varAdd_array = array();
	    //$url = $path;
	   $qs = $_SERVER['QUERY_STRING'];

	
	    if($qs){
	   
	        $var = explode('&', $qs);
	        foreach($var as $varOne)
	        {
	            $name_value = explode('=', $varOne);
	           
	                $var_array[$name_value[0]] = $name_value[1];
	        }
	    }
	       
	    
	    $delimiter = "?";
	   $url='';
	    foreach($var_array as $key => $value)
	    {
	        $url .= $delimiter.$key."=".$value;
	        $delimiter = "&";
	    }
	    foreach($varAdd_array as $key => $value)
	    {
	        $url .= $delimiter.$key."=".$value;
	        $delimiter = "&";
	    }
	    return '/'.$url;
	}
	
	function order_nr($nr, $date){
		$date = substr($date, 0, 4);
		if ($nr<=9)
			$nr='00'.$nr;
		else if($nr<=99)
			$nr='0'.$nr;
			 
		
		return($nr.'/TIEN/'.$date);
	}
    
    function generate_password(){
            $pattern='1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
            for($i=0; $i<7; $i++){
                $password.=$pattern{rand(0,strlen($pattern)-1)};
            }
            return $password;
   }
	
	?>