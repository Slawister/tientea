<?php			



class admin_module {
	
	
	public $list;
	public $name;

	function __construct($name, $tab, $tab_id, $items, $id='', $list=''){
		$this->base=new db;
		if (isset($_GET['edit'])) $edit=$_GET['edit'];
		else $edit='';
		if (isset($_GET['del'])) $this->delete=$_GET['del'];
		else $this->delete='';
		if (isset($_GET['go'])) $this->go=$_GET['go'];
		else $this->go='';

		
	//	DIE($edit);
		
		if (empty($id)){
			$this->id=$edit;
		}
		else
			$this->id=$id;
			
		$this->name=$name;
		$this->tab_id=$tab_id;
		$this->Form=new Form($this->base, $tab, $tab_id, $this->name, $items, $this->id);
		if($list==''){
			$this->list=new listing($this->base, $tab, $tab_id, $items );
		}
		else {
			$this->list=$list;
		}
		
		$this->list->name=$this->name;

		$this->addlink="?go=".$this->go."&edit=new";
		$this->redirection='?go='.$this->go;
		$this->tab=$tab;
		$this->Form->buttons[0]['other']='id="button-ok" style="visibility:hidden;" ';
		$this->Form->buttons[]=Array('name' => $this->name.'_OK', 'value' => 'delete', 'other' => 'id="button-del" style="visibility:hidden;"');
	}
	
	function show(){
		$this->header();
		$this->Form->show();
	}
	
	function header(){
		echo '<div class="admin_header">';
		//echo '<a onclick="document.'.$this->Form->name.'.'.$this->Form->name.'_OK'.'.click()"><img src="/admin/img/save.png" /></a>';
		echo '<a onclick="document.getElementById(\'button-ok\').click();"><img src="/admin/img/save.png" /></a>';
		echo '<a onclick="if (confirm(\'Czy na pewno chcesz usunac element?\')) document.getElementById(\'button-del\').click();"><img src="/admin/img/delete.png" /></a>';
		
		echo '</div>';
	}
	
	function add(){
		return($this->Form->Add());
	}
	
	function check(){
		$errors=$this->Form->check();
		return($errors);
	}
	
	function update(){
		$this->Form->Update();
	}
	
	function show_list(){
		echo '<div class="admin_header">';
		echo '<a href="'.$this->addlink.'" ><img src="/admin/img/add.png"/></a>';
		echo '</div>';
		$this->list->show();
	}
	
	function delete(){
		$this->base->delete($this->tab, $this->tab_id, $this->id);
		redirection($this->redirection);
	}
	
	function service(){
	
		if($this->id!=''){
			if (!is_numeric($this->id) && $this->id!='new'){
				DIE('bledne ID');
			}
			
			if (isset($_POST[$this->Form->name.'_OK'])){
				if ($_POST[$this->Form->name.'_OK']=='delete'){
					$this->delete();
				}
				else {
					$errors=$this->check();
					if($errors==''){
						if($this->id=='new'){
							$id=$this->add();
						}
						else {
							$this->update();
							$id=$this->id;
						}
						if ($_POST[$this->Form->name."_OK"]=='OK') redirection($this->redirection);
						else redirection($this->redirection.'&edit='.$id);
					}
					else {
						echo $errors;
						$this->show();
					}
				}

			}
			else {
					$this->show();
			}

		}
		else $this->show_list();
	}
}


class extendet_admin_module extends admin_module {

	function __construct ($name='', $tab, $tab_id, $items, $id='', $internal_modules, $list='') {
	
		
		parent::__construct($name, $tab, $tab_id, $items, $id, $list);
		$this->Form->buttons=Array(Array('name' => $this->name.'_OK', 'value' => 'Zastosuj', 'other' => ' id="button-apply" style="visibility:hidden;"'), 
		Array('name' => $this->name.'_OK', 'value' =>'OK', 'other' => 'id="button-ok" style="visibility:hidden;"'),
		Array('name' => $this->name.'_OK', 'value' => 'delete', 'other' => 'id="button-del" style="visibility:hidden;"'));
		$this->internal_modules=$internal_modules;
		$i=1;
		foreach($this->internal_modules as $i_module){
			$i++;
			$i_module->redirection="?go=".$this->go."&edit=".$this->id."&edit".$i."=list";
			$i_module->addlink="?go=".$this->go."&edit=".$this->id."&edit".$i."=new";
			$i_module->list->addlink="?go=".$this->go."&edit=".$this->id."&edit".$i."=new";
			
			if (isset($_GET['edit'.$i])) $edit_tmp=check($_GET['edit'.$i]);
			else $edit_tmp='';
			if ($edit_tmp=='list' || $edit_tmp=='')
				$i_module->id=null;
			else {
				$i_module->id=$edit_tmp;
				$this->delete=null;
			}	
	
			if ($this->id=='new')
				$i_module->list->filter=$this->tab_id."=0";
			else 
				$i_module->list->filter=$this->tab_id."=".$this->id;
				
			$i_module->list->rootURL="?go=".$this->go."&edit=".$this->id.'&edit'.$i.'=';
		}
	}
	
	function header(){
		echo '<div class="admin_header">';
		echo '<a onclick="document.getElementById(\'button-apply\').click()"><img src="/admin/img/apply.png" /></a>';
		echo '<a onclick="document.getElementById(\'button-ok\').click();"><img src="/admin/img/save.png" /></a>';
		if ($this->id!='new') echo '<a onclick="if (confirm(\'Czy na pewno chcesz usunac element?\')) document.getElementById(\'button-del\').click();"><img src="/admin/img/delete.png" /></a>';
		echo '</div>';
	}
	
	function show(){
	
		echo '<a href="?go='.$this->go.'&edit='.$this->id.'">Opis</a>';
		$i=1;
		if($this->id!='new'){
			foreach ($this->internal_modules as $i_module){
				$i++;
				echo ' <a href="?go='.$this->go.'&edit='.$this->id.'&edit'.$i.'=list">'.$i_module->name.'</a> ';
			}
		}
		$i=1;
		
		foreach ($this->internal_modules as $i_module){
			$i++;
			 if(isset($_GET['edit'.$i]) ){
				if ($this->delete==1){
					$i_module->delete=1;
				}
				$i_module->service();
				$i=0;
				break;
			}
		}
		if($i>0) {
			$this->header();
			$this->Form->show();
		}
	}
	


	function delete(){
		foreach ($this->internal_modules as $i_module){
			$this->base->delete($i_module->tab, $this->tab_id, $this->id);
		}
		parent::delete();
	}

}

?>