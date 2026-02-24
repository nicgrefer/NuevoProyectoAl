page 50127 "RC Profesores"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Claustro;
    Caption = 'Profesores';
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
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor.';
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre del profesor.';
                }
                field("Fecha contrato"; Rec."Fecha contrato")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fecha de contratación.';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Departamento.';
                }
            }
        }
    }
}
