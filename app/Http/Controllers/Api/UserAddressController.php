<?php

namespace App\Http\Controllers\Api;

use App\Models\UserAddress;
use Illuminate\Http\Request;
use App\Transformers\UserAddressTransformer;
use App\Http\Requests\Api\UserAddressRequest;

class UserAddressController extends Controller
{
	public function store(UserAddressRequest $request)
	{
		$address = $request->user()->addresses()->create($request->only([
			'province',
            'city',
            'district',
            'address',
            'zip',
            'contact_name',
            'contact_phone',
    	]));

    	return $this->response->item($address, new UserAddressTransformer)->setStatusCode(201);
	}
}