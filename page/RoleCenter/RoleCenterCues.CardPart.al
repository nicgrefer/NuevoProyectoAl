page 50120 "EDUCA RC Cues"
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = "EDUCA RC Cue";
    Caption = 'Information', comment = 'ESP=Información';

    layout
    {
        area(Content)
        {
            cuegroup(Informacion)
            {
                ShowCaption = false;

                field(Estudiantes; Rec."Estudiantes")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Students', comment = 'ESP=Número de estudiantes';
                    DrillDownPageId = "Lista de estudiantes";
                }
                field(Matriculas; Rec."Matrículas")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Enrollments', comment = 'ESP=Número de matrículas';
                    DrillDownPageId = "Lista Matriculas";
                }
                field(Cursos; Rec."Cursos")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Courses', comment = 'ESP=Número de cursos';
                    DrillDownPageId = "Lista de cursos";
                }
                field(Clases; Rec."Clases")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Classes', comment = 'ESP=Número de clases';
                    DrillDownPageId = "Lista de clases";
                }
                field(Profesores; Rec."Profesores")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Teachers', comment = 'ESP=Número de profesores';
                    DrillDownPageId = "Lista del claustro";
                }
                field(PAS; Rec."PAS")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Staff', comment = 'ESP=Número de personal';
                    DrillDownPageId = "Lista de personal";
                }
                field(Departamentos; Rec."Departamentos")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Departments', comment = 'ESP=Número de departamentos';
                    DrillDownPageId = "Lista de departamentos";
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group(Nuevo)
            {
                Caption = 'New', comment = 'ESP=Nuevo';

                action(NuevoEstudiante)
                {
                    Caption = 'New Student', comment = 'ESP=Nuevo estudiante';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha estudiante";
                    RunPageMode = Create;
                }
                action(NuevaMatricula)
                {
                    Caption = 'New Enrollment', comment = 'ESP=Nueva matrícula';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = page "Ficha Matriculas";
                    RunPageMode = Create;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get('1') then begin
            Rec.Init();
            Rec."Primary Key" := '1';
            Rec.Insert();
        end;

        Rec.CalcFields(
            "Estudiantes",
            "Matrículas",
            "Cursos",
            "Clases",
            "Profesores",
            "PAS",
            "Departamentos");
    end;
}
