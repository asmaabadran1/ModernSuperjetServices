<?php

namespace App\Http\Controllers;
use App\Http\Requests\formRequest;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;






class LaravelForm extends Controller
{

    function form()
    {
        return view('form.form');

    }



   public function add(Request $request)

    {
        

    
        $request-> validate([
           
            'fullname'=>'required',
            'email'=>'required',
            'phonenum'=>'required',
            'cardnum'=>'required',
            'md'=>'required',
            'ccv'=>'required',
            'promocode'=>'required',


             //save image in folder
        $file_extension = $request-> uploadpic ->getClientOriginalExtension(),
        $file_name = time().'.'.$file_extension,
        $path = 'images/users',
        $request -> uploadpic -> move($path,$file_name),

            


        ]);

        $query = DB::table('form') -> insert([

            'fullname'=>$request->input('fullname'),
            'email'=>$request->input('email'),
            'phonenum'=>$request->input('phonenum'),
            'cardnum'=>$request->input('cardnum'),
            'md'=>$request->input('md'),
            'ccv'=>$request->input('ccv'),
            'promocode'=>$request->input('promocode'),
            'uploadpic'=>$file_name,


            
            


        ]);

        if($query)
        {
            return back()->with('success','Data have been successfully inserted');
        }else{
            return back()->with('fail','something went wrong');
        }
    }

   
}
