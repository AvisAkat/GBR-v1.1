<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
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
