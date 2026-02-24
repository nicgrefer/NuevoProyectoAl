page 50107 "Lista de departamentos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamentos;
    CardPageId = "Ficha departamento";
    Caption = 'Lista de departamentos';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del departamento';
                }
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                    ToolTip = 'Edificio donde se ubica';
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de despacho';
                }
                field("Código director"; Rec."Código director")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor director';
                }
                field("Promedio tarifa"; Rec."Promedio tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Promedio de tarifa de laboratorio (calculado)';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CalcularPromedio)
            {
                Caption = 'Calcular promedio tarifa';
                ApplicationArea = All;
                Image = Calculate;

                trigger OnAction()
                begin
                    Rec.CalcFields("Promedio tarifa");
                    CurrPage.Update(false);
                end;
            }
        }
    }
}