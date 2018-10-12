<div class="app-body">
    <div class="container">
	<?php
		$attributes = array(
				'class'=>'login_form',
				'id' => 'login_id'
			);
		
	?>
	<form action="../../index.php/student/addData	" method="post">
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
                            <input class="form-control" type="text" placeholder="First Name" name="student_first_name">
                            <input class="form-control" type="text" placeholder="Middle Name" name="student_middle_name">
                            <input class="form-control" type="text" placeholder="Last Name" name="student_last_name">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="icon-user"></i>
                                </span>
                            </div>
                            <input class="form-control" type="tel" placeholder="Contact Number" name="student_number">
                        </div>
                        
						<div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="icon-user"></i>
                                </span>
                            </div>
                            <select name="student_gender" class="form-control" data-placeholder="Select Gender">
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                            </select>
                        </div>
                        
						
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    Date Of Birth
                                </span>
                            </div>
                            <input class="form-control" type="date" placeholder="DOB" name="student_dob">
                        </div>

                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="cui-briefcase" aria-hidden="true"></i>
                                </span>
                            </div>
							<select name="student_dept_id" class="form-control" id="student_dept_id" data-placeholder="Select the Department">
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
                                    <i class="cui-briefcase" aria-hidden="true"></i>
                                </span>
                            </div>
                            <input class="form-control" type="text" placeholder="Pass Out Year" name="student_passout_year">
                        </div>
                        <button class="btn btn-block btn-success" type="submit" name="addData">ADD DETAIL</button>
                    </div>
                </div>
            </div>
        </div>
		</form>
    </div>