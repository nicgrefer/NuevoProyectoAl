page 50120 "EDUCA RC Cues"
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = "EDUCA RC Cue";
    Caption = 'Información';

    layout
    {
        area(Content)
        {
            cuegroup(Informacion)
            {
                Caption = 'Información';

                field(Estudiantes; Rec."Estudiantes")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de estudiantes.';
                    DrillDownPageId = "Lista de estudiantes";
                }
                field(Matriculas; Rec."Matrículas")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de matrículas.';
                    DrillDownPageId = "Lista Matriculas";
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
    end;
}
