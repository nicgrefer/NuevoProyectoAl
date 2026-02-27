page 50121 "RC Estudiantes"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Estudiantes;
    Caption = 'Students', comment = 'ESP=Alumnos';
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
                    ToolTip = 'Student Code', comment = 'ESP=Código del estudiante';
                }
                field("Nombre"; Rec."Nombre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Student Name', comment = 'ESP=Nombre del estudiante';
                }
                field("Teléfono"; Rec."Teléfono")
                {
                    ApplicationArea = All;
                    ToolTip = 'Phone', comment = 'ESP=Teléfono';
                }
                field("Código tutor"; Rec."Código tutor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tutor Code', comment = 'ESP=Código del tutor';
                }
            }
        }
    }
}
