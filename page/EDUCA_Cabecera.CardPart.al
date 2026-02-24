page 50126 "EDUCA Cabecera"
{
    PageType = HeadlinePart;
    ApplicationArea = All;
    Caption = ' ';
    SourceTable = Integer;
    SourceTableTemporary = true;

    layout
    {
        area(Content)
        {
            group(Header)
            {
                ShowCaption = false;
                field(Website; Website)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ShowCaption = false;
                    ExtendedDatatype = URL;
                    Style = Strong;

                    trigger OnDrillDown()
                    begin
                        Hyperlink('https://gregoriofer.com');
                    end;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get(1) then begin
            Rec.Init();
            Rec.Number := 1;
            Rec.Insert();
        end;

        Website := 'Accede a nuestra página web ';
    end;

    var
        Website: Text[250];
}
