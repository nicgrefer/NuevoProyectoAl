page 50111 "Ficha estudiante"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Estudiantes;
    Caption = 'Student Card', comment = 'ESP=Ficha estudiante';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP=General';
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    ToolTip = 'Student Code', comment = 'ESP=Código del estudiante';
                    Importance = Promoted;
                }
                field("Nombre"; Rec."Nombre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Name', comment = 'ESP=Nombre completo';
                    Importance = Promoted;
                }
                field("Sexo"; Rec.Sexo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gender', comment = 'ESP=Sexo del estudiante';
                }
                field("Fecha de nacimiento"; Rec."Fecha de nacimiento")
                {
                    ApplicationArea = All;
                    ToolTip = 'Birth Date', comment = 'ESP=Fecha de nacimiento';
                }
            }
            group(Comunicacion)
            {
                Caption = 'Communication', comment = 'ESP=Comunicación';
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
            }
            group(Tutoria)
            {
                Caption = 'Tutoring', comment = 'ESP=Tutoría';
                field("Tutor"; Rec."Código tutor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Tutor Code', comment = 'ESP=Código del profesor tutor';
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
                Caption = 'New Enrollment', comment = 'ESP=Nueva matrícula';
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
                Caption = 'Tutor', comment = 'ESP=Tutor';
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
                Caption = 'Enrollments', comment = 'ESP=Matrículas';
                ApplicationArea = All;
                Image = List;
                RunObject = page "Lista Matriculas";
                RunPageLink = "Código estudiante" = field("Código estudiante");
            }
        }
    }
}
