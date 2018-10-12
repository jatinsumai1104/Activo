<?php
class Login_model extends CI_Model{

    //function to load the database
    //similar to view method of defalut contoller
    public function __construct()
    {
        $this->load->database();
    }
	
	public function getUserRole(){
		$query = "SELECT * from user_roles where user_role_id != 1";
		return $this->db->query($query);
	}
	
	public function getUser($condn,$key){
		$query="select * from users where $condn='$key'";
		return $this->db->query($query);
	}
	
	public function insert($table,$data){
		date_default_timezone_set("Asia/Kolkata");
        $time = time();
        $created_at = date("Y-m-d H:i:s", $time);
        $data_meta = array(
            'created_at'=>$created_at,
			'updated_at'=>$created_at,
            'is_deleted'=> 0
        );
        $data  = array_merge($data,$data_meta);
		$this->db->insert($table,$data);
	}
	
	public function insertWhere($data,$id){
$this->db->where('user_id', $id);
$this->db->update('users', $data);
	}
	
	public function getRequestsForNotifications($id){
		$query="select * from request where request.user_id=$id and is_new=0";
		$query=$this->db->query($query);
		return $query->result_array();
	}
	
	public function getCountForPendingNotification($id){
		$query="select count(*) from request where user_id=$id and request_status=0";
		$query=$this->db->query($query);
		$query=$query->row_array();
		return $query;
	}
	public function getUserInfo($id,$role_id){
		if($role_id==2)
		$query="select * from staff where staff.user_id=$id";
		
		else if($role_id==4 || $role_id==6)
		$query="select * from student where student.user_id=$id";
		
		$query=$this->db->query($query);
		return $query->row_array();
	}
	
	public function getRequests($id){
		$query="select count(*) from request where user_id=$id";
		$query=$this->db->query($query);
		$query=$query->row_array();
		return $query;
	}
	
	public function getRequestsPending($id){
		$query="select count(*) from request where user_id=$id and request_status=0";
		$query=$this->db->query($query);
		$query=$query->row_array();
		return $query;
	}
	
	public function getRequestsApproved($id){
		$query="select count(*) from request where user_id=$id and request_status=2";
		$query=$this->db->query($query);
		$query=$query->row_array();
		return $query;
	}
	public function getRequestsPApproved($id){
		$query="select count(*) from request where user_id=$id and request_status=1";
		$query=$this->db->query($query);
		$query=$query->row_array();
		return $query;
	}
	public function updateUser($pass,$value,$email){
		$query="UPDATE users set user_password='$pass',is_email_verified=$value where user_email='$email'";
		$this->db->query($query);
	}
}
?>