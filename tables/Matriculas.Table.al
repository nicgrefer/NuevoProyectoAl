table 50104 "Matrículas"
{
    DataClassification = ToBeClassified;
    Caption = 'Enrollments', comment = 'ESP=Matrículas';

    fields
    {
        field(1; "Código curso"; Code[3])
        {
            Caption = 'Course Code', comment = 'ESP=Código curso';
            TableRelation = Cursos."Código curso";
            trigger OnValidate()
            begin
                if "Código curso" = '' then
                    Error('El código del curso no puede estar vacío.');
                Rec."Código curso" := UpperCase(Rec."Código curso");
            end;
        }
        field(2; "Sección"; Text[2])
        {
            Caption = 'Section No.', comment = 'ESP=Nº de sección';
            Numeric = true;
            TableRelation = Clases."Sección" where("Código curso" = field("Código curso"));
            trigger OnValidate()
            begin
                if "Sección" = '' then
                    Error('La sección no puede estar vacía.');
            end;
        }
        field(3; "Código estudiante"; Code[3])
        {
            Caption = 'Student Code', comment = 'ESP=Código estudiante';
            Numeric = true;
            TableRelation = Estudiantes."Código estudiante";
            trigger OnValidate()
            begin
                if "Código estudiante" = '' then
                    Error('El código del estudiante no puede estar vacío.');
            end;
        }
        field(4; "Fecha matricula"; Date)
        {
            Caption = 'Enrollment Date', comment = 'ESP=Fecha de matriculación';
        }
        field(5; "Hora matricula"; Time)
        {
            Caption = 'Enrollment Time', comment = 'ESP=Hora de matriculación';
        }
    }

    keys
    {
        key(pk; "Código curso", "Sección", "Código estudiante")
        {
            Clustered = true;
        }
        key(tiempo; "Fecha matricula", "Hora matricula") { }
    }
}