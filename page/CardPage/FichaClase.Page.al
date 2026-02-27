page 50110 "Ficha clase"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Clases;
    Caption = 'Class Card', comment = 'ESP=Ficha clase';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP=General';
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Course Code', comment = 'ESP=Código del curso';
                    Importance = Promoted;
                    LookupPageId = "Lista de cursos";
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Class Section', comment = 'ESP=Sección de la clase';
                    Importance = Promoted;
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
            }
            group(Localizacion)
            {
                Caption = 'Location', comment = 'ESP=Localización';
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
            }
            group(Profesores)
            {
                Caption = 'Teachers', comment = 'ESP=Profesores';
                field("Profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Code', comment = 'ESP=Código del profesor';
                    LookupPageId = "Lista del claustro";
                }
            }
        }
        area(FactBoxes)
        {
            part(Estadisticas; "Estadísticas clase")
            {
                ApplicationArea = All;
                SubPageLink = "Código curso" = field("Código curso"), "Sección" = field("Sección");
            }
        }
    }
}
