page 50108 "Lista de personal"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Personal;
    CardPageId = "Ficha personal";
    Caption = 'Staff List', comment = 'ESP=Lista de personal';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código personal"; Rec."Código personal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Staff Code', comment = 'ESP=Código del personal';
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Name', comment = 'ESP=Nombre completo';
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
                }
            }
        }
    }
}