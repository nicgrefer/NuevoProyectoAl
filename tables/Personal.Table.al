table 50106 Personal
{
    DataClassification = ToBeClassified;
    Caption = 'Personal';

    fields
    {
        field(1; "Código personal"; Code[3])
        {
            Caption = 'Código personal';
            Numeric = true;
            trigger OnValidate()
            begin
                if "Código personal" = '' then
                    Error('El código del personal no puede estar vacío.');
            end;
        }
        field(2; Nombre; Text[30])
        {
            Caption = 'Nombre';
            trigger OnValidate()
            begin
                if Nombre = '' then
                    Error('El nombre no puede estar vacío.');
            end;
        }
        field(3; Cargo; Text[20])
        {
            Caption = 'Cargo';
        }
        field(4; Sueldo; Decimal)
        {
            Caption = 'Sueldo';
            DecimalPlaces = 2;
            MinValue = 0;
            trigger OnValidate()
            begin
                if Sueldo < 0 then
                    Error('El sueldo debe ser un valor positivo.');
            end;
        }
        field(5; "Código profesor"; Code[2])
        {
            Caption = 'Código profesor (si es ayudante)';
            TableRelation = Claustro."Código profesor";
        }
    }

    keys
    {
        key(pk; "Código personal")
        {
            Clustered = true;
        }
        key(nombre; Nombre) { }
        key(cargo; Cargo) { }
    }
}