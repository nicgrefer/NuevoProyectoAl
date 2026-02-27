page 50105 "Lista del claustro"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Claustro;
    CardPageId = "Ficha profesor";
    Caption = 'Faculty List', comment = 'ESP=Lista del claustro';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Code', comment = 'ESP=Código del profesor';
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Name', comment = 'ESP=Nombre completo';
                }
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Address', comment = 'ESP=Dirección completa';
                }
                field("Fecha contrato"; Rec."Fecha contrato")
                {
                    ApplicationArea = All;
                    ToolTip = 'Contract Date', comment = 'ESP=Fecha de contratación';
                }
                field("Num ayudantes"; Rec."Num ayudantes")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Assistants (calculated)', comment = 'ESP=Número de ayudantes (calculado)';
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Salary', comment = 'ESP=Sueldo del profesor';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Department Code', comment = 'ESP=Código del departamento';
                }
                field("Nº clases"; Rec."Nº clases")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Classes (calculated)', comment = 'ESP=Número de clases (calculado)';
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
                Caption = 'Calculate Fields', comment = 'ESP=Calcular campos';
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