page 50100 "Lista de cursos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Cursos;
    CardPageId = "Ficha curso";
    Caption = 'Course List', comment = 'ESP=Lista de cursos';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Course Code', comment = 'ESP=Código del curso';
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Course Name', comment = 'ESP=Nombre del curso';
                }
                field("Desc. curso"; Rec."Desc. curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Course Description', comment = 'ESP=Descripción del curso';
                }
                field("Créditos"; Rec."Créditos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Credits', comment = 'ESP=Número de créditos';
                }
                field("Tarifa"; Rec."Tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Laboratory Fee', comment = 'ESP=Tarifa de laboratorio';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Department Code', comment = 'ESP=Código del departamento';
                }
            }
        }
    }
}