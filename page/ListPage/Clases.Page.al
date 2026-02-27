page 50106 "Lista de clases"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Clases;
    CardPageId = "Ficha clase";
    Caption = 'Class List', comment = 'ESP=Lista de clases';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Course Code', comment = 'ESP=Código del curso';
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Section No.', comment = 'ESP=Número de sección';
                }
                field("Día"; Rec."Día Option")
                {
                    ApplicationArea = All;
                    ToolTip = 'Day of Week', comment = 'ESP=Día de la semana';
                }
                field("Hora"; Rec."Hora")
                {
                    ApplicationArea = All;
                    ToolTip = 'Class Time', comment = 'ESP=Hora de la clase';
                }
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                    ToolTip = 'Building', comment = 'ESP=Edificio donde se imparte';
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                    ToolTip = 'Office No.', comment = 'ESP=Número de despacho';
                }
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Code', comment = 'ESP=Código del profesor';
                }
            }
        }
    }
}