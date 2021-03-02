<?php							

	class orders{
		
		public $db;
		
		function service(){
			
		}
		
		function __construct(){
			global $db;
			$this->db=$db;
			$this->id=check($_GET['edit']);
			$customer_id=$db->getRow('shamanshop_5.order', Array('order_id', 'customer_id'), $this->id);
			if ($customer_id['customer_id']!=$_SESSION['user_id']){
				DIE('Odmowa dostepu');
			}
			$options['filter']='order_id='.$this->id;
			$options['join_tab'][]=Array('LEFT OUTER', 'order_products', 'products', 'product_id');
			
			$order_products=$db->getrows('order_products', Array('products.product_id', 'product_name', 'order_product_price'), $options);
			show_tab($order_products);
		}
		
	}
$module=new orders;

?>