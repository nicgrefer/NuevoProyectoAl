page 50110 "Ficha clase"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Clases;
    Caption = 'Ficha clase';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del curso.';
                    Importance = Promoted;
                    LookupPageId = "Lista de cursos";
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Sección de la clase.';
                    Importance = Promoted;
                }
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
            }
            group(Localizacion)
            {
                Caption = 'Localización';
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                    ToolTip = 'Edificio donde se imparte.';
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de despacho.';
                }
            }
            group(Profesores)
            {
                Caption = 'Profesores';
                field("Profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor.';
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
