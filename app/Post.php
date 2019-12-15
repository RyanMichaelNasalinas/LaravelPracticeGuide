<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Tag;
use App\Comment;

class Post extends Model
{
    //mass assignment
    protected $fillable = ['user_id','title','body'];

    protected $table = "posts";

    public function users() {
        return $this->belongsTo(User::class,'user_id');
    }

    public function tag() {
        return $this->belongsToMany(Tag::class);
    }

    public function comments() {
        return $this->morphMany(Comment::class,'commentable');
    }
 
}
