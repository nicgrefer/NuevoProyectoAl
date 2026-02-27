table 50101 Departamentos
{
    DataClassification = ToBeClassified;
    Caption = 'Departments', comment = 'ESP=Departamentos';

    fields
    {
        field(1; "Código dept."; Code[4])
        {
            Caption = 'Department Code', comment = 'ESP=Código departamento';
            trigger OnValidate()
            begin
                if "Código dept." = '' then
                    Error('El código del departamento no puede estar vacío.');
                Rec."Código dept." := UpperCase(Rec."Código dept.");
            end;
        }
        field(2; "Edificio"; Text[2])
        {
            Caption = 'Building', comment = 'ESP=Edificio';
            trigger OnValidate()
            begin
                Rec.Edificio := UpperCase(Rec.Edificio);
            end;
        }
        field(3; "Despacho"; Integer)
        {
            Caption = 'Office', comment = 'ESP=Despacho';
            InitValue = 0;
            trigger OnValidate()
            begin
                if Rec.Despacho < 0 then
                    Error('El despacho no puede ser un valor negativo.');
            end;
        }
        field(4; "Código director"; Code[2])
        {
            Caption = 'Director Code', comment = 'ESP=Código director';
            TableRelation = Claustro."Código profesor";
        }
        field(5; "Promedio tarifa"; Decimal)
        {
            Caption = 'Average Laboratory Fee', comment = 'ESP=Promedio tarifa laboratorio';
            FieldClass = FlowField;
            CalcFormula = average(Cursos.Tarifa where("Código dept." = field("Código dept.")));
            DecimalPlaces = 2;
            Editable = false;
        }
    }

    keys
    {
        key(kp; "Código dept.")
        {
            Clustered = true;
        }
        key(despacho; Despacho) { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Código dept.", Edificio, Despacho)
        {
        }
    }
}