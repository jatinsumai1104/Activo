<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mx-12">
                <div class="card-body p-4">
                    <h1>Request</h1>
                    <form class="form-horizontal" action="addPage" method="post">
                        <div id="request-items">
                            <div class="form-group row" id="item1">
                                <div class="col-md-4">
                                    <label>Item Name</label>
                                    <select name="item_name[]" class="form-control select2" id="item1_name">
                                        <option></option>
                                        <?php
                                            foreach($items->result_array() as $item){
                                            extract($item);
                                        ?>
                                        
                                        <option value="<?php echo $item_id; ?>"><?php echo $item_name; ?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label>Item Quantity</label>
                                    <select name="quantity[]" class="form-control select2" id="item1_quantity">
                                        <option></option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="10">10</option>
                                        <option value="100">100</option>
                                    </select>
                                </div>
                                <div class="col-md-2" id="item1_add_button">
                                    <label for="" style="display:block">&nbsp;</label>
                                    <button type="button" class="btn btn-primary btn-sm" onclick ="generateElements('2')" class="" ><i class="fa fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                    	<div class="form-group row">
                    		<div class="col-md-4">
                    			<button class="btn btn-primary btn-lg" type="submit" name="requestItem">Place Request</button>
                    		</div>
						</div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</main>
