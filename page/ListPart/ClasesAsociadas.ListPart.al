page 50114 "Clases asociadas"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Clases;
    Caption = 'Clases asociadas';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Día"; Rec."Día Option")
                {
                    ApplicationArea = All;
                    ToolTip = 'Día de la semana.';
                }
                field("Hora"; Rec."Hora")
                {
                    ApplicationArea = All;
                    ToolTip = 'Hora de la clase.';
                }
                field("Profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor.';
                }
            }
        }
    }
}
