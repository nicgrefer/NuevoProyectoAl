page 50104 "Ficha Matriculas"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Matrículas";
    Caption = 'Enrollment Card', comment = 'ESP=Ficha de matrícula';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP=General';
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    Caption = 'Course Code', comment = 'ESP=Código curso';
                    ToolTip = 'Course Code', comment = 'ESP=Código del curso';
                    Importance = Promoted;
                    LookupPageId = "Lista de cursos";
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    Caption = 'Section No.', comment = 'ESP=Nº de sección';
                    ToolTip = 'Section No.', comment = 'ESP=Sección de la clase';
                    Importance = Promoted;
                    LookupPageId = "Lista de clases";
                }
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Student Code', comment = 'ESP=Código estudiante';
                    ToolTip = 'Student Code', comment = 'ESP=Código del estudiante';
                    Importance = Promoted;
                    LookupPageId = "Lista de estudiantes";
                }
                field("Fecha matricula"; Rec."Fecha matricula")
                {
                    ApplicationArea = All;
                    Caption = 'Enrollment Date', comment = 'ESP=Fecha matricula';
                    ToolTip = 'Enrollment Date', comment = 'ESP=Fecha de la matrícula';
                    Importance = Promoted;
                }
                field("Hora matricula"; Rec."Hora matricula")
                {
                    ApplicationArea = All;
                    Caption = 'Enrollment Time', comment = 'ESP=Hora matricula';
                    ToolTip = 'Enrollment Time', comment = 'ESP=Hora de la matrícula';
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
                Caption = 'Information', comment = 'ESP=Información';

                action(VerCurso)
                {
                    Caption = 'Course', comment = 'ESP=Curso';
                    ApplicationArea = All;
                    Image = View;
                    RunObject = page "Ficha curso";
                    RunPageLink = "Código curso" = field("Código curso");
                }
                action(VerClase)
                {
                    Caption = 'Class', comment = 'ESP=Clase';
                    ApplicationArea = All;
                    Image = View;
                    RunObject = page "Ficha clase";
                    RunPageLink = "Código curso" = field("Código curso"), "Sección" = field("Sección");
                }
            }

            group(Estudiante)
            {
                Caption = 'Student', comment = 'ESP=Estudiante';

                action(VerDatosEstudiante)
                {
                    Caption = 'Data', comment = 'ESP=Datos';
                    ApplicationArea = All;
                    Image = View;
                    RunObject = page "Ficha estudiante";
                    RunPageLink = "Código estudiante" = field("Código estudiante");
                }
                action(VerMatriculasEstudiante)
                {
                    Caption = 'Enrollments', comment = 'ESP=Matrículas';
                    ApplicationArea = All;
                    Image = List;
                    RunObject = page "Lista Matriculas";
                    RunPageLink = "Código estudiante" = field("Código estudiante");
                }
                action(VerTutor)
                {
                    Caption = 'Tutor', comment = 'ESP=Tutor';
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