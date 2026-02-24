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
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
