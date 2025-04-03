@extends('adminlte::page')

@section('content_header')
    <h1><b>Editor Materia</b></h1>
@stop

@section('content')
    <div class="row">
        <!-- Mostramos el formulario en la pantalla -->
        <div class="col-md-8">
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Editor Materia</h3>
                </div>
                <div class="card-body">
                    <!-- Formulario de edición -->
                    <form action="{{ route('admin.materias.update', $materia->id) }}" method="POST">
                        @csrf
                         @method('PUT')

                        <!-- Campo: Nombre de la carrera (select) -->
                        <div class="form-group">
                            <label for="carrera_id">Nombre de la carrera</label><b> (*)</b>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fas fa-graduation-cap"></i>
                                    </span>
                                </div>
                                <select class="form-control" name="carrera_id" required>
                                    <option value="">Seleccione una carrera...</option>
                                    @foreach($carreras as $carrera)
                                        <option value="{{ $carrera->id }}" {{ old('carrera_id', $materia->carrera_id) == $carrera->id ? 'selected' : '' }}>
                                            {{ $carrera->nombre }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            @error('carrera_id')
                                <small style="color: red">{{ $message }}</small>
                            @enderror
                        </div>

                        <!-- Campo: Nombre de la Materia -->
                        <div class="form-group">
                            <label for="nombre">Nombre de la Materia</label><b> (*)</b>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fas fa-book"></i>
                                    </span>
                                </div>
                                <input type="text" class="form-control" name="nombre"
                                    value="{{ old('nombre', $materia->nombre) }}"
                                    placeholder="Escriba el nombre de la materia..." required>
                            </div>
                            @error('nombre')
                                <small style="color: red">{{ $message }}</small>
                            @enderror
                        </div>

                        <!-- Campo: Código de la Materia -->
                        <div class="form-group">
                            <label for="codigo">Código de la Materia</label><b> (*)</b>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fas fa-barcode"></i>
                                    </span>
                                </div>
                                <input type="text" class="form-control" name="codigo"
                                    value="{{ old('codigo', $materia->codigo) }}"
                                    placeholder="Escriba el código de la materia..." required>
                            </div>
                            @error('codigo')
                                <small style="color: red">{{ $message }}</small>
                            @enderror
                        </div>

                        <hr>

                        <!-- Botones: Actualizar y Cancelar -->
                        <div class="form-group">
                            <button type="submit" class="btn btn-success">Actualizar Materia</button>
                            <a href="{{ url('/admin/materias') }}" class="btn btn-secondary">Cancelar</a>
                        </div>
                    </form>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </div>
@stop