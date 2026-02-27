table 50119 "EDUCA RC Cue"
{
    DataClassification = ToBeClassified;
    Caption = 'EDUCA Cue', comment = 'ESP=EDUCA Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key', comment = 'ESP=Clave principal';
            DataClassification = SystemMetadata;
        }
        field(2; "Estudiantes"; Integer)
        {
            Caption = 'Students', comment = 'ESP=Estudiantes';
            FieldClass = FlowField;
            CalcFormula = count(Estudiantes);
            Editable = false;
        }
        field(3; "Matrículas"; Integer)
        {
            Caption = 'Enrollments', comment = 'ESP=Matrículas';
            FieldClass = FlowField;
            CalcFormula = count("Matrículas");
            Editable = false;
        }
        field(4; "Cursos"; Integer)
        {
            Caption = 'Courses', comment = 'ESP=Cursos';
            FieldClass = FlowField;
            CalcFormula = count(Cursos);
            Editable = false;
        }
        field(5; "Clases"; Integer)
        {
            Caption = 'Classes', comment = 'ESP=Clases';
            FieldClass = FlowField;
            CalcFormula = count(Clases);
            Editable = false;
        }
        field(6; "Profesores"; Integer)
        {
            Caption = 'Teachers', comment = 'ESP=Profesores';
            FieldClass = FlowField;
            CalcFormula = count(Claustro);
            Editable = false;
        }
        field(7; "PAS"; Integer)
        {
            Caption = 'Staff', comment = 'ESP=Personal';
            FieldClass = FlowField;
            CalcFormula = count(Personal);
            Editable = false;
        }
        field(8; "Departamentos"; Integer)
        {
            Caption = 'Departments', comment = 'ESP=Departamentos';
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
