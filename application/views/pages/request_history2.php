<div class="container-fluid">
    <!--
     Trigger the modal with a button 
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#requestHistoryModal">Open Modal</button>
-->

    <!-- Modal -->
    <div id="requestHistoryModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Request Details</h4>
                </div>
                <div class="modal-body">
                    <form action="">
                        <!--                        Do the Needfull -->
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mx-12">
                <div class="card-body p-4">
                    <h1>Request History</h1>
                    <form class="form-horizontal" action="getItemData" method="post">
                        <div class="my-cards">


                            <div class="row">
                                 <?php
												if($notis==null){?>

                                <div class="col-sm-6 col-md-4">
                                   
                                    <div class="card text-white bg-dark mb-2" style="max-width: 18rem;">
                                        <div class="card-header">Request!</div>
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <?php echo $this->session->userdata('user_email'); ?>
                                            </h6>
                                            <p class="card-text">Dear user, you've made no made requests!</p>
<!--                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#requestHistoryModal">View Request</button>-->

                                        </div>
                                    </div>
                                </div>
                                    
                                    <?php
																}else{
									foreach($notis as $noti){
									extract($noti);
								?>
                                   <div class="col-sm-6 col-md-4">
                                    
                                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                                            <div class="card-header">Request!</div>
                                            <div class="card-body">
                                                <h6 class="card-title">
                                                    <?php $this->session->userdata('user_email'); ?>
                                                </h6>
                                                <p class="card-text">Dear user, you made an request on
                                                    <?php echo $created_at; ?>
                                                </p>
                                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#requestHistoryModal">View Request</button>

                                            </div>
                                        </div>
                                    </div>
                                    <?php
								}
								}
										?>


                                
                            </div>

                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
