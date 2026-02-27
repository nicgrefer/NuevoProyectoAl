page 50115 "Estadísticas clase"
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = Clases;
    Caption = 'Statistics', comment = 'ESP=Estadísticas';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Statistics', comment = 'ESP=Estadísticas';
                field("Nº matrículas"; Rec."Nº matrículas")
                {
                    ApplicationArea = All;
                    ToolTip = 'No. Enrollments', comment = 'ESP=Número de matrículas de la clase';

                    trigger OnDrillDown()
                    var
                        Matricula: Record "Matrículas";
                    begin
                        Matricula.SetRange("Código curso", Rec."Código curso");
                        Matricula.SetRange("Sección", Rec."Sección");
                        Page.Run(Page::"Lista Matriculas", Matricula);
                    end;
                }
            }
        }
    }
}
