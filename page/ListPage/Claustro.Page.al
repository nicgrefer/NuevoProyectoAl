page 50105 "Lista del claustro"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Claustro;
    CardPageId = "Ficha profesor";
    Caption = 'Lista del claustro';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor';
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre completo';
                }
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Dirección completa';
                }
                field("Fecha contrato"; Rec."Fecha contrato")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fecha de contratación';
                }
                field("Num ayudantes"; Rec."Num ayudantes")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de ayudantes (calculado)';
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Sueldo del profesor';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del departamento';
                }
                field("Nº clases"; Rec."Nº clases")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de clases (calculado)';
                }
            }
        }
        area(Factboxes)
        {
            systempart(Links; Links)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CalcularCampos)
            {
                Caption = 'Calcular campos';
                ApplicationArea = All;
                Image = CalculateLines;

                trigger OnAction()
                begin
                    Rec.CalcFields("Num ayudantes", "Nº clases");
                    CurrPage.Update(false);
                end;
            }
        }
    }
}