<?php
    class Item_Model extends CI_Model{
        public function __construct(){
            parent::__construct();
            $this->load->database();    
        }
        
        public function get_all_items(){
            $query = "SELECT * FROM item WHERE is_deleted=0";
            $result=$this->db->query($query);
            return $result;
            
        }
        
        public function delete_item($item_id){
            $query = "UPDATE item SET is_deleted = 1,deleted_at=now() WHERE item_id = $item_id";
            $this->db->query($query);
            
        }
        
    
        
    }
?>