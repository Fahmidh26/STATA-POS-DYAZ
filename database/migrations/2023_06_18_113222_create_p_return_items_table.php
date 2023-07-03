<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('p_return_items', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('return_id');
            $table->foreign('return_id')->references('id')->on('preturns')->onDelete('cascade');
            $table->unsignedBigInteger('product_id');
            $table->integer('qty');
            $table->integer('sold');
            $table->float('rate',8,2);
            $table->float('amount',8,2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('p_return_items');
    }
};
