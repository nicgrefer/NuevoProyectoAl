page 50117 "Estadísticas profesor"
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = Claustro;
    Caption = 'Estadísticas';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Estadísticas';
                field("Nº ayudantes"; Rec."Num ayudantes")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de ayudantes del profesor.';

                    trigger OnDrillDown()
                    var
                        PersonalRec: Record Personal;
                    begin
                        PersonalRec.SetRange("Código profesor", Rec."Código profesor");
                        PersonalRec.SetRange(Cargo, 'Ayudante');
                        Page.Run(Page::"Lista de personal", PersonalRec);
                    end;
                }
                field("Nº clases"; Rec."Nº clases")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de clases que imparte.';

                    trigger OnDrillDown()
                    var
                        Clase: Record Clases;
                        DiaFiltro: Text;
                    begin
                        Clase.SetRange("Código profesor", Rec."Código profesor");
                        DiaFiltro := Rec.GetFilter("Filtro día");
                        if DiaFiltro <> '' then
                            Clase.SetFilter("Día Option", DiaFiltro);
                        Page.Run(Page::"Lista de clases", Clase);
                    end;
                }
            }
        }
    }
}
