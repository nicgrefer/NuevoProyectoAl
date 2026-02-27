page 50118 "Ficha personal"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Personal;
    Caption = 'Staff Card', comment = 'ESP=Ficha personal';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP=General';
                field("Código personal"; Rec."Código personal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Staff Code', comment = 'ESP=Código del personal';
                    Importance = Promoted;
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Name', comment = 'ESP=Nombre completo';
                    Importance = Promoted;
                }
                field("Cargo"; Rec.Cargo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Position', comment = 'ESP=Cargo o puesto';
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Salary', comment = 'ESP=Sueldo';
                }
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Code (if assistant)', comment = 'ESP=Código del profesor (si es ayudante)';
                    LookupPageId = "Lista del claustro";
                }
            }
        }
    }
}
