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
        Schema::create('materias', function (Blueprint $table) {  // Corregido: Blueprint $table (no Stable)
            $table->id();
            $table->unsignedBigInteger('carrera_id');
            $table->string('nombre');
            $table->string('codigo');
            $table->timestamps();
    
            // Definición de la clave foránea separada (mejor práctica)
            $table->foreign('carrera_id')
                  ->references('id')
                  ->on('carreras')
                  ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('materias');
    }
};
