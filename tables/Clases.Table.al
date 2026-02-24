table 50102 Clases
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Lista de clases";

    fields
    {
        field(1; "Código curso"; Code[3])
        {
            Caption = 'Código curso';
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
            Caption = 'Nº de sección';
            Numeric = true;
            trigger OnValidate()
            begin
                if "Sección" = '' then
                    Error('La sección no puede estar vacía.');
            end;
        }
        field(3; "Día"; Text[10])
        {
            ObsoleteState = Pending;
            ObsoleteReason = 'Reemplazado por el campo Día Option de tipo Enum SemanaEnum';
            Caption = 'Día de la semana';
        }
        field(33; "Día Option"; Enum SemanaEnum)
        {
            Caption = 'Día de la semana';
        }
        field(4; "Hora"; Time)
        {
            Caption = 'Hora de la clase';
        }
        field(5; "Edificio"; Text[2])
        {
            Caption = 'Edificio';
            trigger OnValidate()
            begin
                Rec.Edificio := UpperCase(Rec.Edificio);
            end;
        }
        field(6; "Despacho"; Integer)
        {
            Caption = 'Despacho';
            trigger OnValidate()
            begin
                if Rec.Despacho < 0 then
                    Error('El despacho no puede ser un valor negativo.');
            end;
        }
        field(7; "Código profesor"; Code[2])
        {
            Caption = 'Código profesor';
            TableRelation = Claustro."Código profesor";
        }
        field(8; "Nº matrículas"; Integer)
        {
            Caption = 'Nº matrículas';
            FieldClass = FlowField;
            CalcFormula = count("Matrículas" where("Código curso" = field("Código curso"), "Sección" = field("Sección")));
            Editable = false;
        }
    }

    keys
    {
        key(pk; "Código curso", "Sección")
        {
            Clustered = true;
        }
        key(dia; "Día Option") { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Código curso", "Sección", "Día Option", Hora)
        {
        }
    }
}