<div class="container-fluid">
	<div class="animated fadeIn">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-sm-5">
						<h4 class="card-title mb-0">Manage Request</h4>
						<div class="small text-muted">November 2017</div>
					</div>
					<!-- /.col-->
					<div class="col-sm-7 d-none d-md-block">
						<!--
<button class="btn btn-primary float-right" type="button">
    <i class="">Tools</i> add suitable icon for tools
</button>
-->
						<div class="btn-group float-right">
							<button class="btn btn-primary" data-toggle="dropdown">
								<i class="fa fa-wrench"> </i> Tools
								<i class="fa fa-angle-down"></i>
							</button>
							<ul class="dropdown-menu ">
								<li class="dropdown-item">
									<a href="javascript:;"> Print </a>
								</li>
								<li class="dropdown-item">
									<a href="javascript:;"> Save as PDF </a>
								</li>
								<li class="dropdown-item">
									<a href="javascript:;"> Export to Excel </a>
								</li>
							</ul>
						</div>
					</div>
					<!-- /.col-->
				</div>
				<!-- /.row-->
				<div class="row">
					<table class="table" id="manage_request">
						<thead class="thead-dark">
							<tr>
								<th scope="col">User Email</th>
								<th scope="col">Item Name</th>
								<th scope="col">Item Quantity</th>
								<th scope="col">returnable</th>
								<th scope="col">Is Fulfilled</th>
							</tr>
						</thead>
						<tbody>
							<?php
							foreach($requests as $request){
								extract($request);
							?>

							<tr>
								<th scope="row"> <a style="color:#20a8d8;cursor:pointer;" data-toggle="modal" data-target="<?php echo '#exampleModal'.$request_item_id?>">
										<?php echo $user_email; ?> </a>
								</th>
								<td>
									<a href="" style="color:black;">
										<?php echo $item_name; ?></a>
								</td>
								<td>
									<a href="" style="color:black;">
										<?php echo $quantity; ?></a>
								</td>
								<td>
									<a href="" style="color:black;">
										<?php echo $is_returnable; ?></a>
								</td>
								<td>
									<a href="" style="color:black;">
										<?php echo $is_fullfilled; ?></a>
								</td>
							</tr>

							<div class="modal fade" id="<?php echo 'exampleModal'.$request_item_id ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>

										<div class="modal-body">
											<p>Approve the pending requests</p>
										</div>
										<div class="modal-footer">
											<form action="">
												<input type="text" value="<?php $request_item_id ?>">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Dismiss</button>
												<button type="button" class="btn btn-primary">Approve</button>
											</form>
										</div>
									</div>
								</div>
							</div>
							<?php
								}
							?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
