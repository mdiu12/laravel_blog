@extents('admin.admin_master')
@section('admin_main_content')

<script type="text/javascript">

function checkDelete()
{
var res=confirm("Are you sure to delete this");

if(res)
{
return true;
}

else{
return false

}
}
    
</script>
<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Manage News</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
                    
                    <?php
                   // echo "<pre>";
                   // print_r($all_news);
                   // die();
                    
                    ?>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>ID</th>
                                  <th>News title</th>
								  <th>Category Name</th>
                                  <th>Feature</th>
                                  <th>News Type</th>
								  <th>status</th>
							  </tr>
						  </thead>   
						  <tbody>
                              <?php
                              
                              foreach($all_news as $v_category)
                                { 
                              ?>
                              
							<tr>
								<td><?php echo $v_category->id ?></td>
                                <td><?php echo $v_category->news_title ?></td>
								<td class="center"><?php echo $v_category->category_name ?></td>
                                <?php if($v_category->is_fetured==1){ ?>
                                
                                <td class="center">Yes</td>
                                
                                <?php }else{?>
                                   <td class="center">No</td>
                                <?php }?>
                                                                
                               <?php if($v_category->news_type == 0){ ?>
                                  <td class="center">Breaking News</td>
                                <?php } elseif($v_category->news_type==1){?>
                                 <td class="center">Recent News</td>
                                
                                <?php }else{ ?>
                                 <td class="center">Top News</td>
                                   <?php }?>
								<td class="center">
                                    <?php 
                                  
                                  if($v_category->publication_status ==1 )
                                   {
                                   ?>
								<span class="label label-success">Published</span>
                                <?php
                                    }
                                    else
                                    {
                                    ?>
                                    <span class="label label-important">Unpublished</span>
                                    
                                   <?php } ?>
                                </td>
								<td class="center">
                                                    <?php 
                                  
                                  if($v_category->publication_status ==1 )
                                   {
                                   ?>
									<a class="btn btn-danger" href="{{URL::to('/unpublish-news/'.$v_category->id)}}">
										<i class="halflings-icon remove"></i>  
									</a>
                                  <?php
                                    }
                                    else
                                    {
                                    ?>
                                   	<a class="btn btn-success" href="{{URL::to('/publish-news/'.$v_category->id)}}">
										<i class="halflings-icon ok"></i>  
									</a>
                                    
                                   <?php } ?>
                                    
									<a class="btn btn-info" href="{{URL::to('/edit-news/'.$v_category->id)}}">
										<i class="halflings-icon white edit"></i>  
									</a>
									<a class="btn btn-danger" href="{{URL::to('/delete-news/'.$v_category->id)}}" onclick="return checkDelete();">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>
                              <?php }?>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->




@endsection