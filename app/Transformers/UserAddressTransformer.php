<?php

namespace App\Transformers;

use App\Models\UserAddress;
use League\Fractal\TransformerAbstract;

class UserAddressTransformer extends TransformerAbstract
{

      // protected $availableIncludes = ['user'];


	public function transform(UserAddress $userAddress)
	{

		return [
            'province'      => $userAddress->province,
            'city'          => $userAddress->city,
            'district'      => $userAddress->district,
            'address'       => $userAddress->address,
            'zip'           => $userAddress->zip,
            'contact_name'  => $userAddress->contact_name,
            'contact_phone' => $userAddress->contact_phone,
            'updated_at' 	=> $userAddress->updated_at ? $userAddress->updated_at->toDateTimeString() : null,
            'created_at' 	=> $userAddress->created_at ? $userAddress->created_at->toDateTimeString() : null,
            'last_used_at' => $userAddress->last_used_at ? $userAddress->last_used_at->toDateTimeString() : null,

		];
	}

      // public function includeUser(UserAddress $userAddress)
      // {
      //       return $this->item($userAddress->user, new UserTransformer());
      // }
}