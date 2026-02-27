page 50112 "Ficha profesor"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Claustro;
    Caption = 'Teacher Card', comment = 'ESP=Ficha profesor';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP=General';
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Code', comment = 'ESP=Código del profesor';
                    Importance = Promoted;
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Name', comment = 'ESP=Nombre completo';
                    Importance = Promoted;
                }
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Full Address', comment = 'ESP=Dirección completa';
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Department Code', comment = 'ESP=Código del departamento';
                    LookupPageId = "Lista de departamentos";
                }
            }
            group(Laboral)
            {
                Caption = 'Work', comment = 'ESP=Laboral';
                field("Fecha contrato"; Rec."Fecha contrato")
                {
                    ApplicationArea = All;
                    ToolTip = 'Contract Date', comment = 'ESP=Fecha de contratación';
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Teacher Salary', comment = 'ESP=Sueldo del profesor';
                }
                field("Filtro día"; Rec."Filtro día")
                {
                    ApplicationArea = All;
                    ToolTip = 'Day Filter', comment = 'ESP=Filtro para el cálculo de clases por día';
                }
            }
            group(AlumnosTutoria)
            {
                Caption = 'Tutored Students', comment = 'ESP=Alumnos tutoría';
                part(AlumnosTutoriaPart; "Alumnos tutoría")
                {
                    ApplicationArea = All;
                    SubPageLink = "Código tutor" = field("Código profesor");
                }
            }
        }
        area(FactBoxes)
        {
            part(Estadisticas; "Estadísticas profesor")
            {
                ApplicationArea = All;
                SubPageLink = "Código profesor" = field("Código profesor");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(NuevoAlumno)
            {
                Caption = 'New Student', comment = 'ESP=Nuevo alumno';
                ApplicationArea = All;
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    Estudiante: Record Estudiantes;
                begin
                    Estudiante.Init();
                    Estudiante.Validate("Código tutor", Rec."Código profesor");
                    Page.RunModal(Page::"Ficha estudiante", Estudiante);
                end;
            }
        }

        area(Navigation)
        {
            action(VerDepartamento)
            {
                Caption = 'Department', comment = 'ESP=Departamento';
                ApplicationArea = All;
                Image = View;
                RunObject = page "Ficha departamento";
                RunPageLink = "Código dept." = field("Código dept.");
            }
        }
    }
}
