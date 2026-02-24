page 50109 "Ficha curso"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Cursos;
    Caption = 'Ficha curso';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del curso.';
                    Importance = Promoted;
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre del curso.';
                    Importance = Promoted;
                }
                field("Desc. curso"; Rec."Desc. curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Descripción del curso.';
                }
                field("Créditos"; Rec."Créditos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Créditos del curso.';
                }
                field("Tarifa"; Rec."Tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tarifa de laboratorio.';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del departamento.';
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
                Caption = 'Departamento';
                ApplicationArea = All;
                Image = View;
                RunObject = page "Ficha departamento";
                RunPageLink = "Código dept." = field("Código dept.");
            }
        }
    }
}
