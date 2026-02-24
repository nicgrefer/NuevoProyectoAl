page 50104 "Ficha Matriculas"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Matrículas";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    Caption = 'Código curso';
                    ToolTip = 'Código del curso.';
                    Importance = Promoted;
                    LookupPageId = "Lista de cursos";
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    Caption = 'Nº de sección';
                    ToolTip = 'Sección de la clase.';
                    Importance = Promoted;
                    LookupPageId = "Lista de clases";
                }
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Código estudiante';
                    ToolTip = 'Código del estudiante.';
                    Importance = Promoted;
                    LookupPageId = "Lista de estudiantes";
                }
                field("Fecha matricula"; Rec."Fecha matricula")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha matricula';
                    ToolTip = 'Fecha de la matrícula.';
                    Importance = Promoted;
                }
                field("Hora matricula"; Rec."Hora matricula")
                {
                    ApplicationArea = All;
                    Caption = 'Hora matricula';
                    ToolTip = 'Hora de la matrícula.';
                    Importance = Promoted;
                }
            }
        }
        area(FactBoxes)
        {

        }
    }

    actions
    {
        area(Navigation)
        {
            group(Informacion)
            {
                Caption = 'Información';

                action(VerCurso)
                {
                    Caption = 'Curso';
                    ApplicationArea = All;
                    Image = View;
                    RunObject = page "Ficha curso";
                    RunPageLink = "Código curso" = field("Código curso");
                }
                action(VerClase)
                {
                    Caption = 'Clase';
                    ApplicationArea = All;
                    Image = View;
                    RunObject = page "Ficha clase";
                    RunPageLink = "Código curso" = field("Código curso"), "Sección" = field("Sección");
                }
            }

            group(Estudiante)
            {
                Caption = 'Estudiante';

                action(VerDatosEstudiante)
                {
                    Caption = 'Datos';
                    ApplicationArea = All;
                    Image = View;
                    RunObject = page "Ficha estudiante";
                    RunPageLink = "Código estudiante" = field("Código estudiante");
                }
                action(VerMatriculasEstudiante)
                {
                    Caption = 'Matrículas';
                    ApplicationArea = All;
                    Image = List;
                    RunObject = page "Lista Matriculas";
                    RunPageLink = "Código estudiante" = field("Código estudiante");
                }
                action(VerTutor)
                {
                    Caption = 'Tutor';
                    ApplicationArea = All;
                    Image = User;

                    trigger OnAction()
                    var
                        EstudianteRec: Record Estudiantes;
                        ProfesorRec: Record Claustro;
                    begin
                        if Rec."Código estudiante" = '' then
                            exit;

                        if not EstudianteRec.Get(Rec."Código estudiante") then begin
                            Message('No existe el estudiante seleccionado.');
                            exit;
                        end;

                        if EstudianteRec."Código tutor" = '' then begin
                            Message('El estudiante no tiene tutor asignado.');
                            exit;
                        end;

                        if not ProfesorRec.Get(EstudianteRec."Código tutor") then begin
                            Message('El tutor no existe.');
                            exit;
                        end;

                        Page.Run(Page::"Ficha profesor", ProfesorRec);
                    end;
                }
            }
        }
    }
}