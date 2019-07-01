<?php

namespace App\Http\Controllers\Api;

use App\Models\UserAddress;
use Illuminate\Http\Request;
use App\Transformers\UserAddressTransformer;
use App\Http\Requests\Api\UserAddressRequest;

class UserAddressesController extends Controller
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

	public function update(UserAddressRequest $request, UserAddress $user_address)
    {

       $this->authorize('own',$user_address);

       $user_address->update($request->only([
			'province',
            'city',
            'district',
            'address',
            'zip',
            'contact_name',
            'contact_phone',
    	]));

		return $this->response->item($user_address, new UserAddressTransformer);
    }

}