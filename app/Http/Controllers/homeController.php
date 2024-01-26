<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class homeController extends Controller
{
 
    public function index()
    {
        if(Auth::id())
        {

            $userRole = Auth()->user()->role;

            if($userRole === 'admin')
            {
                return view('admin.dashboard');
            }
            else if($userRole === 'agent')
            {
                return view('agent.dashboard');
            }
            else if($userRole === 'user')
            {
                return view('user.dashboard');
            }
            else
            {
                return redirect()->back();
            }
        }
    }
 
 
    public function AdminDashboard(){
        return view('admin.dashboard');
    }

    public function AgentDashboard(){
        return view('agent.dashboard');
    }
    public function UserDashboard(){
        return view('user.dashboard');
    }
}
