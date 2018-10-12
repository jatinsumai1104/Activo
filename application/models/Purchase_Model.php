<?php
class Purchase_Model extends CI_Model{
public function __construct(){
   parent::__construct();
    $this->load->database(); 
}

public function get_all_purchases(){
    $query = "SELECT * FROM puchase WHERE is_deleted=0";
            $result=$this->db->query($query);
            return $result;
}
public function delete_purchase($purchase_id){
            $query = "UPDATE purchase SET is_deleted = 1,deleted_at=now() WHERE item_id = $purchase_id";
            $this->db->query($query);
            
        }

?>