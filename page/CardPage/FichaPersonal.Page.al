page 50118 "Ficha personal"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Personal;
    Caption = 'Ficha personal';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Código personal"; Rec."Código personal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del personal.';
                    Importance = Promoted;
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre completo.';
                    Importance = Promoted;
                }
                field("Cargo"; Rec.Cargo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Cargo o puesto.';
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Sueldo.';
                }
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor (si es ayudante).';
                    LookupPageId = "Lista del claustro";
                }
            }
        }
    }
}
