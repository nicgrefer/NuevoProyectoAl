page 50106 "Lista de clases"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Clases;
    CardPageId = "Ficha clase";
    Caption = 'Lista de clases';

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
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de sección';
                }
                field("Día"; Rec."Día Option")
                {
                    ApplicationArea = All;
                    ToolTip = 'Día de la semana';
                }
                field("Hora"; Rec."Hora")
                {
                    ApplicationArea = All;
                    ToolTip = 'Hora de la clase';
                }
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                    ToolTip = 'Edificio donde se imparte';
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de despacho';
                }
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor';
                }
            }
        }
    }
}