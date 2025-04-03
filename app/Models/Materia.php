<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Materia extends Model
{
    use HasFactory;

    
    // Opcional: solo necesario si la tabla se llama diferente al plural en inglés
    protected $table = 'materias'; 

    protected $fillable = [
        'carrera_id',
        'nombre',
        'codigo',  // Corregido: se eliminó la coma adicional
    ];

    // relacion de uno a muchos
    public function carrera()
    {
        return $this->belongsTo(Carrera::class);
    }
}
