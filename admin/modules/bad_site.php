<?php	

class bad_site {
	public function show(){
		echo 'Brak Takiej strony';
	}
	public function show_list(){
		echo 'Brak Takiej strony';
	}
	function service(){
	
		$this->show();
	}
}

$module= new bad_site;