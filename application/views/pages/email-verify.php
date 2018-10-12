<div class="app-body">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="caption v-middle text-center">
                    <h1 class="cd-headline clip" style="color:black;">
                        <span class="blc"></span>
                        <span class="cd-words-wrapper" style="height:150px;">
                            <b class="is-visible">Register.</b>
                            <!--                            <b>Activo.</b>-->
                            <b><img src="../../assets/global/img/brand/logo.png" alt="LOGO" height="100px"></b>
                        </span>
                    </h1>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="registerEmail" method="post">
                    <div class="card mx-4">
                        <div class="card-body p-4">
                            <h1>Enter Email to Register!</h1>
                            <p class="text-muted">Create your account</p>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon-user"></i>
                                    </span>
                                </div>

                                <input class="form-control" type="email" name="email" placeholder="Enter your email">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="cui-briefcase" aria-hidden="true"></i>
                                    </span>
                                </div>
                                <select name="user_role_id" class="form-control" id="user_role_id" data-placeholder="Select the User Role">
                                    <?php
						foreach($role->result_array() as $roles){
							extract($roles);
					?>
                                    <option value="<?php echo $user_role_id;?>">
                                        <?php echo $user_role_name; ?>
                                    </option>
                                    <?php
						}
					?>
                                </select>


                            </div>


                            <div class="input-group mb-3">

                                <button type="submit" class="btn btn-block btn-success" name="registerEmail">
                                    REGISTER
                                </button>


                            </div>



                            <!--
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="icon-lock"></i>
                  </span>
                </div>
                <input class="form-control" type="password" placeholder="Password">
              </div>
              <div class="input-group mb-4">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="icon-lock"></i>
                  </span>
                </div>
                <input class="form-control" type="password" placeholder="Repeat password">
              </div>
-->


                            <!--
            <div class="card-footer p-4">
              <div class="row">
                <div class="col-6">
                  <button class="btn btn-block btn-facebook" type="button">
                    <span>facebook</span>
                  </button>
                </div>
                <div class="col-6">
                  <button class="btn btn-block btn-twitter" type="button">
                    <span>twitter</span>
                  </button>
                </div>
              </div>
            </div>
 -->
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
