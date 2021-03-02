<?php

class gratis {
    
    function service(){
        global $db;
        $this->db=$db;
        $this->show();
        
        
    }
    
    function show(){
        $options['filter']='is_gratis=1';
        $options['join_tab'][]=Array('INNER JOIN', 'products', 'categories', 'category_id');
        $products=$this->db->getRows('products', Array('product_id', 'product_name', 'product_alias', 'category_alias', 'category_name', 'is_gratis'), $options);
        require(RP.'/templates/category.php');
        $subcategories[0]='Wszystkie';
       $template = new category_template;
       $template->content=$template->show_path(Array(Array('title'=> 'Gratisowe herbaty', 'link' => '')));
       $template->content.=$template->show_title('Gratisowe herbaty', 'tea.png');
       $products_groups[0]=$products;
       $category=Array('category_name' => 'Gratisowe herbaty', 'category_alias' => 'gratis');
       $template->content.=$template->build_page($category, $products_groups, Array(null));
       echo $template->show_page();
       
    }
    
    
   
    
    
}
$module = new gratis; 