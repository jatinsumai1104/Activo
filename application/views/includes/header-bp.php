<header class="app-header navbar">
    <button class="navbar-toggler sidebar-toggler d-lg-none mr-auto" type="button" data-toggle="sidebar-show">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">
        <img class="navbar-brand-full" src="../../assets/global/img/brand/logo.png" width="89" height="25" alt="CoreUI Logo">
<!--        <img class="navbar-brand-minimiFcazed img-responsive" style="width:235px;height:220px;background:url('../../assets/global/img/brand/logo1.jpg') -365px 0;" alt="Activo Logo">-->
    </a>
<!--    <button class="sidebar-minimizer brand-minimizer" type="button"><span class="navbar-toggler-icon"></span></button>-->
    <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button" data-toggle="sidebar-lg-show">
        <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="nav navbar-nav d-md-down-none">
        <li class="nav-item px-3">
            <a class="nav-link" href="">Dashboard</a>
        </li>
        <li class="nav-item px-3">
            <a class="nav-link" href="#">Settings</a>
        </li>
    </ul>
    <ul class="nav navbar-nav ml-auto">
        <div class="dropdown">
            <li class="nav-item d-md-down-none dropdown">
                
                <a class="dropdown-toggle" href="#" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:black;"><i class="icon-bell"></i></a>
               <?php
				foreach($notis as $noti){
					extract($noti);
					?>
                <div class="dropdown-menu" aria-labelledby="dropdownMenu">
                <label class="dropdown-item clearfix" for="">You made a request<br> which is still pending!!</label>
                    <div> <button type="button" class="btn btn-danger btn-rounder" style="margin-left:10px;"><?php echo $created_at ?></button></div>
                       
                </div>
                <?php
				}
					?>
            </li>
        </div>



        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                <button class="btn-outline-dark" style="border-radius:10px;margin:0 10px;padding:5px;"> <?php echo $this->session->userdata('user_email'); ?></button>
            </a>
            <div class="dropdown-menu dropdown-menu-right">


                <a class="dropdown-item" href="../../index.php/login/logout" style="background:black;color:white;">
                    <i class="fa fa-lock"></i> Logout</a>
            </div>
        </li>
    </ul>
    <!--
        <button class="navbar-toggler aside-menu-toggler d-md-down-none" type="button" data-toggle="aside-menu-lg-show">
            <span class="navbar-toggler-icon"></span>
        </button>
-->
<!--
    <button class="navbar-toggler aside-menu-toggler d-lg-none" type="button" data-toggle="aside-menu-show">
        <span class="navbar-toggler-icon"></span>
    </button>
-->
</header>