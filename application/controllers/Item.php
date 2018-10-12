<?php
class Item extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->this->model("Item_Model");
        $this->load->helper('url_helper');
        $this->load->library("session");
    }
    
    public function getItemData(){
        if(isset($_POST['requestItem'])){
            echo "hi";
            extract($_POST);
            $user_id = $this->session-userdata('user_id');
            $this->Item_Model->get_all_items();
        }
    }
}
?>