<?php			


class buger_module extends admin_module {
	function add(){
			$to1= 'slawek@kidon.eu';
			$to2= 'sklep@shamanshop.pl';
			$from='test@tientea.pl';
			$headers = 'From: '.$from. "\r\n" .
						'Reply-To: test@tientea.pl' . "\r\n" .
						'X-Mailer: PHP/' . phpversion();
			
			$subject='Dodano buga:'.$this->Form->values['Temat']; 
			$message='Ważność: '.$this->Form->values['Waznosc']."\n".'Kategoria: '.$this->Form->values['Kategoria']."\n\n".$this->Form->values['Opis'];
			$subject='=?UTF-8?B?'.base64_encode($subject).'?=';
			mail($to1, $subject, $message, $headers);
			mail($to2, $subject, $message, $headers);
			$this->Form->add();
	}
	
	function update(){
			$to1= 'slawek@kidon.eu';
			$to2= 'sklep@shamanshop.pl';
			$from='test@tientea.pl';
			$headers = 'From: '.$from. "\r\n" .
						'Reply-To: test@tientea.pl' . "\r\n" .
						'X-Mailer: PHP/' . phpversion();
			
			
			if (isset($this->Form->values['Status'])){
				if ($this->Form->values['Status']==3)
					$subject='Rozwiązano buga:'.$this->Form->values['Temat']; 
			}					
			else 
				$subject='Aktualizacja buga:'.$this->Form->values['Temat']; 
				
			$message=$this->Form->values['Opis'];
			$subject='=?UTF-8?B?'.base64_encode($subject).'?=';
			mail($to1, $subject, $message, $headers);
			mail($to2, $subject, $message, $headers);
			$this->Form->Update();
	}

}

		$items[] = new inputText('Temat', 'bug_subject');
		$options=Array('required' => 0, 'inBase' => 1, 'listing'=>0);
		$items[] = new inputTextBox('Opis', 'bug_description', $options);
		$options=Array('required' => 0, 'inBase' => 1, 'listing'=>1);
		$items[]=new inputList('Kategoria', 'dict_bugs_categories', Array('bug_category_id', 'bug_category_name'), $options);
		$items[]=new inputList('Status', 'dict_bugs_statuses', Array('bug_status_id', 'bug_status_name'), $options);

$module= new buger_module('Opis', 'bugs', 'bug_id', $items);

	$module->list->join_tab[]=(Array('LEFT OUTER', 'bugs', 'dict_bugs_statuses', 'bug_status_id'));
$module->list->join_tab[]=(Array('LEFT OUTER', 'bugs', 'dict_bugs_categories', 'bug_category_id'));
$module->list->join_tab[]=(Array('LEFT OUTER', 'bugs', 'dict_bugs_severities', 'bug_severity_id'));

if(!isset($_GET['order'])){
	$module->list->order='bug_id';
	$module->list->desc='DESC';
}


?>