page 50111 "Ficha estudiante"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Estudiantes;
    Caption = 'Ficha estudiante';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del estudiante.';
                    Importance = Promoted;
                }
                field("Nombre"; Rec."Nombre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre completo.';
                    Importance = Promoted;
                }
                field("Sexo"; Rec.Sexo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Sexo del estudiante.';
                }
                field("Fecha de nacimiento"; Rec."Fecha de nacimiento")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fecha de nacimiento.';
                }
            }
            group(Comunicacion)
            {
                Caption = 'Comunicación';
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Dirección completa.';
                }
                field("Teléfono"; Rec."Teléfono")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de teléfono.';
                }
            }
            group(Tutoria)
            {
                Caption = 'Tutoría';
                field("Tutor"; Rec."Código tutor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del profesor tutor.';
                    LookupPageId = "Lista del claustro";
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(NuevaMatricula)
            {
                Caption = 'Nueva matrícula';
                ApplicationArea = All;
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    Matricula: Record "Matrículas";
                begin
                    Matricula.Init();
                    Matricula.Validate("Código estudiante", Rec."Código estudiante");
                    Page.RunModal(Page::"Ficha Matriculas", Matricula);
                end;
            }
        }

        area(Navigation)
        {
            action(VerTutor)
            {
                Caption = 'Tutor';
                ApplicationArea = All;
                Image = User;

                trigger OnAction()
                var
                    Profesor: Record Claustro;
                begin
                    if Rec."Código tutor" = '' then begin
                        Message('El estudiante no tiene tutor asignado.');
                        exit;
                    end;

                    if not Profesor.Get(Rec."Código tutor") then begin
                        Message('El tutor no existe.');
                        exit;
                    end;

                    Page.Run(Page::"Ficha profesor", Profesor);
                end;
            }

            action(VerMatriculas)
            {
                Caption = 'Matrículas';
                ApplicationArea = All;
                Image = List;
                RunObject = page "Lista Matriculas";
                RunPageLink = "Código estudiante" = field("Código estudiante");
            }
        }
    }
}
