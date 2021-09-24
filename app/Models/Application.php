<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Application extends Model
{


    protected $table = 'applications';

    protected $fillable = [
        'user_id',
        'charity_id',
        'stage_id',
    ];
}
