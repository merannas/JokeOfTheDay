page 50115 "Widget List"
{
    Caption = 'Widget content';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Widget";
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Unique identifier for the widget';

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description for the widget';
                }

            }
            group(InputText)
            {
                field("HTML Widget"; HTMLWidgetShow)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    Editable = true;
                    ToolTip = 'Visual display for widget';
                    Caption = 'Show widget';
                }

            }

        }
        area(Factboxes)
        {
            part("Widget FactBox"; "Widget")
            {
                ApplicationArea = all;
                Caption = 'Widget';
                Visible = true;
                SubPageLink = Code = field(code);
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(SaveHtml)
            {
                Caption = 'Save HTML code';
                ToolTip = 'Save widhet text as HTML';
                ApplicationArea = All;
                image = Save;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                trigger OnAction();
                begin
                    Rec.SetHTMLWidget(HTMLWidgetShow);
                end;
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        HTMLWidgetShow := Rec.GetHTMLWidgetConvertedToText(Rec.code);
    end;

    var
        HTMLWidgetShow: Text;
}