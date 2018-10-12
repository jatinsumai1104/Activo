<?php
class Purchase extends CI_Controller{
    public function __constructor(){
        parent::__construct();
     $this->load->model('Purchase_Model');
      $this->load->library('session');
      $this->load->helper('url_helper');
    }
    
    public function getPurchaseData(){
        if(isset($_POST['purchaseData'])){
            extract($_POST);
            $user_id = $this->session-userdata('user_id');
            $data['purchase_data'] =  $this->Purchase_Model->get_all_items();
            $this->load->view("xyz", $data);
        }
    }
    
    
}

?>
