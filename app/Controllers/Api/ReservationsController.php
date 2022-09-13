<?php

namespace App\Controllers\Api;

use CodeIgniter\RESTful\ResourceController;
use App\Models\ReservationsModel;
//use CodeIgniter\Database\Forge;


class ReservationsController extends ResourceController
{
	public function __construct (){
		//$db1 =Forge::getConnection();
	}

    public function addReservation()
	{
		$rules = [
            "excursion_id"=>"required",
            "payment_id"=>"required",
            "name"=>"required",
            "last_name"=>"required",
            "email"=>"required",
            "phone"=>"required",
            "num_people"=>"required"
		];

		$messages = [
            "excursion_id" => [
				"required" => "excursion_id is required",
				
			],
			"payment_id" => [
				"required" => "payment_id is required",
				
			],

			"name" => [
				"required" => "name is required",	
			],

            "last_name" => [
				"required" => "lastname is required",	
			],

			"phone" => [
				"required" => "phone is required"
			],

			"num_people" => [
				"required" => "num_people is required"
			],

		];

		if (!$this->validate($rules, $messages)) {

			$response = [
				'status' => 500,
				'error' => true,
				'message' => $this->validator->getErrors(),
				'data' => []
			];
		} else {

			$res = new ReservationsModel();

			$data['excursion_id'] = $this->request->getVar("excursion_id");
			$data['payment_id'] = $this->request->getVar("payment_id");
			$data['name'] = $this->request->getVar("name");
			$data['last_name'] = $this->request->getVar("last_name");
			$data['phone'] = $this->request->getVar("phone");
			$data['num_people'] = $this->request->getVar("num_people");

			$res->save($data);

			//$db = Database::connect();
			// $forge = \Config\Database::forge();
			// $last_id=$forge->insert_id();
			

			$response = [
				'status' => 200,
				'error' => false,
				'message' => 'The reservation was adedd sucessfully',
				'data' => []
			];
		}

		return $this->respond($response);
	}

   
}
