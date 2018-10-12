<?php
   class Request_Model extends CI_Model{
      
      public function __construct(){
         $this->load->database();
          $this->load->library("session");
      }
      
      //function to get all the values from the db
      
      public function get_all_request_items(){
         $query = "SELECT request_item.request_item_id,users.user_email,item.item_name,request_item.quantity,item.is_returnable,request_item.is_fullfilled FROM request INNER JOIN request_item ON request.request_id = request_item.request_id INNER JOIN users ON request.user_id = users.user_id INNER JOIN item ON request_item.item_id  = item.item_id AND request.is_deleted = 0";
         
         $result = $this->db->query($query);
         
         return $result;
      }
      
      // to search for queries with given values
      
      public function get_all_request_items_search($string){
         $query = "SELECT users.user_email,item.item_name,request_item.quantity,item.is_returnable,request_item.is_fullfilled  FROM request INNER JOIN request_item ON request.request_id = request_item.request_id INNER JOIN users ON request.user_id = users.user_id INNER JOIN item ON request_item.item_id  = item.item_id HAVING request_item.is_deleted = 0 AND users.user_email like '%".$string."%'";
         $result = $this->db->query($query);
         return $result;
      }
      
      //Function to get total number records
      
      public function get_total_number(){
         $query =  "SELECT users.user_email,item.item_name,request_item.quantity,item.is_returnable,request_item.is_fullfilled  FROM request INNER JOIN request_item ON request.request_id = request_item.request_id INNER JOIN users ON request.user_id = users.user_id INNER JOIN item ON request_item.item_id  = item.item_id AND request.is_deleted = 0";
         $result = $this->db->query($query);
         return $result->nuw_rows;
      }
      
      //Function to get values with limit
//      public function get_all_request_with_limit($start,$limit,$order_by=$columns[0],$order="ASC"){
//         
//         $query = "SELECT * FROM request INNER JOIN request_item ON request.request_id = request_item.request_id INNER JOIN users ON request.user_id = users.user_id INNER JOIN item ON request_item.item_id  = item.item_id AND request.is_deleted = 0 LIMIT ".$start.",".$limit." ORDER BY ".$order_by." ".$order; 
//         
//         $result = $this->db->query($query);
//         return $result;
//      }
      //Function to set the status
      public function set_status($request_item_id){
         $query = "UPDATE request_item SET is_fullfilled = 1 WHERE request_item_id = $request_item_id";
         
         $this->db->query($query);
         
         $query = "SELECT * FROM request_item WHERE request_item = $request_item";
         
         $result = $this->db->query($query);
         
         $result = $result->row_array();
         
         set_status_of_request($result["request_id"],$request_item_id);
      }
      
      public function set_status_of_request($request_item_id,$request_id){
         
         $query1 = "SELECT * FROM request_item WHERE request = $request_id ";
         
         $result1 = $this->db->query($query1);
         
         $num = $result1->num_rows;
         while($row = $result->row_array()){
               if($row["is_fullfilled"]==1){
                  $num--;
               }   
         }
         
         if($row == 0){
            $query = "UPDATE request SET request_status = 2 WHERE request_id = $request_id";
         }else{
         
         if($num < $result1->num_rows){
            $query = "UPDATE request SET request_status = 1 WHERE request_id = $request_id";
         }
      }
      
      $this->db->query($query);
      }
       
	
	  public function getUserDetails($table="staff",$id){
		$query="select * from $table where $table.".$table."_id=$id";
		  return $this->db->query($query);
	  }
	   public function insert($table,$data){
		   date_default_timezone_set("Asia/Kolkata");
        $t=time();
        $created_at = date("Y-m-d H:i:s",$t);
           
        $meta_data=array(
        'created_at'=>$created_at,
        'is_deleted'=>0
        );
        $data=array_merge($data,$meta_data);
		
         $this->db->insert($table,$data);
        return  $this->db->insert_id();
	   }
       
       public function add_request($d,$d1){
          $user_id = $this->session->userdata("user_id");
           $i=0;
           
               $query = "INSERT INTO request (user_id,request_status,is_news) VALUES ($user_id,0,1)";
           
           $request_id = $this->db->insert_id();
           while($i<sizeof($d)){
           $query = "INSERT INTO request_item (request_id,item_id,quantity) VALUES ($request_id,$d[$i],$d1[$i])";
           $this->db->query($query);
               $i++;
           }
       }
      
       
       
      
   }
?>