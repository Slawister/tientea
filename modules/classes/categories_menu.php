<?php

class categories_menu {
	
	function __construct(){
		global $go;
		global $db;
		$this->go=$go;
		$this->categories=$db->getRows('categories',Array('category_id', 'category_name', 'category_alias'));
	}
	
	function export_styles(){
        $out='<style type="text/css">';
        foreach ($this->categories as $category) {
            $out.='a.'.$category['category_alias'].':hover {
                background:url(/img/kategorie/'.$category['category_alias'].'_h.png) top left no-repeat;
                }
                a.'.$category['category_alias'].'{
                background:url(/img/kategorie/'.$category['category_alias'].'.png) top left no-repeat;
                }';
        }
        $out.='a.gratisy{
                background:url(/img/kategorie/choose_gratis.png) top left no-repeat;
                }
                a.gratisy:hover {
                 background:url(/img/kategorie/choose_gratis_h.png) top left no-repeat;
                }';
        $out.='</style>';
        return($out);
    }
	function show_horizontal(){
		
		$out = '<ul>';
		foreach($this->categories as $category){
			$out .= '<li><a class="'.$category['category_alias'].' h_menu_item ';
			if (!empty($_GET['category']) && $_GET['category']==$category['category_alias'])
				$out.='h_menu_active';
			$out.='" href="?go=herbaty&category='.$category['category_alias'].'" >';
			$out .= $category['category_name'];
			$out .= '</a></li>';
		}
		$out .= '<li style="clear:both"></li></ul>';
        //<img  style="vertical-align: middle;" src="'.HTTP_ADDRESS.'/img/kategorie/'.$category['category_alias'].'.png" />
		return $out;
	}
	
	function show_vertical() {
		$out= '<ul><li class="v_menu_root">Herbaty</li>';
		
		foreach($this->categories as $category){
			$out .= '<li><a  class="v_menu';
			if ($_GET['category']==$category['category_alias']){
				$out.=' active';
			}
			$out.= '" href="?go=herbaty&category='.$category['category_alias'].'">';
			$out .= $category['category_name'];
			$out .= '</a></li>';
		}
		
		return $out;
	}
	
	function show_in_footer(){
		$out='';
		$out.='<ul>';
		foreach($this->categories as $category){
			$out .= '<li><a ref="?go=herbaty&category='.$category['category_alias'].'">';
			$out .= 'Herbaty '.$category['category_name'];
			$out .= '</a></li>';
		}	
		$out.='</ul>';
		return($out);
	}

}