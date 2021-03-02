<?php								

class cart{
	
	function __construct(){

		if(isset($_POST['cart'])){
			$product_id=check_numeric($_POST['product_id']);
			$product_name=check($_POST['product_name']);
			$weight=check_numeric($_POST['weight']);
			$price=check_numeric($_POST['price']);
			$url=check($_POST['url']);
			$photo=check($_POST['photo']);
            $quantity=check($_POST['quantity']);
            $this->dialog='';

			switch ($_POST['cart']){
				case 'do koszyka':
					$this->ad_to_cart($product_id, $product_name, $url, $weight, $price, $photo);
					

					header('Location: '.$_POST['url']);
					break;
                case 'Dodaj Zestaw':
                   // DIE (check($_POST['product_1']));
                    $products[]=explode(',',check($_POST['product_1']));
                    $products[]=explode(',',check($_POST['product_2']));
                    $products[]=explode(',',check($_POST['product_3']));
                    $products[]=explode(',',check($_POST['product_4']));
                    $this->add_package($products);
                    break;
                case 'Dodaj gratis':
                    if($_SESSION['gratis_nr']>0){
                            $product=explode(',',check($_POST['gratis_product']));
                            $this->add_gratis($product[0], $product[1], $product[2], $product[3], $_SESSION['gratis_nr']);
                            header('Location: '.$_POST['url']);
                    }     
                    else{
                        $this->dialog='Nie możesz dodać gratisu';
                    }    
                    break;
				case 'dodaj':
					   $this->ad_to_cart($product_id, $product_name, $url, $weight, $price, $photo, $_SESSION['gratis_nr']);
					break;
                case 'dodaj_wiele':
                       $product=explode(',',check($_POST['product']));
                       $this->change_quantity($product[0], $product[1], $product[2], $quantity);
                    break; 
				case 'minus':
					$this->subtract($product_id, $weight, $price);
					break;
				case 'usun':
					$this->delete($product_id, $weight, $price);
					break;
                case 'usun_gratis':
                    $this->delete_gratis($_POST['gratis_id']);
                    break;
                case 'small_usun':
                    $this->delete($product_id, $weight, $price);
                    header('Location: '.$_POST['url']);
                    break;
                case 'small_usun_gratis':
                    $this->delete_gratis($_POST['gratis_id']);
                    header('Location: '.$_POST['url']);
                    break;
			}
            $this->check_gratis();
			
		}
		
	}

	function service(){
		
		$this->show_cart();
			
	}	
	function add_package($products){
        foreach ($products as $product) {
            $this->ad_to_cart($product[0], $product[1], $product[2], $product[3], $product[4], $product[5], $product[6], $product[7]);
        }
    }
    
    
	function ad_to_cart($product_id, $product_name, $url, $weight, $price, $photo){
		if (isset($_SESSION['cart']['products'][$product_id.'_'.$weight])){
			$_SESSION['cart']['products'][$product_id.'_'.$weight]['quantity']++;
		}
		else {
			$_SESSION['cart']['products'][$product_id.'_'.$weight]=Array('product_id' => $product_id, 'product_name' => $product_name, 'weight' => $weight, 'quantity' => 1, 'price' => $price, 'url' => $url, 'photo' => $photo);
		}
		
		if (isset($_SESSION['cart']['total_price'])){
			$_SESSION['cart']['total_price']+=$price;
		}
		else 
			$_SESSION['cart']['total_price']=$price;
		
		if (isset($_SESSION['cart']['total_quantity'])){
			$_SESSION['cart']['total_quantity']++;
		}
		else 
			$_SESSION['cart']['total_quantity']=1;

	}
	function add_gratis($product_id, $product_name, $url, $photo, $gratis_nr){
        $_SESSION['cart']['gratis'][]=Array('product_id' => $product_id, 'product_name' =>$product_name, 'url' => $url, 'photo' => $photo);
    }
    
    function change_quantity($product_id, $price, $weight, $quantity){
        $old_quantity=$_SESSION['cart']['products'][$product_id.'_'.$weight]['quantity'];

            $_SESSION['cart']['products'][$product_id.'_'.$weight]['quantity']=$quantity;
            $_SESSION['cart']['total_quantity']+=$quantity-$old_quantity;
            $_SESSION['cart']['total_price']+=($quantity-$old_quantity)*$price;
    }
    
	function subtract($product_id, $weight, $price){

		if (isset($_SESSION['cart']['products'][$product_id.'_'.$weight])){
			if($_SESSION['cart']['products'][$product_id.'_'.$weight]['quantity']>1){
				$_SESSION['cart']['products'][$product_id.'_'.$weight]['quantity']--;
				$_SESSION['cart']['total_quantity']--;
				$_SESSION['cart']['total_price']-=$price;
			}
			else 
				$this->delete($product_id, $weight, $price, $weight);
		//	$_SESSION['cart']['total_quantity']--;
		//	$_SESSION['cart']['total_price']-=$price;
		}
	}
	
	function delete($product_id, $weight, $price){
		if (isset($_SESSION['cart']['products'][$product_id.'_'.$weight])){
			$_SESSION['cart']['total_quantity']-=$_SESSION['cart']['products'][$product_id.'_'.$weight]['quantity'];
			$_SESSION['cart']['total_price']-=$price*$_SESSION['cart']['products'][$product_id.'_'.$weight]['quantity'];
			if (count($_SESSION['cart']['products'])==1){
				unset($_SESSION['cart']);
			}
			else {
				unset($_SESSION['cart']['products'][$product_id.'_'.$weight]);
			}
		}
	}
    function delete_gratis($id){
        if(count($_SESSION['cart']['gratis'])==1)
            unset($_SESSION['cart']['gratis']);
        else
            unset($_SESSION['cart']['gratis'][$id]);
    }
	

	function show_cart(){
		//show_tab($_SESSION['cart']);
			require(RP.'/templates/cart.php');
			$template = new cart_template();
			$path[]=Array('title' => 'Koszyk', 'link' => '');
			$template->content=$template->show_path($path);
			$template->content.=$template->show_title('Koszyk', 'cart.png');
        if(!empty($this->dialog)){
            $template->content.=$template->dialog_page('Nie możesz dodać gratisu.');
        }	
        else if(isset($_SESSION['cart'])){
			$db =new db;
		//	$supplies=$db->getRows('supplies', Array('supply_name', 'supply_cost'));
		//	$template->build_page($supplies);
			$template->build_page();				
		}
		else {
			$template->content.=$template->dialog_page('Jest tyle pysznych herbat, <br />a Twój koszyk jest pusty.');	
		}
        echo $template->show_page();
	}
    
    function check_gratis(){
        if(!isset($_SESSION['gratis_nr']))
            $_SESSION['gratis_nr']=0;
        $_SESSION['gratis_nr']=floor($_SESSION['cart']['total_price']/50)-count($_SESSION['cart']['gratis']);
    }
}
			
$module=new cart;
?>