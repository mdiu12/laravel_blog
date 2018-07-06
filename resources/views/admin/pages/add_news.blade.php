@extents('admin.admin_master')
@section('admin_main_content')
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Form Elements</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
                    <h2 style="color:green; padding:10px 0 0 13px;">
<?php
$message=Session::get('message');
if($message){
echo $message;
Session::put('message','');
}
?>
</h2>
                    
					<div class="box-content">
					
         {!! Form::open(array('url' => '/save_news','method'=>'post','class'=>'form-horizontal','files'=>'true')) !!}
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">News title</label>
							  <div class="controls">
								<input name="news_title" type="text" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4">
								<!--<p class="help-block">Start typing to activate auto complete!</p>-->
							  </div>
							</div>
                             <div class="control-group">
								<label class="control-label" for="selectError">Category name</label>
								<div class="controls">
								  <select id="selectError" data-rel="chosen"  name="category_id">
						
                                    <?php
                                    foreach($published_category as $v_category)
                                     {
                                    ?>
                                  <option value="{{$v_category->id}}">{{$v_category->category_name}}</option>
                                    <?php
                                    }
                                    ?>
                                      
						
					
								  </select>
								</div>
							  </div>
                             <div class="control-group">
								<label class="control-label" for="selectError">Is fetured</label>
								<div class="controls">
								  <select id="selectError_chzn" data-rel="chosen"  name="is_fetured">
									<option value="1">Yes</option>
									<option value="0">No</option>					
								  </select>
								</div>
							  </div>
                
                   
                              
							<!--<div class="control-group">
							  <label class="control-label" for="date01">Date input</label>
							  <div class="controls">
								<input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12">
							  </div>
							</div>-->

						        
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Short Description</label>
							  <div class="controls">
								<textarea class="cleditor" id="textarea2" rows="3"  name="short_description"></textarea>
							  </div>
							</div>
                              	<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Long Description</label>
							  <div class="controls">
								<textarea class="cleditor" id="textarea2" rows="3"  name="long_description"></textarea>
							  </div>
							</div>
			  <div class="control-group">
							  <label class="control-label" for="fileInput">Image</label>
							  <div class="controls">
								<input class="input-file uniform_on" id="fileInput" type="file" name="image">
							  </div>
                        </div>
                              
                        <div class="control-group">
								<label class="control-label" for="selectError">News Type</label>
								<div class="controls">
								  <select id="selectError_chzn1" data-rel="chosen"  name="news_type">
                  	                  <option value="0">top news</option>
                                     <!-- <option value="1">Recent News</option>-->
									  <option value="2">Breaking News</option>				
								  </select>
								</div>
							  </div>
                
                             <div class="control-group">
								<label class="control-label" for="selectError">Publication status</label>
								<div class="controls">
								  <select id="selectError_chzn2" data-rel="chosen"  name="publication_status">
				                    <option value="1">Published</option>
									<option value="0">Unpublished</option>
					
								  </select>
								</div>
							  </div>
                
							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Save changes</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						{!! Form::close() !!} 

					</div>
				</div><!--/span-->

			</div><!--/row-->

@endsection