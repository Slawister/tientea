<?php						


class my_account {
	
	public $db;
	
	function service(){
		if (isset($_SESSION['customer']['customer_id'])){
			if (isset($_GET['edycja'])){
				require (RP.'/engine/form.php');
				if ($_GET['edycja']==1){
					$this->items[] =new inputText('Imię', 'customer_name');
					$this->items[] =new inputText('Nazwisko', 'customer_surname');
					$this->items[] =new inputBirthday('Data_urodzenia', 'birthday');
					$this->items[] = new inputFromBaseHidden('adid', 'address_id');
					
					$this->items2[] =new inputText('Imię', 'name');
					$this->items2[] =new inputText('Nazwisko', 'surname');
					$this->items2[] =new inputText('ulica', 'street');
					$this->items2[] =new inputHomeNr('Nr domu/Nr lokalu', 'home_nr');
					$options = Array('inBase' => 1, 'required' => 0);
					$this->items2[] =new inputLocalNr('Nr lokalu', 'local_nr', $options);
					$this->items2[] =new inputText('Kod Pocztowy', 'post_code');
					$this->items2[] =new inputText('Miasto', 'city');
					
					$this->Form=new Form($this->db, 'customers', 'customer_id', 'formularz', $this->items, $_SESSION['customer']['customer_id']);
					$this->address_Form=new Form($this->db, 'addresses', 'address_id', 'formularz2', $this->items2, $_SESSION['customer']['address_id']);
	
					if (isset($_POST['formularz_OK'])){
						$this->errors=$this->edit_check();
						if ($this->errors==''){
							$this->Form->update();
							$this->address_Form->update();
							$this->show_dialog_page();
						}
					}

					$this->show(1);
				}
				if ($_GET['edycja']==2){
							$this->items[] =new inputPassword('Hasło', 'password');
							$this->items[] =new inputPassword('Powtórz hasło', 'password', Array('required' => 1, 'inBase' => 0, 'listing' => 0));
							$this->Form=new Form($this->db, 'customers', 'customer_id', 'formularz', $this->items, $_SESSION['customer']['customer_id']);
							
							
							if (isset($_POST['formularz_OK'])){
								$this->errors=$this->Form->check();
								if($_POST['formularz-0']!=$_POST['formularz-1'])
									$this->errors.='Hasła nie są takie same';
								if($this->errors==''){
									$this->Form->update();
                                    if(isset($_COOKIE['A'])){
                                        $cookie_value=generateAutologinCookie($_SESSION['customer']['customer_id'], password($_POST['formularz-0']));
                                        $cookie_time = (3600 * 24 * 120); // 120 days
                                        setcookie ('A', $cookie_value, time() + $cookie_time);
                                    }
                                    
                                }
									$this->show_dialog_page();
                                
							}
							$this->show(2);

				}
			}
			else $this->show();
			
		}
		else header('location: ?go=logowanie');
	}
	
	function __construct(){
		global $db;
		$this->db=$db;
		$this->errors;

	}

	function edit_check(){
		$errors=$this->Form->Check();
		$errors.=$this->address_Form->check();

			if(!preg_match ( '/^[0-9]{2}-[0-9]{3}$/i' , $this->address_Form->values['Kod Pocztowy'])){
				$errors.= 'Nieprawodłowy kod pocztowy<br />';

			}
			if (!$this->Form->values['Data_urodzenia']){
				$errors.= 'Niepoprawna data urodzenia<br />'.$this->Form->values['Data_urodzenia'];

			}
			$this->Form->values['rand']=rand();

			return($errors);
	}
	function show_dialog_page(){
		require RP.'/templates/template_base_class.php';
		$template = new template;
					$path[] =Array('title' => 'Moje Konto', 'link' => '?go=moje_konto');
					$template->content=$template->show_path($path);
					$template->content.=$template->dialog_page('Zmiany zostały zapisane');
					echo $template->show_page();
					
	}
	
	function show($edit='0'){
		$db = new db;
		require RP.'/templates/my_account.php';
		$template = new my_account_template;

		if(!$edit){
			$options['join_tab'][]=Array('LEFT OUTER', 'O', 'order_products', 'order_id');
			$options['join_tab'][]=Array('LEFT OUTER', 'order_products', 'products', 'product_id');
			$options['join_tab'][]=Array('LEFT OUTER', 'O', 'dict_order_statuses', 'order_status_id');
			$options['filter']='customer_id='.$_SESSION['customer']['customer_id'];
			
			$temp_orders=$db->getRows('shamanshop_5.order O', Array('O.order_id', 'order_date', 'order_product_price', 'product_name','order_nr', 'order_product_weight', 'order_product_quantity', 'status_name'), $options);
			$orders=null;
			if (count($temp_orders)>0)
			foreach($temp_orders as $item){
				$orders[$item['O.order_id']]['date']=$item['order_date'];
				$orders[$item['O.order_id']]['id']=$item['O.order_id'];
				$orders[$item['O.order_id']]['order_nr']=$item['order_nr'];
				$orders[$item['O.order_id']]['status_name']=$item['status_name'];
				$orders[$item['O.order_id']]['products'][]=Array('name'=>$item['product_name'], 'price' => $item['order_product_price'], 'weight' => $item['order_product_weight'], 'quantity' => $item['order_product_quantity']);
			}
			$options['join_tab']=Array(Array('LEFT OUTER', 'C', 'addresses', 'address_id'));
			$customer=$db->getRow('customers C', Array('C.customer_id', 'birthday', 'customer_name', 'customer_surname', 'email', 'name', 'surname', 'street', 'home_nr', 'local_nr', 'post_code', 'city'),$_SESSION['customer']['customer_id'], $options);
			$path[] =Array('title' => 'Moje Konto', 'link' => '');
			$template->content=$template->show_path($path);
			$template->content.=$template->show_title('Moje konto', 'account.png');
			$template->build_page($customer, $orders);
		}
		else if($edit==1){

			$path[] =Array('title' => 'Moje Konto', 'link' => '?go=moje_konto');
			$path[] =Array('title' => 'Edycja', 'link' => '');
			$template->content=$template->show_path($path);
			$template->content.=$template->show_title('Moje konto - Edycja', 'account.png');
				
			$form_values=$this->Form->template_export();
			$form_values+= $this->address_Form->template_export();
			$template->build_edit_page($form_values, $this->errors);
		}
		else if($edit==2){
			$path[] =Array('title' => 'Moje Konto', 'link' => '?go=moje_konto');
			$path[] =Array('title' => 'Edycja', 'link' => '');
			$template->content=$template->show_path($path);
			$template->content.=$template->show_title('Moje konto - Edycja', 'account.png');
				
			$form_values=$this->Form->template_export();
			$template->build_edit_page($form_values, $this->errors);
		}
		
		echo $template->show_page();
	}

	function show_edit(){
		
		$template = my_account_edit_template;
		
	}

}
$module=new my_account;

?>