<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //mass assignment
    protected $fillable = ['user_id','title','body'];

    protected $table = "posts";
}
