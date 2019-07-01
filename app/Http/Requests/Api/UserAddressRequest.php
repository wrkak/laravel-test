<?php

namespace App\Http\Requests\Api;


class UserAddressRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
         switch ($this->method()) {
            case 'POST':
                return [
                    'province'      => 'required',
                    'city'          => 'required',
                    'district'      => 'required',
                    'address'       => 'required',
                    'zip'           => 'required',
                    'contact_name'  => 'required',
                    'contact_phone' => 'required', 
                ];
                break;
            case 'PUT':
            case 'PATCH':
                return [
                    'province'      => 'string',
                    'city'          => 'string',
                    'district'      => 'string',
                    'address'       => 'string',
                    'zip'           => 'string',
                    'contact_name'  => 'string',
                    'contact_phone' => 'string', 
                ];
                break;
        }
    }

}
