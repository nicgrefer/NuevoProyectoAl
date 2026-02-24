page 50102 "Lista de estudiantes"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Estudiantes;
    CardPageId = "Ficha estudiante";
    Caption = 'Lista de estudiantes';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del estudiante';
                }
                field("Nombre"; Rec."Nombre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre completo';
                }
                field("Sexo"; Rec.Sexo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Sexo del estudiante';
                }
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Dirección completa';
                }
                field("Teléfono"; Rec."Teléfono")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de teléfono';
                }
                field("Fecha de nacimiento"; Rec."Fecha de nacimiento")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fecha de nacimiento';
                }
                field("Código tutor"; Rec."Código tutor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor tutor';
                }
            }
        }
    }
}