page 50113 "Ficha departamento"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Departamentos;
    Caption = 'Department Card', comment = 'ESP=Ficha departamento';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP=General';
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Department Code', comment = 'ESP=Código del departamento';
                    Importance = Promoted;
                }
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                    ToolTip = 'Building', comment = 'ESP=Edificio donde se ubica';
                    Importance = Promoted;
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                    ToolTip = 'Office No.', comment = 'ESP=Número de despacho';
                }
                field("Código director"; Rec."Código director")
                {
                    ApplicationArea = All;
                    ToolTip = 'Director Code', comment = 'ESP=Código del director';
                    LookupPageId = "Lista del claustro";
                }
                field("Promedio tarifa"; Rec."Promedio tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Average Laboratory Fee', comment = 'ESP=Promedio de tarifa de laboratorio (calculado)';

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
                Caption = 'Navigate', comment = 'ESP=Navegar';

                action(Profesores)
                {
                    Caption = 'Teachers', comment = 'ESP=Profesores';
                    ApplicationArea = All;
                    Image = List;
                    RunObject = page "Lista del claustro";
                    RunPageLink = "Código dept." = field("Código dept.");
                }

                action(Director)
                {
                    Caption = 'Director', comment = 'ESP=Director';
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
