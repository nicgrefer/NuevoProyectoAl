page 50102 "Lista de estudiantes"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Estudiantes;
    CardPageId = "Ficha estudiante";
    Caption = 'Student List', comment = 'ESP=Lista de estudiantes';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    ToolTip = 'Student Code', comment = 'ESP=Código del estudiante';
                }
                field("Nombre"; Rec."Nombre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Name', comment = 'ESP=Nombre completo';
                }
                field("Sexo"; Rec.Sexo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gender', comment = 'ESP=Sexo del estudiante';
                }
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Address', comment = 'ESP=Dirección completa';
                }
                field("Teléfono"; Rec."Teléfono")
                {
                    ApplicationArea = All;
                    ToolTip = 'Phone Number', comment = 'ESP=Número de teléfono';
                }
                field("Fecha de nacimiento"; Rec."Fecha de nacimiento")
                {
                    ApplicationArea = All;
                    ToolTip = 'Birth Date', comment = 'ESP=Fecha de nacimiento';
                }
                field("Código tutor"; Rec."Código tutor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tutor Code', comment = 'ESP=Código del profesor tutor';
                }
            }
        }
    }
}