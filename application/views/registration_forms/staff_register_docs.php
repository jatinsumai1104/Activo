<body class="app flex-row align-items-center">
   <form action="../../index.php/Staff/addData" method="post">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mx-4">
                    <div class="card-body p-4">
                        <h1>Full Registration</h1>
                        <p class="text-muted">Create your account</p>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="icon-user"></i>
                                </span>
                            </div>
                            <input class="form-control" type="text" placeholder="First Name" name="staff_first_name">
                            <input class="form-control" type="text" placeholder="Middle Name" name="staff_middle_name">
                            <input class="form-control" type="text" placeholder="Last Name" name="staff_last_name">
                        </div>
            <div class="input-group mb-3">
             <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="icon-user"></i>
                                </span>
                            </div>
                            <input class="form-control" type="tel" placeholder="Contact Number" name="staff_number">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="icon-user"></i>
                                </span>
                            </div>
                            <input class="form-control" type="tel" placeholder="Gender" name="staff_gender">
                        </div>
                        
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="cui-calendar" aria-hidden="true"></i>
                                </span>
                            </div>
                            <input class="form-control" type="date" placeholder="DOB" name="staff_dob">
                        </div>
                        
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="cui-briefcase" aria-hidden="true"></i>
                                </span>
                            </div>
<!--                            <input class="form-control" type="date" placeholder="select2">-->
                            <select name="staff_designation_id" class="form-control select2" placeholder="Select Department">
                                <?php
                                    foreach($designation->result_array() as $designations){
                                       extract($designations);?>
                               <option value="<?php echo $designation_id;?>"><?php echo $designation_name; ?></option>   
                                       <?php
                                    }
                               ?>
                            </select>
                       </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="cui-briefcase" aria-hidden="true"></i>
                                </span>
                            </div>
<!--                            <input class="form-control" type="date" placeholder="select2">-->
                            <select name="staff_dept_id" class="form-control select2" placeholder="Select Department">
                                <?php
                                    foreach($dept->result_array() as $depts){
                                       extract($depts);
                                ?>
                               <option value="<?php echo $dept_id;?>"><?php echo $dept_name; ?></option>   
                                       <?php
                                    }   
                               ?>
                            </select>
                        </div>
                                                 
                          
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="cui-calendar" aria-hidden="true"></i>
                                </span>
                            </div>
                            <input class="form-control" type="text" placeholder="Is teaching Staff" name="is_teaching_staff">
                        </div>
                        
                        <button class="btn btn-block btn-success" type="submit" name="addData">Create Account</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
