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

    public function destroy(UserAddress $user_address)
	{
		$this->authorize('own', $user_address);
		$user_address->delete();
		return $this->response->noContent();
	}

	public function index(Request $request,UserAddress $address)
	{
		return $this->errorResponse(403, '您还没有通过认证', 1003);
		$addresses =  $request->user()->addresses()->paginate(20);
		// $query = $address->query();

		// $query->where('user_id', $request->user()->id);

		// $addresses = $query->paginate(20);

		return $this->response->paginator($addresses, new UserAddressTransformer());
	}

}