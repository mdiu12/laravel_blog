<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Session;

use Redirect;
session_start();
use DB;

class SuperAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    
public function __construct(){

$admin_id=Session::get('admin_id');

    if($admin_id == NULL){

    return Redirect::to('/adda')->send();

}
}
        
    public function index()
    {
        //
        $admin_dashboard= view('admin.pages.admin_dashboard');
        
         return view('admin.admin_master')->with('admin_main_content',$admin_dashboard);
    }

     
    public function add_category()
    {
        //
        
          //  echo "hello world";
            
        $category_pages = view('admin.pages.add_category');
        return view('admin.admin_master')->with('admin_main_content',$category_pages);
    }
    
        public function manage_category()
    {
     //echo "hello world";
            
               $category_info=DB::table('tbl_category')
                ->where('deletion_status',0)
                ->get();
            
            $manage_pages = view('admin.pages.manage_category')    
            ->with('all_category',$category_info);
            return view('admin.admin_master')->with('admin_main_content',$manage_pages);
    }
    
    
    public function publish_category($id){
        //echo "$id";
        
            DB::table('tbl_category')
            ->where('id', $id)
            ->update(['publication_status' => 1]);
             return Redirect::to('/manage-category');
        
    }
    
    public function unpublish_category($id){
       
        
            DB::table('tbl_category')
            ->where('id', $id)
            ->update(['publication_status' => 0]);
             return Redirect::to('/manage-category');
        
    }
    
      public function delete_category($id){
       
        
           // DB::table('tbl_category')
           // ->where('id', $id)
            //->update(['deletion_status' => 1]);
          
          DB::table('tbl_category')
              ->where('id', $id)
              ->delete();
          
             return Redirect::to('/manage-category');
        
    }
    
       public function save_category(Request $request)
    {
        
        
         
        $data=array();
        $data['category_name']=$request->category_name;
        $data['category_description']=$request->category_description;
        $data['publication_status']=$request->publication_status;
       
        DB::table('tbl_category')->insert( $data);
        Session::put('message',"save category successfully");
        return Redirect::to('/add-category');  
           
           // echo '<pre>';
       // print_r($data);   
    }
    
    
    
          public function edit_category($id)
    {
     
            
            $category_info_by_id=DB::table('tbl_category')
                   ->where('id',$id)
                   ->first();
            
            $manage_pages = view('admin.pages.edit_category')    
            ->with('category_info',$category_info_by_id);
              
            return view('admin.admin_master')->with('admin_main_content',$manage_pages);
    }
      
    
       public function update_category(Request $request)
    {   
         
        $data=array();
        $id=$request->id;
        $data['category_name']=$request->category_name;
        $data['category_description']=$request->category_description;
        $data['publication_status']=$request->publication_status;
           
           DB::table('tbl_category')
            ->where('id', $id)
            ->update($data);
             return Redirect::to('/manage-category');  
    }
    
     public function add_news()
    {
     
            
           $all_published_category=DB::table('tbl_category')
                  ->where('publication_status',1)
                  ->where('deletion_status',0)
                  ->get();
            
                    $add_news = view('admin.pages.add_news')   
                     ->with('published_category',$all_published_category);

                    return view('admin.admin_master')
                        ->with('admin_main_content',$add_news);
         
            // echo '<pre>';
                            // print_r($image);
                            // exit();
    }
    
    
    
 public function save_news(Request $request)
    {
     
                        $data=array();
                        $image=$request->file('image');
                         
                        $file_size=$image->getClientSize();
                        if($image){

                        $image_name=str_random(20);
                        $ext=strtolower($image->getClientOriginalExtension());
                        $image_full_name=$image_name.'.'.$ext;
                        $upload_path='news_image/';
                        $image_url=$upload_path . $image_full_name;
                        if($ext =='jpg'||$ext =='png'||$ext =='gif'||$ext =='jpeg'){

                        if($file_size<2097153){

                        $success=$image->move($upload_path,$image_full_name);

                        }
                        else{

                        Session::put('message',"maximum file size 2 MB");
                        return Redirect::to('/add-news');
                        }

                        }
                        else{
                        Session::put('message',"file type not support !");
                        return Redirect::to('/add-news');

                        }

                        if($success){


                                $data['news_title']=$request->news_title;
                                $data['category_id']=$request->category_id;
                                $data['is_fetured']=$request->is_fetured;
                                $data['short_description']=$request->short_description;
                                $data['long_description']=$request->long_description;
                                $data['long_description']=$request->long_description;
                                $data['news_type']=$request->news_type;
                                $data['author_name']=Session::get('admin_name');
                                $data['image']=$image_url;
                                $data['publication_status']=$request->publication_status;
                               DB::table('news')->insert( $data);
                               Session::put('message',"Save News successfully");
                               return Redirect::to('/add-news'); 
                        }
                        else{

                        }

                        }



                            }
    
    public function manage_news()
    {
     //echo "hello world";
            
             /*  $category_info=DB::table('tbl_category')
                ->where('deletion_status',0)
                ->get();
            
            $manage_pages = view('admin.pages.manage_news')    
            ->with('all_category',$category_info);
            return view('admin.admin_master')->with('admin_main_content',$manage_pages);*/
        
        
          $all_news=DB::table('news')
                ->join('tbl_category','news.category_id','=','tbl_category.id')
                ->select('news.*','tbl_category.category_name')
                ->get();
            
            $manage_news = view('admin.pages.manage_news')    
            ->with('all_news',$all_news);
            return view('admin.admin_master')->with('admin_main_content',$manage_news);
        
    }
    
        public function unpublish_news($id){


            DB::table('news')
            ->where('id', $id)
            ->update(['publication_status' => 0]);
             return Redirect::to('/manage-news');

        }
    
        public function publish_news($id){
        //echo "$id";
        
            DB::table('news')
            ->where('id', $id)
            ->update(['publication_status' => 1]);
             return Redirect::to('/manage-news');
        
    }

      public function delete_news($id){
          
            $news_info=DB::table('news')
            ->where('id',$id)
            ->first();
            $image_path=$news_info->image;
            unlink($image_path);


          DB::table('news')
              ->where('id', $id)
              ->delete();
          
             return Redirect::to('/manage-news');
        
    }


          public function edit_news($id)
    {
     
            
            $news_edit_id=DB::table('news')
                   ->where('id',$id)
                   ->first();
            
            $manage_pages = view('admin.pages.edit_news')    
            ->with('news_info',$news_edit_id);
              
            return view('admin.admin_master')->with('admin_main_content',$manage_pages);
    }
      

                            /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
       public function logout()
    {
        Session::put('admin_id','');
        Session::put('admin_name','');
        Session::put('message','You are successfully logout');
        return Redirect::to('/adda');
   
    }

    
    public function destroy($id)
    {
        //
    }
}
