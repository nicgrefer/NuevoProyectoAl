page 50128 "RC PAS"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Personal;
    Caption = 'PAS';
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
                field("Código personal"; Rec."Código personal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del personal.';
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre.';
                }
                field("Cargo"; Rec.Cargo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Cargo.';
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Sueldo.';
                }
            }
        }
    }
}
