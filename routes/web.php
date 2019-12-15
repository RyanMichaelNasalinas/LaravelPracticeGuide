<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Post; // Import post model
use App\Tag; // Import tag model
use App\Video;
use App\Comment;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');

Route::get('/all_users', 'TaskController@index');

//Prefix Routing
Route::prefix('jobs')->group(function(){
    Route::get('create','TaskController@create');
    Route::post('create','TaskController@store')->name('jobs.store'); //Store the data
});

Route::get('/user','TaskController@index');

Route::get('/tasks', function(){
    $post = Post::find(2);
    $post->tag()->attach(3);
});

Route::get('/users', function(){

    $users = ['one','two','three'];

    return view('data', compact('users'));
});

Route::get('posts',function(){
    $post = Video::find(2);
    $comment = new Comment;
    $comment->body="This is a comment for video";
    $post->comments()->save($comment);
}); 

// Route::get('posts', function(){
//     $post = Post::paginate(1);
//     return $post;
// });


//String Helper Function Practice
Route::get('/helper',function(){
    $sentence = "Laravel is a great framework";
    $singular = "one";

    $array = ['one' => 'two','three' =>'four'];
  
    $multiple_array = [
        ['1','2','3'],
        ['4','5','6']
    ];

    $data = collect(['1','2','3','4','5']);
    // dd($data->chunk(1));

    $data1 = collect([
        ['1','2','3'],
        ['4','5','6']
    ]);

    // dd($data1->collapse());
    // dd($data->median());

    $data2 = collect([
        ['role' => 'admin'],
        ['role' => 'supervisor'],
        ['role' => 'employee']
    ]);
    
    // dd($data2->pluck('role'));

    $data3 = collect([
        ['role' => 'admin'],
        ['role' => 'supervisor'],
        ['role' => 'employee']
    ]);

    // dd($data3->pluck('role')->contains('admin'));

    $data4 = collect([1,2,3,4,5,]);
    // dd($data4->take(1));

    $data5 = collect([1,2,3,4,5]);
    $filtered = $data5->filter(function($value,$key){
        return $value > 2;
    });

    // dd($filtered);

    $multiple_array = array_collapse($multiple_array);
    $array = array_except($array,['three']);
    // dd($array);
    // $array = array_add($array,'three','four');
    // $array = array_divide($array);
    // dd($multiple_array);
    // echo Str::random();
    // echo Str::title($sentence);
    // echo str_plural($singular);
    // echo str_limit($sentence,20,'.....');
});


//Url Helper Function Practice
Route::get('/contact','ContactController@index')->name('contact.view');
