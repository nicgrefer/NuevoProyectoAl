codeunit 50140 "Carga Datos Iniciales"
{
    // Este codeunit se puede ejecutar desde la búsqueda (Alt+Q)

    procedure CargarTodosLosDatos()
    begin
        if not Confirm('¿Desea cargar los datos iniciales del sistema EDUCA?', false) then
            exit;

        CargarTodosLosDatosForzado();

        Message('Datos cargados correctamente.');
    end;

    procedure CargarTodosLosDatosForzado()
    begin
        InsertarDepartamentos();
        InsertarClaustro();
        InsertarCursos();
        InsertarClases();
        InsertarEstudiantes();
        InsertarMatriculas();
        InsertarPersonal();
    end;

    local procedure InsertarDepartamentos()
    var
        Departamento: Record Departamentos;
    begin
        // Borrar datos existentes
        Departamento.DeleteAll();

        // INFO
        Clear(Departamento);
        Departamento.Init();
        Departamento."Código dept." := 'INFO';
        Departamento.Edificio := 'CI';
        Departamento.Despacho := 100;
        Departamento."Código director" := '47';
        Departamento.Insert(true);

        // LET
        Clear(Departamento);
        Departamento.Init();
        Departamento."Código dept." := 'LET';
        Departamento.Edificio := 'HU';
        Departamento.Despacho := 200;
        Departamento."Código director" := '15';
        Departamento.Insert(true);
    end;

    local procedure InsertarClaustro()
    var
        Profesor: Record Claustro;
    begin
        Profesor.DeleteAll();

        // Profesor 15
        Clear(Profesor);
        Profesor.Init();
        Profesor."Código profesor" := '15';
        Profesor.Nombre := 'Sánchez Prieto, María';
        Profesor."Dirección" := 'Plaza Madrid, 16 1º - 47001';
        Profesor."Fecha contrato" := DMY2Date(1, 9, 2010);
        Profesor.Sueldo := 1500.00;
        Profesor."Código dept." := 'LET';
        Profesor.Insert(true);

        // Profesor 47
        Clear(Profesor);
        Profesor.Init();
        Profesor."Código profesor" := '47';
        Profesor.Nombre := 'Cuesta Arriba, Tomás';
        Profesor."Dirección" := 'Calle Góndola, 74 3ºB – 47014';
        Profesor."Fecha contrato" := DMY2Date(30, 6, 2005);
        Profesor.Sueldo := 1800.00;
        Profesor."Código dept." := 'INFO';
        Profesor.Insert(true);

        // Profesor 25
        Clear(Profesor);
        Profesor.Init();
        Profesor."Código profesor" := '25';
        Profesor.Nombre := 'Zalama Bueno, Inés';
        Profesor."Dirección" := 'Calle Cerrada, 3 – 47012';
        Profesor."Fecha contrato" := DMY2Date(25, 9, 2012);
        Profesor.Sueldo := 1250.00;
        Profesor."Código dept." := 'INFO';
        Profesor.Insert(true);
    end;

    local procedure InsertarCursos()
    var
        Curso: Record Cursos;
    begin
        Curso.DeleteAll();

        // C10
        Clear(Curso);
        Curso.Init();
        Curso."Código curso" := 'C10';
        Curso."Nombre curso" := 'Bases de datos';
        Curso."Desc. curso" := 'Imprescindible';
        Curso."Créditos" := 9;
        Curso.Tarifa := 15.00;
        Curso."Código dept." := 'INFO';
        Curso.Insert(true);

        // C11
        Clear(Curso);
        Curso.Init();
        Curso."Código curso" := 'C11';
        Curso."Nombre curso" := 'Programación';
        Curso."Desc. curso" := 'Imprescindible';
        Curso."Créditos" := 8;
        Curso.Tarifa := 12.75;
        Curso."Código dept." := 'INFO';
        Curso.Insert(true);

        // C20
        Clear(Curso);
        Curso.Init();
        Curso."Código curso" := 'C20';
        Curso."Nombre curso" := 'Existencialismo';
        Curso."Desc. curso" := 'Opcional';
        Curso."Créditos" := 3;
        Curso.Tarifa := 0.00;
        Curso."Código dept." := 'LET';
        Curso.Insert(true);
    end;

    local procedure InsertarClases()
    var
        Clase: Record Clases;
    begin
        Clase.DeleteAll();

        // C10-01
        Clear(Clase);
        Clase.Init();
        Clase."Código curso" := 'C10';
        Clase."Sección" := '01';
        Clase."Día Option" := SemanaEnum::Lunes;
        Clase.Hora := 100000T;
        Clase.Edificio := 'CI';
        Clase.Despacho := 101;
        Clase."Código profesor" := '25';
        Clase.Insert(true);

        // C11-01
        Clear(Clase);
        Clase.Init();
        Clase."Código curso" := 'C11';
        Clase."Sección" := '01';
        Clase."Día Option" := SemanaEnum::Miércoles;
        Clase.Hora := 090000T;
        Clase.Edificio := 'CI';
        Clase.Despacho := 102;
        Clase."Código profesor" := '47';
        Clase.Insert(true);

        // C20-02
        Clear(Clase);
        Clase.Init();
        Clase."Código curso" := 'C20';
        Clase."Sección" := '02';
        Clase."Día Option" := SemanaEnum::Jueves;
        Clase.Hora := 090000T;
        Clase.Edificio := 'HU';
        Clase.Despacho := 201;
        Clase."Código profesor" := '15';
        Clase.Insert(true);
    end;

    local procedure InsertarEstudiantes()
    var
        Estudiante: Record Estudiantes;
    begin
        Estudiante.DeleteAll();

        // 123
        Clear(Estudiante);
        Estudiante.Init();
        Estudiante."Código estudiante" := '123';
        Estudiante.Nombre := 'García García, Luis';
        Estudiante.Sexo := Estudiante.Sexo::Masculino;
        Estudiante."Dirección" := 'Calle Norte, 25 2ºC - 47007';
        Estudiante."Teléfono" := '983001122';
        Estudiante."Fecha de nacimiento" := DMY2Date(2, 5, 2000);
        Estudiante."Código tutor" := '25';
        Estudiante.Insert(true);

        // 255
        Clear(Estudiante);
        Estudiante.Init();
        Estudiante."Código estudiante" := '255';
        Estudiante.Nombre := 'Martín Pescador, Ana';
        Estudiante.Sexo := Estudiante.Sexo::Femenino;
        Estudiante."Dirección" := 'Plaza Mayor, 14 - 47400';
        Estudiante."Teléfono" := '600998877';
        Estudiante."Fecha de nacimiento" := DMY2Date(15, 7, 1998);
        Estudiante."Código tutor" := '25';
        Estudiante.Insert(true);

        // 789
        Clear(Estudiante);
        Estudiante.Init();
        Estudiante."Código estudiante" := '789';
        Estudiante.Nombre := 'Blanco Casas, Carlos';
        Estudiante.Sexo := Estudiante.Sexo::Masculino;
        Estudiante."Dirección" := 'Avda. Palencia, 3 7ºA – 47011';
        Estudiante."Teléfono" := '983123456';
        Estudiante."Fecha de nacimiento" := DMY2Date(9, 4, 2001);
        Estudiante."Código tutor" := '25';
        Estudiante.Insert(true);
    end;

    local procedure InsertarMatriculas()
    var
        Matricula: Record "Matrículas";
    begin
        Matricula.DeleteAll();

        // C11-01-123
        Clear(Matricula);
        Matricula.Init();
        Matricula."Código curso" := 'C11';
        Matricula."Sección" := '01';
        Matricula."Código estudiante" := '123';
        Matricula."Fecha matricula" := DMY2Date(5, 9, 2021);
        Matricula."Hora matricula" := 100500T;
        Matricula.Insert(true);

        // C11-01-255
        Clear(Matricula);
        Matricula.Init();
        Matricula."Código curso" := 'C11';
        Matricula."Sección" := '01';
        Matricula."Código estudiante" := '255';
        Matricula."Fecha matricula" := DMY2Date(6, 9, 2021);
        Matricula."Hora matricula" := 103200T;
        Matricula.Insert(true);

        // C11-01-789
        Clear(Matricula);
        Matricula.Init();
        Matricula."Código curso" := 'C11';
        Matricula."Sección" := '01';
        Matricula."Código estudiante" := '789';
        Matricula."Fecha matricula" := DMY2Date(10, 9, 2021);
        Matricula."Hora matricula" := 111000T;
        Matricula.Insert(true);

        // C20-02-255
        Clear(Matricula);
        Matricula.Init();
        Matricula."Código curso" := 'C20';
        Matricula."Sección" := '02';
        Matricula."Código estudiante" := '255';
        Matricula."Fecha matricula" := DMY2Date(9, 9, 2021);
        Matricula."Hora matricula" := 130700T;
        Matricula.Insert(true);
    end;

    local procedure InsertarPersonal()
    var
        PersonalRec: Record Personal;
    begin
        PersonalRec.DeleteAll();

        // 900
        Clear(PersonalRec);
        PersonalRec.Init();
        PersonalRec."Código personal" := '900';
        PersonalRec.Nombre := 'Flores Rosas, Carmen';
        PersonalRec.Cargo := 'Administrativo';
        PersonalRec.Sueldo := 980.00;
        PersonalRec.Insert(true);

        // 909
        Clear(PersonalRec);
        PersonalRec.Init();
        PersonalRec."Código personal" := '909';
        PersonalRec.Nombre := 'Prada Barrios, Alberto';
        PersonalRec.Cargo := 'Ayudante';
        PersonalRec.Sueldo := 650.00;
        PersonalRec."Código profesor" := '47';
        PersonalRec.Insert(true);

        // 920
        Clear(PersonalRec);
        PersonalRec.Init();
        PersonalRec."Código personal" := '920';
        PersonalRec.Nombre := 'Puertas Gómez, Santiago';
        PersonalRec.Cargo := 'Conserje';
        PersonalRec.Sueldo := 1050.00;
        PersonalRec.Insert(true);
    end;
}

codeunit 50141 "Carga Datos Init Install"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        Loader: Codeunit "Carga Datos Iniciales";
    begin
        // Para desactivar la autocarga en instalación, comenta la siguiente línea:
        Loader.CargarTodosLosDatosForzado();
    end;
}

codeunit 50142 "Carga Datos Init Upgrade"
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany()
    var
        Loader: Codeunit "Carga Datos Iniciales";
    begin
        // OJO: este proceso borra e inserta datos. Solo úsalo si realmente quieres “resetear” datos en una actualización.
        // Para activarlo, descomenta la siguiente línea:
        // Loader.CargarTodosLosDatosForzado();
    end;
}
