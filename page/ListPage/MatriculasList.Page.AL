page 50103 "Lista Matriculas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Matrículas";
    CardPageId = "Ficha Matriculas";
    Editable = true;
    Caption = 'Enrollment List', comment = 'ESP=Lista de matrículas';


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    Caption = 'Course Code', comment = 'ESP=Código curso';
                    ToolTip = 'Course Code', comment = 'ESP=Código del curso';
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    Caption = 'Section No.', comment = 'ESP=Nº de sección';
                    ToolTip = 'Section No.', comment = 'ESP=Sección de la clase';
                }
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Student Code', comment = 'ESP=Código estudiante';
                    ToolTip = 'Student Code', comment = 'ESP=Código del estudiante';
                }
            }
        }
        area(FactBoxes)
        {

        }
    }
}