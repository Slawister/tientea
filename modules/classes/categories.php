<?php								


class categories {

	function service(){
		
		if (empty($_GET['product'])){
			$this->show_category();		
		}
		else {
			require(RP.'/modules/classes/products.php');
			$product = new product();
			echo $product->service();
		}
	}
	
	function __construct(){
		global $go;
		global $db;
		$this->db=$db;
		$this->go=$go;
//		$this->categories=$this->db->getRows('categories',Array('category_id', 'category_name', 'image', 'category_alias'),'', '');
	}
	
	function show_category() {
			$limit = 6;
//				if (isset($_GET['category'])) 
				$category_alias=check($_GET['category']);
//				else $category='';
			
			$category=Array('null');
			$join_tab[]=Array('LEFT OUTER', 'C', 'subcategories', 'category_id');
			$category=$this->db->getRow('categories C', Array('category_alias', 'C.category_id', 'category_name', 'category_isTea', 'category_description'), $category_alias);
			if (count($category)>1){
			/*	if (!empty($_GET['page']) && !is_numeric($_GET['page'])) {     //Obsługa stron 
					require(RP.'/modules/bad_site.php');
					$bad_site = new bad_site;
					echo $bad_site->show();
					DIE();
				}
				if (empty($_GET['page'])) $start=0;
				else $start=($_GET['page']-1)*$limit;
				*/
				//$options['filter']='category_id=\''.$category['category_id'].'\' LIMIT '.$start.','.$limit;	 //Obsługa stron

				// Osbługa stron
				/*$tmp=$this->db->getRow('products', Array('category_id','count(*)'), $category['category_id']);
				if ($tmp['count(*)'] > $limit){
					$pages= ceil($tmp['count(*)']/$limit);
				}
				else $pages=0;
				$this->pages=$pages;*/
				
/*
				$options['filter']='P.category_id='.$category['category_id'];
				$options['join_tab'][]=Array('LEFT OUTER', 'P', 'subcategories', 'subcategory_id');
				$products=$this->db->getRows('products P', Array('P.category_id', 'product_name', 'photo', 'product_alias', 'P.subcategory_id', 'subcategory_name', 'weight'), $options);
*/
				$query='
					FROM products P
					LEFT JOIN subcategories ON P.subcategory_id = subcategories.subcategory_id
					LEFT OUTER JOIN product_weights PW ON P.product_id = PW.product_id
					AND weight =50
					WHERE P.category_id =\''.$category['category_id'].'\' ORDER BY product_order';
				$products=$this->db->customGetRows(Array('P.category_id', 'product_name', 'product_alias', 'P.subcategory_id', 'subcategory_name', 'weight', 'price', 'is_gratis'),$query);

                
				require(RP.'/templates/category.php');
                $isTea='';
                if($category['category_isTea']){
                    $isTea="Herbaty ";
                }
				$template = new category_template;
				$template->content=$template->show_path(Array(Array('title'=> $isTea.$category['category_name'], 'link' => '')));
				$template->content.=$template->show_title($isTea.$category['category_name'], 'tea.png');
				if(count($products)>1){
					$products_groups='';
					$subcategories[0]='Wszystkie';
					foreach($products as $product){
					    $product['category_alias']=$category['category_alias'];
						$subcategories[$product['P.subcategory_id']]=$product['subcategory_name'];
						$products_groups[0][]=$product;
						if ($product['P.subcategory_id']>0)
						$products_groups[$product['P.subcategory_id']][]=$product;
					}
				
					$template->content.=$template->build_page($category, $products_groups, $subcategories);
					echo $template->show_page();
				}
				else{
					$template->content.=$template->dialog_page('Herbata w tej kategorii dopiero się zbiera');
					echo $template->show_page();
				}
				
			}
			else {
				echo "brak strony";
			}
	}
}


$module=new categories;
?>