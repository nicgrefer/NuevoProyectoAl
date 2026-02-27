table 50105 Claustro
{
    DataClassification = ToBeClassified;
    Caption = 'Faculty', comment = 'ESP=Claustro';

    fields
    {
        field(1; "Código profesor"; Code[2])
        {
            Caption = 'Teacher Code', comment = 'ESP=Código profesor';
            Numeric = true;
            trigger OnValidate()
            begin
                if "Código profesor" = '' then
                    Error('El código del profesor no puede estar vacío.');
            end;
        }
        field(2; Nombre; Text[30])
        {
            Caption = 'Name', comment = 'ESP=Nombre';
            trigger OnValidate()
            begin
                if Nombre = '' then
                    Error('El nombre no puede estar vacío.');
            end;
        }
        field(3; "Dirección"; Text[50])
        {
            Caption = 'Address', comment = 'ESP=Dirección';
        }
        field(4; "Fecha contrato"; Date)
        {
            Caption = 'Contract Date', comment = 'ESP=Fecha de contratación';
        }
        field(5; "Num ayudantes"; Integer)
        {
            Caption = 'No. Assistants', comment = 'ESP=Nº de ayudantes';
            InitValue = 0;
            FieldClass = FlowField;
            CalcFormula = count(Personal where("Código profesor" = field("Código profesor"), Cargo = const('Ayudante')));
            Editable = false;
        }
        field(6; Sueldo; Decimal)
        {
            Caption = 'Salary', comment = 'ESP=Sueldo';
            DecimalPlaces = 2;
            MinValue = 0;
            trigger OnValidate()
            begin
                if Sueldo < 0 then
                    Error('El sueldo debe ser un valor positivo.');
            end;
        }
        field(7; "Código dept."; Code[4])
        {
            Caption = 'Department Code', comment = 'ESP=Código departamento';
            TableRelation = Departamentos."Código dept.";
        }
        field(8; "Nº clases"; Integer)
        {
            Caption = 'No. Classes', comment = 'ESP=Nº de clases';
            FieldClass = FlowField;
            CalcFormula = count(Clases where("Código profesor" = field("Código profesor"), "Día Option" = field("Filtro día")));
            Editable = false;
        }
        field(9; "Filtro día"; Enum SemanaEnum)
        {
            Caption = 'Day Filter', comment = 'ESP=Filtro día de la semana';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(pk; "Código profesor")
        {
            Clustered = true;
        }
        key(datosPersonales; Nombre, Dirección) { }
        key(fechaContrato; "Fecha contrato") { }
        key(sueldo; Sueldo) { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Código profesor", Nombre)
        {
        }
    }
}