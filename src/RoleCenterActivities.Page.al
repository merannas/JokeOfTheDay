page 50117 "Role Center Activities"
{

    Caption = 'BC tells';
    PageType = CardPart;
    SourceTable = "Role Center Cue";

    layout
    {
        area(content)
        {


            group(Widget)
            {
                ShowCaption = false;
                usercontrol(Genwidget; "Generic widget")
                {
                    ApplicationArea = all;
                    Visible = true;
                    trigger ControlReady()
                    var
                        TypeHelper: Codeunit "Type Helper";
                        JokeInStream: InStream;
                        htmltext: Text;
                    begin
                        if Widget.Get('JOKE') then begin //Little hardcoding won't hurt anyone!
                            Widget.CalcFields("HTML Widget");
                            Widget."HTML Widget".CreateInStream(JokeInStream, TEXTENCODING::UTF8);
                            htmltext := TypeHelper.ReadAsTextWithSeparator(JokeInStream, TypeHelper.LFSeparator());
                            CurrPage.Genwidget.WriteWidget(htmltext);
                        end;
                    end;

                }

            }

        }



    }
    var

        Widget: Record "Widget";








}
