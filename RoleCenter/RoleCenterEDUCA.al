page 50101 "Rol Secretaria-Administracion"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    Caption = 'Secretaría - Administración';

    layout
    {
        area(RoleCenter)
        {
            part(HeaderPart; "EDUCA Cabecera")
            {
                ApplicationArea = All;
            }

            group(Left)
            {
                Caption = 'Secretaría - Administración';

                part(InfoCues; "EDUCA RC Cues")
                {
                    ApplicationArea = All;
                }

                part(AlumnosList; "RC Estudiantes")
                {
                    ApplicationArea = All;
                }
            }

            group(Right)
            {
                part(ProfesoresList; "RC Profesores")
                {
                    ApplicationArea = All;
                }

                part(PersonalList; "RC PAS")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Creation)
        {
            group(Nuevo)
            {
                Caption = 'Nuevo';

                action(NuevoDepartamento)
                {
                    Caption = 'Nuevo departamento';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha departamento";
                    RunPageMode = Create;
                }

                action(NuevoCurso)
                {
                    Caption = 'Nuevo curso';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha curso";
                    RunPageMode = Create;
                }

                action(NuevoProfesor)
                {
                    Caption = 'Nuevo profesor';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha profesor";
                    RunPageMode = Create;
                }

                action(NuevoEstudiante)
                {
                    Caption = 'Nuevo estudiante';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha estudiante";
                    RunPageMode = Create;
                }

                action(NuevaClase)
                {
                    Caption = 'Nueva clase';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha clase";
                    RunPageMode = Create;
                }

                action(NuevaMatricula)
                {
                    Caption = 'Nueva matrícula';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha Matriculas";
                    RunPageMode = Create;
                }

                action(NuevoPersonal)
                {
                    Caption = 'Nuevo personal';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha personal";
                    RunPageMode = Create;
                }
            }
        }

        area(Processing)
        {
            group(SecretariaAdministracionMenu)
            {
                Caption = 'Secretaría - Administración';

                group(Listas)
                {
                    Caption = 'Listas';

                    action(OpenDepartamentos)
                    {
                        Caption = 'Departamentos';
                        ApplicationArea = All;
                        RunObject = page "Lista de departamentos";
                    }

                    action(OpenCursos)
                    {
                        Caption = 'Cursos';
                        ApplicationArea = All;
                        RunObject = page "Lista de cursos";
                    }

                    action(OpenClaustro)
                    {
                        Caption = 'Claustro';
                        ApplicationArea = All;
                        RunObject = page "Lista del claustro";
                    }

                    action(OpenEstudiantes)
                    {
                        Caption = 'Estudiantes';
                        ApplicationArea = All;
                        RunObject = page "Lista de estudiantes";
                    }

                    action(OpenClases)
                    {
                        Caption = 'Clases';
                        ApplicationArea = All;
                        RunObject = page "Lista de clases";
                    }

                    action(OpenMatriculas)
                    {
                        Caption = 'Matrículas';
                        ApplicationArea = All;
                        RunObject = page "Lista Matriculas";
                    }

                    action(OpenPersonal)
                    {
                        Caption = 'Personal';
                        ApplicationArea = All;
                        RunObject = page "Lista de personal";
                    }
                }
            }
        }
        area(Embedding)
        {
            action(RefreshRoleCenter)
            {
                Caption = 'Actualizar';
                Image = Refresh;
            }
        }
    }
}