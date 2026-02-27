page 50114 "Clases asociadas"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Clases;
    Caption = 'Associated Classes', comment = 'ESP=Clases asociadas';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
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
                field("Profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Code', comment = 'ESP=Código del profesor';
                }
            }
        }
    }
}
