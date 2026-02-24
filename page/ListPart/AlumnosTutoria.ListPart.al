page 50116 "Alumnos tutoría"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = Estudiantes;
    Caption = 'Alumnos tutoría';
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
                    ToolTip = 'Código del estudiante.';
                }
                field("Nombre"; Rec."Nombre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Nombre del estudiante.';
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
                Caption = 'Estudiante';

                action(Matriculas)
                {
                    Caption = 'Matrículas';
                    ApplicationArea = All;
                    Image = List;
                    RunObject = page "Lista Matriculas";
                    RunPageLink = "Código estudiante" = field("Código estudiante");
                }
                action(Datos)
                {
                    Caption = 'Datos';
                    ApplicationArea = All;
                    Image = View;
                    RunObject = page "Ficha estudiante";
                    RunPageLink = "Código estudiante" = field("Código estudiante");
                }
            }
        }
    }
}
