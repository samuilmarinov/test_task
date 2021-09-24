<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateApplicationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('applications', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('charity_id');
            $table->unsignedBigInteger('stage_id');
            $table->timestamps();
        });

        Schema::table('applications', function (Blueprint $table) {    
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('charity_id')->references('id')->on('charities');
            $table->foreign('stage_id')->references('id')->on('stages');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {

    }
}