<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Application;
use App\Models\Charity;
use App\Models\Country;
use App\Models\Stage;
use App\Models\User;
use Illuminate\Support\Facades\Gate;
use Carbon\Carbon;

class ApiController extends Controller
{   

    public function index() {

        $applications = Application::get();
        $charities =  Charity::get();
        $countries =  Country::get();
        $stages =  Stage::get();
        $users =  User::get();

        return view('home',compact('applications', 'charities', 'countries', 'stages', 'users'));
    }

    public function getAll() {
      // get all applications
    }

    public function create(Request $request) {

        $request->validate([
            'user_id' => 'required',
            'charity_id' => 'required',
            'stage_id' => 'required',
        ]);

        //dummy user set to admin
        $user = 'administrator';
        if (Gate::forUser($user)->denies('isAllowed', $user)) {
          return response()->json([
              "message" => "action not allowed"
          ], 201);
        }else{

          $application = new application;
          $application->user_id = $request->user_id;
          $application->charity_id = $request->charity_id;
          $application->stage_id = $request->stage_id;
        // uncomment below to restrict unapproved charities
        //   $charity_status = getCharityStatus($request->charity_id);
        //   if($charity_status == 1){
            $application->save(); 
            return response()->json([
                "message" => "application created"
            ], 201);
        //   }else{
        //     return response()->json([
        //         "message" => "action not allowed"
        //     ], 201);
        //   }
  
        }
      }
  
    public function get($id) {
        // get an application
    }
  
    public function update(Request $request, $id) {
       // update an application
    }
      
    public function move(Request $request, $id) {
        $user = 'administrator';
        $application_id = application::find($id);
        $application_exists = Application::where('id', $id)->first();
        if (Gate::forUser($user)->denies('isAllowed', $user) OR $application_exists === null) { 
              return response()->json([
                "message" => "not allowed"
            ], 404); 
        }else{  
            // check if application's assigned charity is approved
            $charity_id_check = $application_id->charity_id;
            $is_aproved_charity = getCharityStatus($charity_id_check);
            // get country code
            $country_id = getCharityCountry($charity_id_check);
            $country_code = getCountryCode($country_id);
            // check if date created is in the past
            $date_created = new Carbon($application_id->created_at);
            $now = Carbon::now();
            // switch value
            $date_switch = 0;
            if($date_created < $now) {
              $date_switch = 1;
            }
            //move application
            if (Application::where('id', $id)->exists() AND $is_aproved_charity === 1 AND $country_code === 'GBR' AND $date_switch != 0) {
                $application = application::find($id);
                $charity_id = $application->charity_id;
                $application->stage_id = is_null($request->stage_id) ? $application->stage_id : $request->stage_id;      
                $application->save();
                return response()->json([
                    "message" => "application moved successfully"
                ], 200);
            } else {
                return response()->json([
                    "message" => "error moving application - check past date, country UK and charity is Approved !"
                ], 404); 
            }
        }
    }
  
    public function delete ($id) {
        // delete an application
    }
}