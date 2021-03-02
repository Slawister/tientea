<?php					
 

class menu {
	
	function __construct($db){
		$this->db=$db;
	}
	
	function show($modules){

		$out='<ul class="menu">';
		while( list($klucz, $wartosc) = each($modules) ){
			$out.='<li><a href="?go='.$klucz.'">'.$klucz."</a></li>\n";
		}
		$out.='</ul>';
		echo $out;
	}
}

class listing {
	
	public $null_value;
	
	function __construct($db, $tab, $tab_id, $items, $filter='', $join_tab=''){
		
		if (isset($_GET['go'])) $this->go=$_GET['go'];
		else $this->go='';
		if (isset($_GET['desc'])) $this->desc=$_GET['desc'];
		else $this->desc='';
		if (isset($_GET['order'])) $this->order=$_GET['order'];
		else $this->order='';
		$this->name='';
		if (!empty($filter)){
		    die('filtr');
        }
        
		$this->tab=$tab;
		$this->filter=$filter;
		$this->join_tab=$join_tab;
		$this->db=$db;
		$this->head[]=' ';
		$this->col[]=$tab_id;
		$this->rootURL='?go='.$this->go.'&edit=';
		$this->delete='';
		$this->null_value='<i>brak</i>';
		$this->items=$items;
	}
	
	
	function showLine($col, $start, $odd){

		if ($odd) $out='<tr class="odd">';
		else $out='<tr class="even">';
		$out.='<td class="option">';
		$out.='<form method="POST" action="'.$this->rootURL.$col[$this->col[0]].'">
		<input type="submit" style="width:20px; background-color:red" name="'.$this->name.'_OK" value="delete"
		onclick="if (!confirm(\'Czy na pewno chcesz wyczyścić cały formularz?\')) return false;"
		/></form>';
		$out.="</td>";
		for($i=$start; $i<count($col); $i++){
			if (empty($col[$this->col[$i]]))
				$value=$this->null_value;
			else {
				$value=$col[$this->col[$i]];
			}
			
			$out.='<td><a href="'.$this->rootURL.$col[$this->col[0]].'"><div>'.$value.'</div></a></td>';
		}
		$out.="</tr>\n";
		echo $out;
	}
function showHead(){
		$out='<tr>';
		$desc='';
		if (empty($this->desc) && !empty($this->order) ){
			$desc='&desc=DESC';
		}
		$edit='';
		if(!empty($_GET['edit'])){
			$edit='&edit='.$_GET['edit'];
		}
		for ($i=2; !empty($_GET['edit'.$i]); $i++){
			$edit.='&edit'.$i.'='.$_GET['edit'.$i];
		}
		

		for ($i=0; $i<count($this->col); $i++){
			$out.='<th><a href="?go='.$this->go.'&order='.$this->col[$i].$desc.$edit.'">'.$this->head[$i].'</a></th>';
		}
		$out.="</tr>\n";
		$out.='<form method="post" action=""><tr>';
		$out.='<td><input type="submit" name="filter" value="filtr"></td>';
		$i=1;
		foreach ($this->items as $item){
			if($item->options['listing'] != 0){
				$value='';
				if(isset($_SESSION['filter_'.$this->tab][$i])){
					$value=$_SESSION['filter_'.$this->tab][$i];
				}
				$out.='<td align="middle">'.$item->show_in_list($value, 'filter_'.$i).'</td>';
				$i++;
			}
		}
		$out.='</tr></form>';
		echo $out;
	}

function show(){
   
    
	$col_db;
//	show_tab($this->items);
	foreach($this->items as $item){
		if ($item->options['listing']){
			$this->head[]=$item->getName();
			$this->col[]=$item->getListCol();
			$col_db[]=Array('col_name' => $item->getColName(), 'type'=>$item->type);
		}
	}

	$tmp=0;
	$i=1;

    if(isset($_POST['filter'])){
        for ($i=1;$i<=count($col_db);$i++){
            if(!empty($_POST['filter_'.$i])){
                $filter[$i]=$_POST['filter_'.$i];
            }
        }
        $_SESSION['filter_'.$this->tab]=$filter;
    }
    else if(isset($_SESSION['filter_'.$this->tab])){
        $filter=$_SESSION['filter_'.$this->tab];
    }

    $sql_filter=$this->filter;
    if (isset($filter)){
        $i=1;
        foreach ($col_db as $col_item){
            if (!empty($filter[$i])){
                if(!empty($sql_filter)) $sql_filter.=' AND ';
                if ($col_item['type']=='list')
                    $sql_filter.=$this->tab.'.'.$col_item['col_name'].' = \''.$filter[$i].'\'';
                else 
                    $sql_filter.=$col_item['col_name'].' LIKE \'%'.$filter[$i].'%\'';
            }
            $i++;
        }
    }

	$rows=Array(null);
	$options['filter']=$sql_filter;
	$options['join_tab']=$this->join_tab;
	$options['oder']=$this->order.' '.$this->desc;
	
		$row=$this->db->getRows($this->tab, $this->col, $options);
		echo '<table cellspacing="0" cellpadding="0" >';
		$this->showHead();
		$i=0;
		if (count($row)>0){
			foreach ($row as $item){	
				if ($i%2) $this->showLine($item,1,1);
				else $this->showLine($item,1,0);
				$i++;
			}
		}
		echo '</table>';
			
	}	
}

?>