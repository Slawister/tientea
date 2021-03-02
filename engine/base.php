<?php		



mysql_connect(SERVER, DB_USER, PASS) or
    die('Nie moża się połączyć' . mysql_error());
//mysql_query('SET NAMES utf-8');
mysql_select_db(DATABASE);
mysql_set_charset('utf8');


class db 
{
	public function add($tab, $col, $values)
	{
		$query='INSERT INTO '.DATABASE.'.'.$tab.' (';
		$i=0;
		foreach ( $col as $item )
		{
			if ($i!=0) $query.=", ";
			$query.=$item;
			$i=1;
		}
		$i=0;
		$query.=' ) VALUES (';
		foreach ( $values as $item )
		{
			if ($i!=0) $query.=', ';
			$query.='\''.$item.'\'';
			$i=1;
		}
		$query.=')';
	//	echo $query;
	//	DIE();


		mysql_query($query) OR DIE("CB#01<br />$query<br />".mysql_error());
		
	}
	
	public function delete($tab, $col, $value)
	{
		$query="DELETE FROM $tab WHERE $col = $value";
		mysql_query($query) OR DIE("CB#02<br />$query<br />".mysql_error());
	}
	
	public function update($tab, $col, $values )
	{ //for ( $i = 0; $i < count($kraj); $i++ )
		$query="UPDATE $tab SET ";
		for ($i=1; $i< count($col); $i++){
			$query.="$col[$i]='$values[$i]'";
			if ($i!=count($col)-1) $query.=", ";
		}
		$query.=" WHERE $col[0]=$values[0]";
		//echo $query;
		//DIE();
		mysql_query($query) OR DIE("CB#03<br />$query<br />".mysql_error());		
	}
	
	public function getRow($tab, $col, $value, $options=Array(null))
	{
		
		$query="SELECT ";
		
		$i=0;
		foreach ( $col as $item )
		{
			if ($i!=0) $query.=", ";
			$query.=$item;
			$i=1;
		}
		$query.=' From '.DATABASE.'.'.$tab.' ' ;
		$where=0;
		
		if (!empty($options['join_tab'])){
			$query2='';
			foreach($options['join_tab'] as $item){
				if ($item[0]=="LEFT OUTER")
					$query.=" LEFT OUTER JOIN $item[2] ON $item[1].$item[3]=$item[2].$item[3]";
				else {
					$query.=" INNER JOIN $item[2]";
					if ($where)
						$query2.=' AND';
					else {
						$query2.=' WHERE';
						$where=1;
					}
					$query2.=" $item[1].$item[3]=$item[2].$item[3]";
				}
			}
			$query.=$query2;
		}
		

			if ($where)
				$query.=' AND';
			else 
				$query.=' WHERE';
			$query.=' '.$col[0].'= \''.$value.'\'';		
		
		//echo $query;
		$tmp = mysql_query($query) or DIE("CB#04<br />$query<br />".mysql_error());
		
		$row = mysql_fetch_array($tmp,MYSQL_ASSOC);
		return($row);
	}

	
	public function getRows($tab, $col, $options=Array(0))
	{		
		$result=null;
		$where=0;
		$query="SELECT ";
		$i=0;
		foreach ( $col as $item )
		{
			if ($i!=0) $query.=", ";
			$query.=$item;
			$i=1;
		}
		$query.=' FROM '.DATABASE.'.'.$tab;
		
		if (!empty($options['join_tab'])){
			$query2='';
			foreach($options['join_tab'] as $item){
				if ($item[0]=="LEFT OUTER")
					$query.=" LEFT OUTER JOIN $item[2] ON $item[1].$item[3]=$item[2].$item[3]";
				else {
					$query.=" INNER JOIN $item[2]";
					if ($where)
						$query2.=" AND";
					else {
						$query2.=" WHERE";
						$where=1;
					}
					$query2.=" $item[1].$item[3]=$item[2].$item[3]";
				}
			}
			$query.=$query2;
		}
		
		if (!empty($options['filter'])){
			if ($where)
				$query.=" AND";
			else 
				$query.=" WHERE";
			$query.=' '.$options['filter'];
		}
		/*
		if (!empty($options['group']) && $options['group']!=' '){
			$query.=' GROUP BY '.$options['group'];
		}
		*/
		if (!empty($options['order']) && $options['order']!=' '){
			$query.=' ORDER BY '.$options['order'];
		}
		

		
		
		
		//echo $query;
		
		$tmp = mysql_query($query) or DIE("CB#05<br />$query<br />".mysql_error());
		$i=0;
		while($row = mysql_fetch_array($tmp,MYSQL_NUM))
		{
			for ($j=0; $j<count($col); $j++ )
			{
				
				$result[$i][$col[$j]]=$row[$j];
			}
			$i++;
		}
		return($result);
	}

		public function customGetRows($col, $query_end){
			$result='';
				$query="SELECT ";
			$i=0;
			foreach ( $col as $item )
			{
				if ($i!=0) $query.=", ";
				$query.=$item;
				$i=1;
			}
			$query.=' '.$query_end;
			$tmp = mysql_query($query) or DIE("CB#05<br />$query<br />".mysql_error());
			$i=0;
			while($row = mysql_fetch_array($tmp,MYSQL_NUM))
			{
				for ($j=0; $j<count($col); $j++ )
				{
					
					$result[$i][$col[$j]]=$row[$j];
				}
				$i++;
			}
			return($result);
		}
	
}



?>