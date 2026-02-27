table 50103 Estudiantes
{
    DataClassification = ToBeClassified;
    Caption = 'Students', comment = 'ESP=Estudiantes';

    fields
    {
        field(1; "Código estudiante"; Code[3])
        {
            Caption = 'Student Code', comment = 'ESP=Código estudiante';
            Numeric = true;
            trigger OnValidate()
            begin
                if Rec."Código estudiante" = '' then
                    Error('El código de estudiante no puede estar vacío.');
            end;
        }
        field(2; "Nombre"; Text[30])
        {
            Caption = 'Name', comment = 'ESP=Nombre';
            trigger OnValidate()
            begin
                if Rec.Nombre = '' then
                    Error('El nombre no puede estar vacío.');
            end;
        }
        field(3; "Sexo"; Enum SexoEnum)
        {
            Caption = 'Gender', comment = 'ESP=Sexo';
        }
        field(4; "Dirección"; Text[50])
        {
            Caption = 'Address', comment = 'ESP=Dirección';
        }
        field(5; "Teléfono"; Text[9])
        {
            Caption = 'Phone', comment = 'ESP=Teléfono';
            Numeric = true;
        }
        field(6; "Fecha de nacimiento"; Date)
        {
            Caption = 'Birth Date', comment = 'ESP=Fecha de nacimiento';
        }
        field(7; "Código tutor"; Code[2])
        {
            Caption = 'Tutor Code', comment = 'ESP=Código tutor';
            TableRelation = Claustro."Código profesor";
        }
    }

    keys
    {
        key(pk; "Código estudiante")
        {
            Clustered = true;
        }
        key(nombre; Nombre) { }
        key(direccion; Dirección) { }
        key(telefono; Teléfono) { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Código estudiante", Nombre, Sexo)
        {
        }
    }
}