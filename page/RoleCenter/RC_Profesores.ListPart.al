page 50127 "RC Profesores"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Claustro;
    Caption = 'Teachers', comment = 'ESP=Profesores';
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
                    ToolTip = 'Teacher Code', comment = 'ESP=Código del profesor';
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Name', comment = 'ESP=Nombre del profesor';
                }
                field("Fecha contrato"; Rec."Fecha contrato")
                {
                    ApplicationArea = All;
                    ToolTip = 'Contract Date', comment = 'ESP=Fecha de contratación';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Department', comment = 'ESP=Departamento';
                }
            }
        }
    }
}
