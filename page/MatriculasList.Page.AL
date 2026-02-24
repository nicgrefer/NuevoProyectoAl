page 50103 "Lista Matriculas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Matrículas";
    CardPageId = "Ficha Matriculas";
    Editable = true;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    Caption = 'Código curso';
                    ToolTip = 'Código del curso.';
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    Caption = 'Nº de sección';
                    ToolTip = 'Sección de la clase.';
                }
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Código estudiante';
                    ToolTip = 'Código del estudiante.';
                }
            }
        }
        area(FactBoxes)
        {

        }
    }
}