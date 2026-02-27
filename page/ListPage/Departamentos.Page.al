page 50107 "Lista de departamentos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamentos;
    CardPageId = "Ficha departamento";
    Caption = 'Department List', comment = 'ESP=Lista de departamentos';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Department Code', comment = 'ESP=Código del departamento';
                }
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                    ToolTip = 'Building', comment = 'ESP=Edificio donde se ubica';
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                    ToolTip = 'Office No.', comment = 'ESP=Número de despacho';
                }
                field("Código director"; Rec."Código director")
                {
                    ApplicationArea = All;
                    ToolTip = 'Director Code', comment = 'ESP=Código del profesor director';
                }
                field("Promedio tarifa"; Rec."Promedio tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Average Laboratory Fee', comment = 'ESP=Promedio de tarifa de laboratorio (calculado)';
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
                Caption = 'Calculate Average Fee', comment = 'ESP=Calcular promedio tarifa';
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