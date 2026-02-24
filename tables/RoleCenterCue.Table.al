table 50119 "EDUCA RC Cue"
{
    DataClassification = ToBeClassified;
    Caption = 'EDUCA Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; "Estudiantes"; Integer)
        {
            Caption = 'Estudiantes';
            FieldClass = FlowField;
            CalcFormula = count(Estudiantes);
            Editable = false;
        }
        field(3; "Matrículas"; Integer)
        {
            Caption = 'Matrículas';
            FieldClass = FlowField;
            CalcFormula = count("Matrículas");
            Editable = false;
        }
        field(4; "Cursos"; Integer)
        {
            Caption = 'Cursos';
            FieldClass = FlowField;
            CalcFormula = count(Cursos);
            Editable = false;
        }
        field(5; "Clases"; Integer)
        {
            Caption = 'Clases';
            FieldClass = FlowField;
            CalcFormula = count(Clases);
            Editable = false;
        }
        field(6; "Profesores"; Integer)
        {
            Caption = 'Profesores';
            FieldClass = FlowField;
            CalcFormula = count(Claustro);
            Editable = false;
        }
        field(7; "PAS"; Integer)
        {
            Caption = 'PAS';
            FieldClass = FlowField;
            CalcFormula = count(Personal);
            Editable = false;
        }
        field(8; "Departamentos"; Integer)
        {
            Caption = 'Departamentos';
            FieldClass = FlowField;
            CalcFormula = count(Departamentos);
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
