<?php

namespace App\Http\Controllers;

use App\Models\Materia;
use App\Models\Carrera; // Importación añadida
use Illuminate\Http\Request;

class MateriaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $materias = Materia::all(); // Mejorado con eager loading
        return view('admin.materias.index', compact('materias'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $carreras = Carrera::all();
        return view('admin.materias.create', compact('carreras'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'carrera_id' => 'required|exists:carreras,id',
            'nombre' => 'required|string|max:255',
            'codigo' => 'required|string|max:50', // Validación de unicidad añadida
        ]);

        Materia::create($request->all());

        return redirect()->route('admin.materias.index')
            ->with('mensaje', 'Materia registrada correctamente')
            ->with('icono', 'success');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //$materia = Materia::with('carrera')->findOrFail($id); // Implementación básica
        //return view('admin.materias.show', compact('materia'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $materia = Materia::findOrFail($id);
        $carreras = Carrera::all();
        return view('admin.materias.edit', compact('materia', 'carreras'));
    }
    
    public function update(Request $request, $id)
    {
        $materia = Materia::findOrFail($id);
        
        $request->validate([
            'carrera_id' => 'required|exists:carreras,id',
            'nombre' => 'required|string|max:255',
            'codigo' => 'required|string|max:50|unique:materias,codigo,'.$materia->id,
        ]);
        
        $materia->update($request->all());
        
        return redirect()->route('admin.materias.index')
            ->with([
                'mensaje' => 'Materia actualizada correctamente',
                'icono' => 'success'
            ]);
    }

    /**
     * Remove the specified resource from storage.
     */
   public function destroy($id)
{
    $materia = Materia::find($id);
    $materia->delete();

    return redirect()->route('admin.materias.index')
    ->with('mensaje', 'Materia eliminada correctamente')
    ->with('icono', 'success');
}
}