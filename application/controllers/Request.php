<?php
class Request extends CI_Controller{
   public function __construct(){
      parent::__construct();
      $this->load->model('Request_Model');
	   $this->load->model('Login_model');
      $this->load->model('Item_Model');
      $this->load->library('session');
      $this->load->helper('url_helper');

   }

	public function loadPage(){
      $data['current_user']=$this->session->userdata('user_role_id');
      $user=$this->Login_model->getUser('user_id',$this->session->userdata('user_id'));
      $data['user']=$user->row_array();
      $data['title']="Manage Requests || Activo";
      echo $this->session->userdata("user_id");
      $data['page']="Request";
      if($this->session->userdata('user_role_id')==4 || $this->session->userdata('user_role_id')==5)
        $user_details=$this->Request_Model->getUserDetails("student",$this->session->userdata('user_id'));
      else{
        $user_details=$this->Request_Model->getUserDetails("staff",$this->session->userdata('user_id'));
        $notis=$this->Login_model->getRequestsForNotifications($this->session->userdata('user_id'));
        $data['notis']=$notis;
        $count=$this->Login_model->getCountForPendingNotification($this->session->userdata('user_id'));
        $data['count']=$count;

        $requests=$this->Request_Model->get_all_request_items();
        $requests=$requests->result_array();
        $data['requests']=$requests;

        $data['user_details']=$user_details->row_array();
        $this->load->view("includes/header.php",$data);
		$this->load->view("includes/header-bp.php",$data);
		$this->load->view("includes/left-sidebar.php",$data);
		$this->load->view("includes/breadcrumb.php",$data);
		$this->load->view("pages/manage_request",$data);
		$this->load->view("includes/footer.php",$data);
	  }
	}

   public function loadAddRequest(){
     $data['current_user']=$this->session->userdata('user_role_id');
	   $user=$this->Login_model->getUser('user_id',$this->session->userdata('user_id'));
	$data['user']=$user->row_array();
       $data['title']="Request Item || Activo";
	$data['page']="Request";

       $notis=$this->Login_model->getRequestsForNotifications($this->session->userdata('user_id'));
$data['notis']=$notis;
	   $count=$this->Login_model->getCountForPendingNotification($this->session->userdata('user_id'));
$data['count']=$count;

       $data['items'] = $this->Item_Model->get_all_items();
       	$this->load->view("includes/header.php",$data);
        $this->load->view("includes/header-bp.php",$data);
        $this->load->view("includes/left-sidebar.php",$data);
        $this->load->view("includes/breadcrumb.php",$data);
		$this->load->view("pages/request-item.php",$data);
        $this->load->view("includes/footer.php",$data);
   }

	public function addRequest(){
    $data['current_user']=$this->session->userdata('user_role_id');

       $result = $this->Request_Model->get_all_request_items();
       while($row = $result->row_array()){
          $sub_array = array();

          $sub_array[] = $row["user_email"];
          $sub_array[] = $row["item_name"];
          $sub_array[] = $row["quantity"];
          $sub_array[] = $row["is_returnable"];
          $sub_array[] = $row["is_fullfilled"];

       }

$notis=$this->Login_model->getRequestsForNotifications($this->session->userdata('user_id'));
$data['notis']=$notis;

		 $count=$this->Login_model->getCountForPendingNotification($this->session->userdata('user_id'));
$data['count']=$count;
       $data["title"] = "Manage requests || Activo";



		$this->load->view("includes/header.php",$data);
        $this->load->view("includes/header-bp.php",$data);
        $this->load->view("includes/left-sidebar.php",$data);
        $this->load->view("includes/breadcrumb.php",$data);
		$this->load->view("pages/manage_request.php",$data);
        $this->load->view("includes/footer.php",$data);

   }

   public function addPage(){
     $data['current_user']=$this->session->userdata('user_role_id');

     $d =  $this->input->post("item_name[]");
    $d1 = $this->input->post("quantity[]");
       var_dump($d);
       var_dump($d1);
   }

	public function loadHistory(){
      $data['current_user']=$this->session->userdata('user_role_id');
      $notis=$this->Login_model->getRequestsForNotifications($this->session->userdata('user_id'));
      $data['notis']=$notis;
      $data["title"] = "History || Activo";
      $count=$this->Login_model->getCountForPendingNotification($this->session->userdata('user_id'));
      $data['count']=$count;

      $this->load->view("includes/header.php",$data);
      $this->load->view("includes/header-bp.php",$data);
      $this->load->view("includes/left-sidebar.php",$data);
      $this->load->view("includes/breadcrumb.php",$data);
      $this->load->view("pages/request_history.php",$data);
      $this->load->view("includes/footer.php",$data);

	}
}
?>
