<?php
class Excel_model extends CI_Model{
   public function __construct(){
      parent::__construct();
      $this->load->database();
   }
   
   public function check(){
      echo "Hello";
   }
   public function addData($file){
   
      foreach($file->rows() as $r){
         echo "you are inside addData";
         $query = "INSERT INTO store (item_id,item_quantity_available,item_quantity_total) VALUE('".$r[0]."','".$r[1]."','".$r[2]."','".$r[3]."')";
         $this->db->query($query);
      }
   }

}

//
//         echo $_FILES["form-file"]["name"].$_FILES["form-file"]["tmp_name"].$_FILES["form-file"]["size"].$_FILES["form-file"]["type"];
?>
