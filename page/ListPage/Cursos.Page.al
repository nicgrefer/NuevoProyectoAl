page 50100 "Lista de cursos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Cursos;
    CardPageId = "Ficha curso";
    Caption = 'Lista de cursos';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del curso';
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre del curso';
                }
                field("Desc. curso"; Rec."Desc. curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Descripción del curso';
                }
                field("Créditos"; Rec."Créditos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de créditos';
                }
                field("Tarifa"; Rec."Tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tarifa de laboratorio';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del departamento';
                }
            }
        }
    }
}