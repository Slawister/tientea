<?php


	function check_numeric($variable){
		if (is_numeric($variable)){
			return($variable);
		}
		else 
			return(0);
	}

	function check($variable){
		$out=mysql_real_escape_string($variable);
		$out= trim($out);//usuwamy białe znaki
        if (get_magic_quotes_gpc()) 
			$out= stripslashes($out);
        $out=htmlspecialchars($out, ENT_QUOTES);

		return($out);
	}
	
	function alias($variable){
		$out=trim($variable);
		$out=str_replace(' ', '', $out);
		return($out);
	}
	
	
	function html($variable) {
		$out=mysql_real_escape_string($variable);
		return($out);
	}
	
	function password($password){
		return(md5($password));
	}
    
    function generateAutologinCookie($id, $password){
        return($id.'A'.$password);
    }
    
    function resolveAutologinCookie($value){
        
        $separator=strpos($value, 'A');
        $user_id=substr($value, 0, $separator);
        $hash=substr($value, $separator+1);
        return(Array('id'=> $user_id, 'hash'=> $hash));
    }

?>