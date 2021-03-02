<?php										


class product {
	
	public $product_alias;
	
	function __construct(){
		global $db;
		$this->db=$db;
		$this->product_alias=check($_GET['product']);
		$this->category_alias=check($_GET['category']);
	//	$this->path = $path;
	}
	
	function service(){
		if(isset($_POST['review'])){
			$this->add_review();
		}
		$this->show();
	}
	
	function show(){
	    
		$options['join_tab'][] = Array('LEFT OUTER', 'products', 'categories', 'category_id');
        $options['join_tab'][] = Array('LEFT OUTER', 'products', 'dict_units', 'unit_id');
        $product=Array(NULL);
		$product=$this->db->getRow('products', Array('product_alias', 'products.product_id', 'product_name', 'product_description', 'tab1', 'tab2', 'tab3', 'category_name', 'active_tab_id', 'unit_value', 'is_gratis'), $this->product_alias, $options );
        
		
		//
		if (!empty($product)){
		    $join_tab[]=Array("LEFT OUTER", 'reviews', 'customers','customer_id');
			$reviews=$this->db->getRows('reviews', Array('review_id', 'review_rate', 'review_text', 'customer_name', 'customer_surname'),  Array('filter' => ' product_id='.$product['product_id'].' AND review_status_id=1', 'join_tab' => $join_tab));
			$weights=$this->db->getRows('product_weights', Array('product_weight_id', 'weight', 'price'), Array('filter' => 'product_id='.$product['product_id']));

			require(RP.'/templates/product.php');
			$template = new product_template();
			$path[]=Array('title' => 'Herbaty '.$product['category_name'], 'link' => '?go=herbaty&category='.$this->category_alias);
			$path[]=Array('title' => $product['product_name'],'link' => '');
			$template->content=$template->show_path($path);
			$template->build_page($product, $weights, $reviews);
			echo $template->show_page();
		}
		else {
		   
			require(RP.'/modules/content/bad_site.php');
			$bad_site = new bad_site;
			return($bad_site->show());
		}
	}
	function add_review(){
		$options['join_tab'][] = Array('LEFT JOIN', 'products', 'categories', 'category_id');
		$product=$this->db->getRow('products', Array('product_alias', 'product_id', 'product_name'), $this->product_alias, $options );
		$product_id=check_numeric($_POST['pid']);
		$review_text=check($_POST['formularz-4']);
		$review_rate=check_numeric($_POST['rate']);

		require(RP.'/templates/template_base_class.php');
		$template=new template;
		$path[]=Array('title' => 'Herbaty '.$product['category_name'], 'link' => '?go=herbaty&category='.$this->category_alias);
		$path[]=Array('title' => $product['product_name'],'link' => '');
		$template->content=$template->show_path($path);
		$template->content.=$template->show_title($product['product_name'], 'tea.png');
		$template->content.='<a href="" class="extra_button" style="margin:0">Powrót</a>';
		$query = 'SELECT order_product_id, customer_id
					FROM order_products
					LEFT JOIN shamanshop_5.order USING ( order_id ) WHERE customer_id='.$_SESSION['customer']['customer_id'].' AND product_id='.$product_id;
		$row=mysql_query($query);
		if(mysql_num_rows($row)<1){
			$template->content.=$template->dialog_page('Wyglda na to, że nie zamówiłeś jeszcze tego produktu, więc nie mogę przyjąć Twojej recenzji');
		}
		else{
			$template->content.=$template->dialog_page('Twoja recenzja została dodana, lecz musi być jeszcze zweryfikowana.');
			$this->db->add('reviews', Array('customer_id', 'product_id', 'review_text', 'review_rate'), Array($_SESSION['customer']['customer_id'], $product_id, $review_text, $review_rate));
		}
			echo $template->show_page();
			
	}
}

?>