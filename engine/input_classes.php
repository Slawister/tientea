<?php	


interface IInput {
	public function show($value, $item_nr);
	public function getColName();
	public function getListCol();
	public function getValue($Post_name);
}

class Input {
	
	public function __construct($name, $col, $options=Array('required' => 1, 'inBase' => 1, 'listing' => 1)){
		$this->col=$col; 
		//$this->required=$required;
		$this->name=$name;
		//$this->listing=$listing;
		//$this->inBase=$inBase;

		$this->options=$options;
		
		if (isset($options['form_options'])){
			$this->options['form_options']=$options['form_options'];
		}
		else $this->options['form_options']='';
		
		$this->type='text';
	}
	
	public function show_in_list($value, $item_nr){
		$out='<input type="text" name="'.$item_nr.'"';
		

		if (!empty($value)){
			//$out.=' id="'.$result[$this->col[0]];
			$out.=' value="'.$value.'"';
		}
		$out .= '>'."\n";
		return($out);
	}
	
	public function GetColName(){
		return($this->col);
	}
	
	public function GetListCol(){
		return($this->col);
	}
	
	public function getName(){
		return($this->name);
	}
	
	public function getValue($Post_name){

		return(check($_POST[$Post_name]));
	}
}


class inputText extends Input implements IInput {

	public function show($value, $item_nr){
		$out='<tr><td class="label">'.$this->name.'</td><td class="value"><input class="input_text" type="text" id="'.$item_nr.'" name="'.$item_nr.'"';
		

		if (!empty($value)){
			//$out.=' id="'.$result[$this->col[0]];
			$out.=' value="'.$value.'"';
		}
		$out .= ' '.$this->options['form_options'].' />'."\n</td></tr>";
		return $out;

	}
}

class inputTextAlias extends inputText implements IInput {

	public function getValue($Post_name){
		return(alias($_POST[$Post_name]));
	}
}



class inputTextBox extends Input implements IInput {

	public function show($value, $item_nr){
		$out='<tr><td class="label">'.$this->name.'</td><td class="value"><textarea name="'.$item_nr.'" id="'.$item_nr.'" cols="40" rows="5" '.$this->options['form_options'].'>';
		

		if (!empty($value)){
			//$out.=' id="'.$result[$this->col[0]];
			$out.=$value;
		}
		$out .= '</textarea>'."\n</td></tr>";
		return $out;
	}
}

class inputCkeEditor extends Input implements IInput {
	public function show($value, $item_nr) {
		$out= '<tr><td class="label">'.$this->name.'</td><td class="value">';
		include_once "plugins/ckeditor/ckeditor.php";
			
			// Create a class instance.
			$CKEditor = new CKEditor();
			$config = array();
			$config['toolbar'] = array(
				array( 'Source', '-', 'Bold', 'Italic', 'Underline', 'Strike' ),
				array('Cut','Copy','Paste','PasteText','PasteFromWord'),
				array('Undo','Redo','-','Find','Replace','SelectAll','RemoveFormat'),
				array('JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'),
				array('Table'),
				array('Format'),
				array('TextColor','BGColor'),



			);
			// Path to the CKEditor directory, ideally use an absolute path instead of a relative dir.
			//   $CKEditor->basePath = '/ckeditor/'
			// If not set, CKEditor will try to detect the correct path.
			$CKEditor->basePath = 'plugins/ckeditor/';
			// Create a textarea element and attach CKEditor to it.
			$out.= $CKEditor->editor($item_nr, $value, $config);
		$out.= "</td></tr>";
		return $out;
	}
	function getValue($Post_name){
		return(html($_POST[$Post_name]));
	}
}



class inputPassword extends Input implements IInput{

	function show($value, $item_nr){
		$value='';
		$out='<tr><td class="label">'.$this->name.'</td><td class="value"><input class="input_text" type="password" name="'.$item_nr.'"';
		
		if (!empty($value)){
			//$out.=' id="'.$result[$this->col[0]];
			$out.=' value="'.$value.'"';
		}
		$out .= ' '.$this->options['form_options'].' />'."\n</td></tr>";
		return $out;
	}
	
	function getValue($Post_name){
		if(empty($_POST[$Post_name])){
			return('');
		}
		
		return(password($_POST[$Post_name]));
	}
}

class inputFromBaseHidden extends  Input implements IInput{
		
	function show($value, $item_nr){
		$out='<input type="hidden" name="'.$item_nr.'" value="'.$value.'" />'."\n";
		return $out;
	}
}

class inputHidden extends Input implements IInput {
	
	public function __construct($name, $col, $value, $options=Array('required' => 1, 'inBase' => 1, 'listing' => 1)){
		$this->col=$col;
		$this->name=$name;
		$this->value=$value;
		$this->options=$options;
	}

	function show($value, $item_nr){
		$out='<input type="hidden" name="'.$item_nr.'" value="'.$this->value.'" />'."\n";
		return $out;
	}
/*	
	function getValue($Post_name){
		$this->db->delete($this->tab, $this->tab_id, $this->id);
	}
	*/
}

class inputPhoto extends Input implements IInput {

	
	public function show($value, $item_nr){
		$out='<tr><td class="label">'.$this->name.'</td><td class="value"><input class="input_text" type="text" name="'.$item_nr.'"';
		
//<input type="text" name="photo[1]" value="" id="photo" />&nbsp;<button onclick="return setFile('photo1');">Browse</button></td>

		if (!empty($value)){
			//$out.=' id="'.$result[$this->col[0]];
			$out.=' value="'.$value.'"';
		}
		$out .= ' id="'.$item_nr.'" '.$this->options['form_options'].' />&nbsp;<button  onclick="return setFile('."'".$item_nr."'".');">Browse</button>'."\n</td></tr>";
		return $out;
	}
}


class inputList extends Input implements IInput {

	public function __construct($name, $tab, $col, $options=Array('required' => 1, 'inBase' => 1, 'listing' => 1)){

		$this->col=$col;

		$this->tab=$tab;
	//	$this->filter=$filter;
		$this->name=$name;
		$this->options=$options;
		
		if (isset($options['filter'])){
			$this->options['filter']=$options['filter'];
		}
		else $this->options['filter']='';
		
		if (isset($options['form_options'])){
			$this->options['form_options']=$options['form_options'];
		}
		else $this->options['form_options']='';
		
		$this->type='list';

	}
	public function getColName(){
		return($this->col[0]);
	}
	public function GetListCol(){
		return($this->col[1]);
	}


	public function show($value, $item_nr){
		$base=new db;
		$results=$base->getRows($this->tab, $this->col, Array('filter' =>$this->options['filter']));
		$selected='';

		$out='<tr><td class="label">'.$this->name.'</td><td class="value"><select  id="'.$item_nr.'" name="'.$item_nr.'" '.$this->options['form_options'].'>'."\n";
		if (!empty($value)) {
			$selected=$value;
		}
		else $out.='<option></option>';
		foreach ( $results as $item ){
			$i=0;
			foreach($this->col as $head){
				if ($i==0){
					$out.='<option value="'.$item[$head].'"';
					if ($selected==$item[$head]){
						$out.=' selected="selected"';
					}
					$out.=">";
					$i++;
				}
				else { 
					$out.=$item[$head].' ';
				}
			}
			$out.='</option>'."\n";
		}
		$out.="</select></td></tr>";
		return $out;
	}
	
	public function show_in_list($value, $item_nr){
	$base=new db;
	$selected='';
	$results=$base->getRows($this->tab, $this->col, Array('filter' =>$this->options['filter']), '');
	$out='<select  id="'.$item_nr.'" name="'.$item_nr.'">'."\n";
		if (!empty($value)) {
			$selected=$value;
		}
		$out.='<option></option>';
		if($results==null) $results=Array(null);
		foreach ( $results as $item ){
			$i=0;
			foreach($this->col as $head){
				if ($i==0){
					$out.='<option value="'.$item[$head].'"';
					if ($selected==$item[$head]){
						$out.=' selected="selected"';
					}
					$out.=">";
					$i++;
				}
				else { 
					$out.=$item[$head].' ';
				}
			}
			$out.='</option>'."\n";
		}
		$out.="</select>";
		return($out);
		
	}
	
}

class inputCheckBox extends Input implements IInput {
	
	
	public function show($value, $item_nr){
		$out='<tr><td class="label">'.$this->name.'</td><td class="value"><input type="checkbox" name="'.$item_nr.'" value="1"';
			
		if ($value){
				//$out.=' id="'.$result[$this->col[0]];
				$out.=' checked="checked" ';
		}
		$out .= ' '.$this->options['form_options'].' >'."\n</td></tr>";
		return $out;
	}

}

class InputHomeNr extends Input implements IInput{
	
	public function show($value, $item_nr){
		$out='<tr><td class="label">'.$this->name.'</td><td class="value"><input type="text" size="4" maxlength="4" name="'.$item_nr.'"';
		

		if (!empty($value)){
			//$out.=' id="'.$result[$this->col[0]];
			$out.=' value="'.$value.'"';
		}
		$out .= ' '.$this->options['form_options'].'>';
		return $out;
	}
}

class inputLocalNr extends Input implements IInput {

	public function show($value, $item_nr){
		$out='/<input type="text" size="4" maxlength="4" name="'.$item_nr.'"';
		

		if (!empty($value)){
			//$out.=' id="'.$result[$this->col[0]];
			$out.=' value="'.$value.'"';
		}
		$out .= ' '.$this->options['form_options'].'>'."\n</td></tr>";
		return $out;
	}
}

class inputBirthday extends Input implements IInput{
	public function show($value, $item_nr){
		
			$date='';
			$day='';
			$month='';
			$year='';
			
			if (strlen($value)>3){
				$date=explode('-', $value);	
				$year=$date[0];
				$month=$date[1];
				$day=$date[2];
			}
			else {
				$day=$value;
			}
					
			$out='<tr><td class="label">'.$this->name.'</td><td class="value"><input type="text" size="2" maxlength="2" name="'.$item_nr.'"';


			if (!empty($day)){

				$out.=' value="'.$day.'"';
			}

			
			$out .= ' onkeyup="if(this.value.length==2)this.form.elements[\''.$item_nr.'m'.'\'].focus();" />-<input type="text" size="2" maxlength="2" name="'.$item_nr.'m"';
			
			if (!empty($_POST[$item_nr.'m'])){

				$out.=' value="'.$_POST[$item_nr.'m'].'"';
			}
			else{
				$out.=' value="'.$month.'"';
			}
			
			$out .= ' onkeyup="if(this.value.length==2)this.form.elements[\''.$item_nr.'y'.'\'].focus();" />-<input type="text" size="4" maxlength="4" name="'.$item_nr.'y"';
			
			if (!empty($_POST[$item_nr.'y'])){

				$out.=' value="'.$_POST[$item_nr.'y'].'"';
			}
			
			else{
				$out.=' value="'.$year.'"';
			}
			
			$out.=' />'."\n</td></tr>";
			return $out;
		}
		public function getValue($Post_name){
			
			if ( $_POST[$Post_name]<1 || $_POST[$Post_name]>31 || $_POST[$Post_name.'m']<1 || $_POST[$Post_name.'m']>12 || $_POST[$Post_name.'y']<1800 || $_POST[$Post_name.'y']>date('Y') ){
				return('niepoprawna');	
			}	
			else{
				return(check($_POST[$Post_name.'y'].'-'.$_POST[$Post_name.'m'].'-'.$_POST[$Post_name]));
			}
		}
	}