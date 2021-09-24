<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Charity extends Model
{


    protected $table = 'charities';

    protected $fillable = [
        'charity_name',
        'is_approved',
        'country_id',
    ];
}
