<?php


use App\Models\Application;
use App\Models\Charity;
use App\Models\Country;
use App\Models\Stage;
use App\Models\User;


function getUsername($uerId) {
    $username = User::where('id', $uerId)->value('name');
    return $username;        
}

function getCharity($charId) {
    $charity = Charity::where('id', $charId)->value('charity_name');
    return $charity;        
}

function getStage($stageId) {
    $stage = Stage::where('id', $stageId)->value('stage_name');
    return $stage;        
}

function getCharityStatus($charId) {
    $status = Charity::where('id', $charId)->value('is_approved');
    return $status;        
}


function getCountryCode($countryId) {
    $code = Country::where('id', $countryId)->value('country_code');
    return $code;        
}

function getCharityCountry($charId) {
    $cntr_id = Charity::where('id', $charId)->value('country_id');
    return $cntr_id;        
}