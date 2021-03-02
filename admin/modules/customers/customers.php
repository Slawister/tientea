<?php					


    class customer_module extends admin_module {
    	
		public $address_Form;
		
		function __construct($name='', $tab, $tab_id, $items, $id=''){

			
			parent::__construct($name, $tab, $tab_id, $items, $id);
			
			//$options=Array('inBase' => 1, 'listing'=> 1, 'required' => 1);
			$items2[] =new inputText('(adres) Imię', 'name');
			$items2[] =new inputText('(adres) Nazwisko', 'surname');
			$items2[] =new inputText('ulica', 'street');
			$items2[] =new inputHomeNr('Nr domu/Nr lokalu', 'home_nr');
			$options=Array('required' => 0, 'inBase' => 1, 'listing'=>0);
			$items2[] =new inputLocalNr('Nr lokalu', 'local_nr', $options);
			$items2[] =new inputText('Kod Pocztowy', 'post_code');
			$items2[] =new inputText('Miasto', 'city');
			$address_id = $this->base->getRow('customers', Array('customer_id', 'address_id'), $this->id);
			$this->address_Form=new Form($this->base, 'addresses', 'address_id', 'formularz2', $items2, $address_id['address_id']);
			$this->address_Form->buttons = $this->Form->buttons;
		}
		
        function show(){
			$this->header();
			$this->Form->show(1);			
			$this->address_Form->show(3);
        }
		
		function check(){
			$errors=$this->Form->Check();
			$errors.=$this->address_Form->check();
			return($errors);
		}
		
		function update(){
			$this->Form->Update();
			$this->address_Form->update();
		}

		function delete(){
			$this->base->delete($this->tab, $this->tab_id, $this->id);
			//$this->base->delete($this->address_Form->tab, $this->address_Form->col_id, $this->address_Form->id);
			redirection($this->redirection);
		}
		function show_list(){
			$this->list->show();
		}

	
    }

    	$items[] =new inputText('Imię', 'customer_name');
		$items[] =new inputText('Nazwisko', 'customer_surname');
		$items[] =new inputText('email', 'email');
		$options=Array('required' => 1, 'inBase' => 1, 'listing'=>0);
		//$items[] =new inputPassword('Hasło', 'password', $options);
		$items[] =new inputText('Data_urodzenia', 'birthday', $options);
		$items[] =new inputText('Tieny', 'customer_points', $options);
		
		
		

		$module = new customer_module('klienci', 'customers', 'customer_id', $items);

    ?>