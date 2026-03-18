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
        Schema::create('parties', function (Blueprint $table) {
            $table->id();
            $table->string('party_name');
            $table->string('phone', 20)->nullable();
            $table->string('email')->nullable();
            $table->double('opening_balance', 10, 2)->default(0);
            $table->double('credit_limit', 10, 2)->default(0);
            $table->text('address')->nullable();
            $table->boolean('status')->default(1);
            $table->boolean('deleted')->default(0);
            $table->enum('party_type', ['Customer', 'Supplier'])->default('Customer');
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
        Schema::dropIfExists('parties');
    }
};
