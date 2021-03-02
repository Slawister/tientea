<?php
class password_forgotten {
    function service(){
        global $db;
        $this->db=$db;
        require RP.'/templates/password_forgotten.php';
        $this->template = new password_forgotten_template;
        $path[] =Array('title' => 'logowanie', 'link' => '?go=logowanie');
        $path[] =Array('title' => 'Zapomnienie hasła', 'link' => '');
        $this->template->content=$this->template->show_path($path);
            if(!empty($_POST['email_forgotten_password'])){
                $email=check($_POST['email_forgotten_password']);
                $errors=$this->check($email);
                if(empty($errors)){
                    $text='Na podany adres email: <strong>'.$email.'</strong> wysłaliśmy nowe hasło. Czekaj na wiadomość od nas, będą w niej dalsze informacje.';
                    $this->template->content.=$this->template->dialog_page($text);
                    echo $this->template->show_page();
                }
                $this->show($errors);
            }
            else {
                $this->show($errors);
            }
    }
    
    function show($errors){
        

        $this->template->build_page($errors);
        echo $this->template->show_page();
    }
    function check($email){
       $pattern='/^([\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+\.)*[\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)$/i';
       if (!preg_match($pattern, $email)) {
        return $errors.='Uwaga! Wygląda na to, że użyty adres email jest niepoprawny<br />';
       }
       else {
          $customer=$this->db->getRow('customers', Array('email', 'customer_id'), $email);
           if (count($customer)>1){
              $new_password=generate_password();
              $this->db->update('customers', Array('customer_id', 'password', 'password_forgotten'), Array($customer['customer_id'], password($new_password), 1) );
              echo $new_password;  
           }
           else{
               return $errors.='Uwaga! Wygląda na to, że nikt nie rejestrował się na podany adres email';
           }

       }
    }
    
    
}
$module = new password_forgotten;