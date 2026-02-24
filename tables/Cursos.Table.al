table 50100 Cursos
{
    DataClassification = ToBeClassified;
    Caption = 'Cursos';
    DataCaptionFields = "Código curso", "Nombre curso";

    fields
    {
        field(1; "Código curso"; Code[3])
        {
            Caption = 'Código curso';
            trigger OnValidate()
            begin
                if "Código curso" = '' then
                    Error('El código del curso no puede estar vacío.');
                Rec."Código curso" := UpperCase(Rec."Código curso");
            end;
        }
        field(2; "Nombre curso"; Text[30])
        {
            Caption = 'Nombre del curso';
            trigger OnValidate()
            begin
                if "Nombre curso" = '' then
                    Error('El nombre del curso no puede estar vacío.');
            end;
        }
        field(3; "Desc. curso"; Text[30])
        {
            Caption = 'Descripción del curso';
        }
        field(4; "Créditos"; Integer)
        {
            Caption = 'Créditos';
            InitValue = 0;
        }
        field(5; "Tarifa"; Decimal)
        {
            Caption = 'Tarifa laboratorio';
            DecimalPlaces = 2;
        }
        field(6; "Código dept."; Code[4])
        {
            Caption = 'Código departamento';
            TableRelation = Departamentos."Código dept.";
        }
    }

    keys
    {
        key(pk; "Código curso")
        {
            Clustered = true;
        }
        key(nomCurs; "Nombre curso") { }
        key(descCurso; "Desc. curso") { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Código curso", "Nombre curso")
        {
        }
    }
}