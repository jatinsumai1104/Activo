<html lang="en">

<head>
    <base href="#">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>
        <?php echo $title ?>
    </title>
    <!-- Icons-->
<!--    <link rel="stylesheet" href="assets/global/plugins/bootstrap/css/bootstrap.min.css">-->
    <link href="assets/global/icons/coreui-icons-master/css/coreui-icons.css" rel="stylesheet">
    <link href="assets/global/icons/flag-icon-css-master/css/flag-icon.min.css" rel="stylesheet">
    <link href="assets/global/icons/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/global/icons/simple-line-icons-master/css/simple-line-icons.css" rel="stylesheet">

    <!--    Page Level Plugins-->
    <link rel="stylesheet" href="assets/vendors/select2/css/select2.min.css">
    <!--    <link rel="stylesheet" href="assets/vendors/select2/css/select2-bootstrap.min.css">-->
    <link rel="stylesheet" href="assets/vendors/datatables/datatables.min.css">
    <!-- Main styles for this application-->
    <link href="assets/css/style.min.css" rel="stylesheet">
    <link href="assets/vendors/pace-progress/css/pace.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/vendors/text-heading/Animated-Type-Heading.css">
</head>



        <!--
        <div class="caption v-middle text-center">
            <h1 class="cd-headline clip">
                <span class="blc"></span>
                <span class="cd-words-wrapper">
                    <b class="is-visible">Activo.</b>
                    <b>Asset Management.</b>
                    <b><img src="logo.png" alt="LOGO" height="100px"></b>
                </span>
            </h1>
        </div>
-->


        <?php 
                 echo validation_errors();       /*FOR PRINTING VALIDATION ERRORS*/
        $attributes = array(
            'class'=>'login_form',
            'id' => 'login_id'
        );
                
             ?>
<body class="app flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card-group">
                    <div class="card p-4">
                        <form action="index.php/login/verify" method="post">
                            <div class="card-body">
								<h2 style="display:inline">Act</h2><h2 style="display:inline;color:#1B8EB7">ivo</h2><sub>The <p style="display:inline;color:#1B8EB7">Asset </p>Management System</sub><br><br>
                                <p  style="display:inline;color:#1B8EB7"><b>Sign In</b> </p> <p  style="display:inline;">to your account</p><br>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="icon-user"></i>
                                        </span>
                                    </div>
                                    <input class="form-control" type="text" placeholder="Username" name="user_email">
                                </div>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="icon-lock"></i>
                                        </span>
                                    </div>
                                    <input class="form-control" type="password" placeholder="Password" name="user_password">
                                </div>
                                <div class="custom-control custom-checkbox" style="margin-top:10px;">
                                            <input type="checkbox" name="stay_signed_in" value="true" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">Stay Signed In</label>
                                        </div>
                                <div class="row">
                                     
                                    <div class="col-6">
                                        <button class="btn btn-primary px-4" type="submit" name="login">Login</button>
                                        <!--
<label style="margin-top:15px;"><input type="checkbox" name="stay_signed_in" value="true">Stay Signed in!</label>
-->
                                      
                                    </div>

                                    <div class="col-6 text-right">
                                        <button class="btn btn-light px-4" type="button">Forgot password?</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="card text-white bg-primary py-5 d-md-down-none" style="width:44%">
                        <div class="card-body text-center">
                            <div>
                                <h2>Sign up</h2>
                                <p>Do you have an Account?
                                    Click below to Create an Account!!</p><br><br>
                                <a type="button" class="btn btn-primary btn-light" href="index.php/Login/loadRegister">Register Now!</a>

                                <!--                  <a  type="button" class="btn btn-light px-4 " href="index.php/Login/loadRegister">Register Now!</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- CoreUI and necessary plugins-->
    <script src="assets/global/js/jquery.min.js"></script>
    <script src="assets/global/js/bootstrap-min.js"></script>
    <script src="assets/global/js/popper.min.js"></script>
    <script src="assets/global/js/pace.min.js"></script>
    <script src="assets/global/js/perfect-scrollbar.min.js"></script>
    <script src="assets/global/js/coreui.min.js"></script>
    <!-- Plugins and scripts required by this view-->
    <script src="assets/global/js/charts.js"></script>
    <script src="assets/global/js/custom-tooltips.js"></script>
    <script src="assets/vendors/select2/js/select2.full.min.js"></script>
    <script src="assets/vendors/datatables/datatables.min.js"></script>
    <script src="assets/global/js/main.js"></script>

</body>
<!--END OF BODY which has been started in header.php-->

</html>
