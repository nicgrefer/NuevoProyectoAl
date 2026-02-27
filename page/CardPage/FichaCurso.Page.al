page 50109 "Ficha curso"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Cursos;
    Caption = 'Course Card', comment = 'ESP=Ficha curso';

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
                    ToolTip = 'Course Code', comment = 'ESP=Código del curso';
                    Importance = Promoted;
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Course Name', comment = 'ESP=Nombre del curso';
                    Importance = Promoted;
                }
                field("Desc. curso"; Rec."Desc. curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Course Description', comment = 'ESP=Descripción del curso';
                }
                field("Créditos"; Rec."Créditos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Course Credits', comment = 'ESP=Créditos del curso';
                }
                field("Tarifa"; Rec."Tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Laboratory Fee', comment = 'ESP=Tarifa de laboratorio';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Department Code', comment = 'ESP=Código del departamento';
                    LookupPageId = "Lista de departamentos";
                }
            }
        }
        area(FactBoxes)
        {
            part(ClasesAsociadas; "Clases asociadas")
            {
                ApplicationArea = All;
                SubPageLink = "Código curso" = field("Código curso");
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(VerDepartamento)
            {
                Caption = 'Department', comment = 'ESP=Departamento';
                ApplicationArea = All;
                Image = View;
                RunObject = page "Ficha departamento";
                RunPageLink = "Código dept." = field("Código dept.");
            }
        }
    }
}
