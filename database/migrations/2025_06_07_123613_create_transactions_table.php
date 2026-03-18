<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->date('payment_date');
            $table->unsignedBigInteger('payment_method')->nullable();
            $table->text('note')->nullable();
            $table->enum('transaction_type', ['credit', 'debit']);
            $table->decimal('amount', 10, 2);
            $table->decimal('opening_balance', 10, 2)->default(0);
            $table->unsignedBigInteger('created_by');
            $table->unsignedBigInteger('party_id')->after('id');
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('payment_method')
                  ->references('id')
                  ->on('payment_methods')
                  ->onDelete('set null');

            $table->foreign('party_id')
              ->references('id')
              ->on('parties')
              ->onDelete('set null');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};