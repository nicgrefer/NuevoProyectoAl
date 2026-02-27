page 50128 "RC PAS"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Personal;
    Caption = 'PAS', comment = 'ESP=Personal de Administración y Servicios';
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
                    ToolTip = 'Staff Code', comment = 'ESP=Código del personal';
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Name', comment = 'ESP=Nombre';
                }
                field("Cargo"; Rec.Cargo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Position', comment = 'ESP=Cargo';
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Salary', comment = 'ESP=Sueldo';
                }
            }
        }
    }
}
