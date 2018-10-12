<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Login_model");
		$this->load->library("encryption");
		$this->load->helper("form");
		  $this->load->helper('url_helper');
		  $this->load->library("session");
		$this->load->helper("cookie");
	}

	public function index(){
		 if(isset($_COOKIE["Activo_User"])){
            $user_id = $this->encryption->decrypt($_COOKIE["Activo_User"]);
            //echo $user_id;
            $result_array = $this->Login_model->getUser('user_id',$user_id);
            if($result_array){
                $row_array = $result_array->row_array();
                $this->setSession($row_array);
				if($row_array['user_role_id'] == 1){
                    echo "ADMIN WORK HERE!";
                } elseif ($row_array['user_role_id'] == 4 || $row_array['user_role_id'] == 5 && $row_array['is_fully_registered']!=0){

                        header("Location: index.php/dashboard/show") ;
			}
			}


		 }else
			$data['title']="Login ||  Activo";
		$this->load->view("pages/login2");
	 }

	public function logout(){
		$cookie_name = "Activo_User";
        $user_id_to_logout = $_SESSION['user_id'];
        $encrypt_id = $this->encryption->encrypt($user_id_to_logout);
        $cookie_content = $encrypt_id;
        $cookie_time = time() - 86400 * 30;
        $path = "/";
        setcookie($cookie_name, $cookie_content, $cookie_time, $path);

		$arr=array('user_id','user_role_id','user_email');
       $this->session->unset_userdata('user_id');
        session_destroy();

        header("Location: ../../");
	}

	public function verify(){
        if(isset($_POST["login"])){
			extract($_POST);
			$user=$this->Login_model->getUser("user_email",$user_email);
			$user=$user->row_array();

			if($user){
			if(password_verify($user_password,$user['user_password'])){
				if($user['user_role_id']==1)
					echo "ADMIN WORK HERE";
				else {
					if($user['is_fully_registered']==0){
						$url="../registration/show";
					}
					else
						//if fully registered show the profile of the user depending upon the user
						$url="../dashboard/show";
				}
				$this->setSession($user);



				if($this->input->post("stay_signed_in")){

					$cookie_name="Activo_User";
					$user_id=$user['user_id'];
					$cookie_content=$this->encryption->encrypt($user_id);
					$cookie_time=time()+ 86400 * 7;
					$cookie_path="/";
					setcookie($cookie_name,$cookie_content,$cookie_time,$cookie_path);

				}
				else{

					$cookie_name="Activo_User";
					$user_id=$user['user_id'];
					$cookie_content=$this->encryption->encrypt($user_id);
					$cookie_time=time()+ 3600;
					$cookie_path="/";
					setcookie($cookie_name,$cookie_content,$cookie_time,$cookie_path);
				}
			}//end of main if
			else{
				$_SESSION['status']="FAILURE";
				$url="../..";
			}
		}//end of super if
			else{
				$url="../..";
			}
		}
		header("Location: $url");

	}//end of verify here!!
	public function loadRegister(){
		$roles = $this->Login_model->getUserRole();
		$data['role'] = $roles;
		$data['title']="Register || Activo";
		$data['page']="Register";
		$this->load->view("includes/header",$data);
        $this->load->view("pages/email-verify",$data);
        $this->load->view("includes/footer",$data);
	}

	private function setSession($user){
		$datas=array(
		'user_id' => $user['user_id'],
		'user_email' => $user['user_email'],
			'user_role_id' => $user['user_role_id']
		);
		$this->session->set_userdata($datas);
	}

	public function registerEmail(){
		if(isset($_POST['registerEmail'])){
			extract($_POST);
			$plain_text_email = "$email";
        $ciphertext_email= $this->encryption->encrypt($plain_text_email);
			$data=array(
			'user_email'=>$email,
			'user_role_id'=>$user_role_id
			);
			$this->Login_model->insert("users",$data);
        require_once("Mailer.php");
        $mailer = new Mailer();
        $user_email = "$email";
        $subject = "Activo Account Confirmation";

        $base_url_link = base_url() . "index.php/login/loadPassword?XSRS=$ciphertext_email";
        $body = "
        <div style='font-family:Roboto; font-size:16px; max-width: 600px; line-height: 21px;'>
            <h4>Hello,</h4>
            <h3>Your Activo Account is Ready.</h3>
            <br>
            <a style='text-decoration:none; color:#fff; background-color:#348eda;border:solid #348eda; border-width:2px 10px; line-height:2;font-weight:bold; text-align:center; display:inline-block;border-radius:4px' href='$base_url_link'>
            Activate your account </a>
            <br>
            <h3>Thank you for Registering.</h3>
            <br>
            <br>
            <h4>Sincerely,</h4>
            <h5>The Activo Team.</h5>
            </div>";

        $boolean=$mailer->send_mail($user_email, $body, $subject);
			if($boolean){
				$_SESSION['status']="SUCCESSMAIL";
				header("Location: ../..");
			}
			else
				$_SESSION['status']="FAILUREMAIL";
		}
	}

	public function loadPassword(){
		 $user_email = $_GET['XSRS']; //A KEYWORD USED FOR EMAIL FOR SECURITY PURPOSE

        $user_email = str_replace(" ","+",$user_email);
        $decrypted_email = $this->encryption->decrypt($user_email);

		$data['title']="Change Password || Activo";
		$data['page']="Change Password";
		$datas=array(

		'user_email' => $decrypted_email,

		);
		$this->session->set_userdata($datas);
		$user=$this->Login_model->getUser("user_email",$decrypted_email);
		$user=$user->row_array();
		$this->setSession($user);
        $this->load->view("includes/header");
		$this->load->view("pages/password-verify");
        $this->load->view("includes/footer");
	}

	public function setPassword(){
		if(isset($_POST['verifyPassword'])){

			extract($_POST);
			if($password==$repassword){
				 $hashedpass =  password_hash("$password", PASSWORD_BCRYPT);
					$this->Login_model->updateUser($hashedpass,1,$this->session->userdata('user_email'));
				header("Location: ../..");
			}
			else
				$_SESSION['status']="FAILSETPASSWORD";
			}
		}


}//end of login class here!!

?>
