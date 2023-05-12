<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use App\Http\Requests\CreateContactRequest;

class ContactController extends Controller
{
    public function showContact(){
        return view('/details');
    }

    public function store(Request $request)
    {
        Contact::insertOrIgnore(
            [
            "customer" => $request->customer,
            "date" => date('d-m-Y'),
            "email" => $request->email,
            "phone" => $request->phone,
            "subject" => $request->subject,
            "comment" => $request->comment
            ]
        );

        return redirect("contact");
    }
};