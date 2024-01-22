<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('routes', function (Blueprint $table) {
            $table->id();
            $table->string('route_name');
            $table->unsignedBigInteger('start_terminal_id');
            $table->unsignedBigInteger('end_terminal_id');
            $table->foreign('start_terminal_id')->references('id')->on('terminals')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('end_terminal_id')->references('id')->on('terminals')->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('routes');
    }
};
