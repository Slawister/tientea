<?php		
require(RP.'/engine/input_classes.php');

function standart_form_behavior2($Forms){
		if (isset($_POST['OK'])){

				if($Form->check()){
					if($_GET[edit]=='new'){
						$Form->add();
					}
					else 
						$Form->update();
					redirection('?m='.$_GET['m']);
				}
				else $Form->show();

		}
		else {
				$Form->show();
		}
}

class Form {
	
	public $row;
	public $name;
	
	public function __construct($db, $tab, $col_id, $name, $items, $edit){
		$this->db=$db;
		
		$this->name=$name;
		$this->edit=$edit;
		$this->tab=$tab;
		$this->col_id=$col_id;

		$this->items=$items;
		$this->buttons[]=Array('name' => $this->name.'_OK', 'value' =>'OK', 'other'=>'');
		
		
	}
	
	public function show($param=0){
		if ($param<2) echo '<form id="'.$this->name.'" name="'.$this->name.'" method="post" action=""><table class="form">';
		if ($this->edit!='new'){
			$col[0]=$this->col_id;

			foreach($this->items as $item){
				$col[]=$item->getColName();
			}
			$this->row=$this->db->getRow($this->tab, $col, $this->edit);
			$i=0;
			foreach ($this->items as $item){
				if (!isset($_POST[$this->name.'-'.$i])) {
					echo $item->show($this->row[$item->getColName()], $this->name.'-'.$i);
				}
				else echo $item->show($_POST[$this->name.'-'.$i], $this->name.'-'.$i);
				$i++;
			}
		}
		else {
			for ($i=0; $i<count($this->items); $i++){
			if (isset($_POST[$this->name.'-'.$i])){
				echo $this->items[$i]->show($_POST[$this->name.'-'.$i], $this->name.'-'.$i);
			}
			else echo $this->items[$i]->show('', $this->name.'-'.$i);
			}
		}
		if ($param==3 || $param==0){	
			echo '<tr><td></td><td>';
			foreach ($this->buttons as $button){
				echo '<input type="submit" name="'.$button['name'].'" value="'.$button['value'].'" '.$button['other'].'/>';
			}
			echo '</td></tr>';
			echo '</form></table>';
		}
		//echo $out;
	}
	
	public function template_export(){
		$form_values=Array(null);
		if ($this->edit!='new'){
			$col[0]=$this->col_id;

			foreach($this->items as $item){
				$col[]=$item->getColName();
			}
			$this->row=$this->db->getRow($this->tab, $col, $this->edit);
			$i=0;
			foreach ($this->items as $item){
				if (!isset($_POST[$this->name.'-'.$i])) {
					$form_values[$this->name.'-'.$i] = $item->show($this->row[$item->getColName()], $this->name.'-'.$i);
				}
				else $form_values[$this->name.'-'.$i] = $item->show($_POST[$this->name.'-'.$i], $this->name.'-'.$i);
				$i++;
			}
		}
		else {
			for ($i=0; $i<count($this->items); $i++){
			if (isset($_POST[$this->name.'-'.$i])){
				$form_values[$this->name.'-'.$i] = $this->items[$i]->show($_POST[$this->name.'-'.$i], $this->name.'-'.$i);
			}
			else $form_values[$this->name.'-'.$i] =  $this->items[$i]->show('', $this->name.'-'.$i);
			}
		}

	return($form_values);
	}
	
	public function add(){
		$i=0;
		foreach($this->items as $item){
			if($item->options['inBase']){
				$col[]=$item->GetColName();
				$values[]=$this->values[$item->name];
			}
			$i++;
		}
		$this->db->add($this->tab, $col, $values);
		return(mysql_insert_id());

	}
	

	
	public function update(){
		$col[0]=$this->col_id;
		$values[0]=$this->edit;
		$i=0;
		foreach($this->items as $item){
			if($item->options['inBase']){
				$col[]=$item->GetColName();
				$values[]=$this->values[$item->name];
			}
			$i++;
		}
		echo $this->db->update($this->tab, $col, $values);
	}
	
	public function check(){
	$out='';
			$i=0;
			foreach($this->items as $item){
				if($item->options['inBase']){
					$this->values[$item->name]=$item->getValue($this->name.'-'.$i);
					//echo $item->name.'-'.$this->values[$item->name];
						if ($item->options['required']){
							if (empty($this->values[$item->name])){
								$out.='Wprowadz: '.$item->name."\n<br />";
							}
						}
				}
				$i++;
			}
	return($out);
	}
	

}
?>