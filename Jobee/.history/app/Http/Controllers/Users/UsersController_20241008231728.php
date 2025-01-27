<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Models\Job\Application;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{
    public function profile(){
        $profile=User::find(Auth::user()->id);
        return view('users.profile',compact('profile'));

    }

    public function applications(){
        //return the job applications of the currently authenticated user
        $applications=Application::where('user_id','=',Auth::user()->id);
        return view('users.applications',compact('applications'));



    }
}
