<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class TaskController extends Controller
{
   public function index(User $user) {
      // $users = User::paginate(5);
      // // return $user; // will return JSON formatted data
      // // dd($user);
      // // $user = User::findOrFail($id);
      // return view('user',compact('users'));
      $users = $user->get();
      return view('home',compact('users'));
   }

    public function create() {
       return view('home');
    }

    public function store(Request $request) {
       $title = $request->get('title');
       echo $title;
    }
}
