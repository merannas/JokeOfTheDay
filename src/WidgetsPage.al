Page 50114 "Widget"
{
    Caption = 'Widget';
    PageType = cardpart;
    //  ApplicationArea = ;
    // UsageCategory = Administration;
    SourceTable = "Widget";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = '';

                usercontrol(GenWidget; "Generic widget")
                {
                    ApplicationArea = All;
                    Visible = true;

                }

            }
        }
    }

    trigger OnAfterGetCurrRecord()
    var

    begin
        CurrPage.GenWidget.WriteWidgetFactBox(rec.GetHTMLWidgetConvertedToText(rec.code));
        CurrPage.Update(false);

    end;


}

