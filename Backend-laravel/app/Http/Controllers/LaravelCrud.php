<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

class LaravelCrud extends Controller
{
    function index()
    {
        return view('crud.index');
    }

    function add(Request $request)
    {
        $request->validate([
            'email'=>'required|email|unique:crud',
            'password'=>'required'

        ]);


        $query= DB::table('crud')->insert([
            'email'=>$request->input('email'),
            'password'=>$request->input('password'),

        ]);

        if($query){
            return back()->with('success','Data have been successfully inserted');
        }else{
            return back()->with('fail','Something went wrong');
        }

    }
}
