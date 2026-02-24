page 50113 "Ficha departamento"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Departamentos;
    Caption = 'Ficha departamento';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del departamento.';
                    Importance = Promoted;
                }
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                    ToolTip = 'Edificio donde se ubica.';
                    Importance = Promoted;
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de despacho.';
                }
                field("Código director"; Rec."Código director")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del director.';
                    LookupPageId = "Lista del claustro";
                }
                field("Promedio tarifa"; Rec."Promedio tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Promedio de tarifa de laboratorio (calculado).';

                    trigger OnDrillDown()
                    var
                        Curso: Record Cursos;
                    begin
                        Curso.SetRange("Código dept.", Rec."Código dept.");
                        Page.Run(Page::"Lista de cursos", Curso);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group(Navegar)
            {
                Caption = 'Navegar';

                action(Profesores)
                {
                    Caption = 'Profesores';
                    ApplicationArea = All;
                    Image = List;
                    RunObject = page "Lista del claustro";
                    RunPageLink = "Código dept." = field("Código dept.");
                }

                action(Director)
                {
                    Caption = 'Director';
                    ApplicationArea = All;
                    Image = View;

                    trigger OnAction()
                    var
                        Profesor: Record Claustro;
                    begin
                        if Rec."Código director" = '' then
                            exit;

                        if not Profesor.Get(Rec."Código director") then
                            exit;

                        Page.Run(Page::"Ficha profesor", Profesor);
                    end;
                }
            }
        }
    }
}
