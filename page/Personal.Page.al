page 50108 "Lista de personal"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Personal;
    CardPageId = "Ficha personal";
    Caption = 'Lista de personal';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código personal"; Rec."Código personal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del personal';
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre completo';
                }
                field("Cargo"; Rec.Cargo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Cargo o puesto';
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Sueldo';
                }
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor (si es ayudante)';
                }
            }
        }
    }
}