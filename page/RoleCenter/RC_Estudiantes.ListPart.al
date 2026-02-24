page 50121 "RC Estudiantes"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Estudiantes;
    Caption = 'Alumnos';
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del estudiante.';
                }
                field("Nombre"; Rec."Nombre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre del estudiante.';
                }
                field("Teléfono"; Rec."Teléfono")
                {
                    ApplicationArea = All;
                    ToolTip = 'Teléfono.';
                }
                field("Código tutor"; Rec."Código tutor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del tutor.';
                }
            }
        }
    }
}
