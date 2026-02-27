page 50116 "Alumnos tutoría"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Estudiantes;
    Caption = 'Tutored Students', comment = 'ESP=Alumnos tutoría';
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    ToolTip = 'Student Code', comment = 'ESP=Código del estudiante';
                }
                field("Nombre"; Rec."Nombre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Student Name', comment = 'ESP=Nombre del estudiante';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group(Estudiante)
            {
                Caption = 'Student', comment = 'ESP=Estudiante';

                action(Matriculas)
                {
                    Caption = 'Enrollments', comment = 'ESP=Matrículas';
                    ApplicationArea = All;
                    Image = List;
                    RunObject = page "Lista Matriculas";
                    RunPageLink = "Código estudiante" = field("Código estudiante");
                }
                action(Datos)
                {
                    Caption = 'Data', comment = 'ESP=Datos';
                    ApplicationArea = All;
                    Image = View;
                    RunObject = page "Ficha estudiante";
                    RunPageLink = "Código estudiante" = field("Código estudiante");
                }
            }
        }
    }
}
