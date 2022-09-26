table 50119 "Widget"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;

        }

        field(4; "HTML Widget"; Blob)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }





    /// <summary> 
    /// Create widget 
    /// </summary>
    /// <param name="NewHTMLWidget">Parameter of type Text.</param>
    procedure SetHTMLWidget(NewHTMLWidget: Text)
    var
        OutStream: OutStream;
    begin
        Clear("HTML Widget");
        "HTML Widget".CreateOutStream(OutStream, TextEncoding::UTF8);
        OutStream.WriteText(NewHTMLWidget);
        Rec.Modify();
    end;

    /// <summary> 
    /// Convert widget to text
    /// </summary>
    /// <param name="WCode">Parameter of type Code.</param>
    /// <returns>Return variable HTMLWidget of type Text.</returns>
    procedure GetHTMLWidgetConvertedToText(WCode: Code[10]) HTMLWidget: Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin

        if get(WCode) or (WCode = '') then begin
            CalcFields("HTML Widget");
            "HTML Widget".CreateInStream(InStream, TEXTENCODING::UTF8);
            exit(TypeHelper.ReadAsTextWithSeparator(InStream, TypeHelper.LFSeparator()));
        end;
    end;

    var
}