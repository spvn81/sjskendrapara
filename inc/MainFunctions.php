<?php 
class MainFunctions{


    public function getMainMenu($db){
        $sql = "SELECT * FROM menu where page_link !='#'" ;
        return $db->query($sql);
    }


    public function getMainMenuOfSub($db){
        $sql = "SELECT * FROM menu where page_link ='#'" ;
        return $db->query($sql);
    }


    public function getSubMainMenu($menu_id,$db){
        $sql = "SELECT * FROM sub_menu where menu_id= $menu_id" ;
        return $db->query($sql);
    }


    public function getPageData($page_slug,$db){
        $sql = "SELECT * FROM pages where page_slug= '$page_slug'" ;
        return $db->query($sql);
    }




}




?>