<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateContactRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     * @return bool
     */

    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'phoneNumber' => 'required|numeric',
            'email' => 'required|email',
            'subject' => 'required',
            'message' => 'required'
        ];
    }
    public function messages()
    {
        return[
            'name.required' => "Full name required",
            'number.required' => "Phone number required",
            'email.required' => "Email required",
            'subject.required' => "Subject of the message required",
            'message.required' => "Message required"
        ];
    }
}