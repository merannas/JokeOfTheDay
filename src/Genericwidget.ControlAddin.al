controladdin "Generic widget"
{
    RequestedHeight = 200;
    MinimumHeight = 200;
    MaximumHeight = 400;
    RequestedWidth = 200;
    MinimumWidth = 200;
    MaximumWidth = 400;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    StartupScript = 'src\WidgetGenericStart.js';
    Scripts = 'src\WidgetGeneric.js';



    event ControlReady();

    /// <summary> 
    /// Widget HTML/Javascript content for role center
    /// </summary>
    /// <param name="TextWidGet">Parameter of type Text.</param>
    procedure WriteWidget(TextWidGet: Text);

    /// <summary> 
    /// Widget HTML/Javascript content for fact box
    /// </summary>
    /// <param name="TextWidGet">Parameter of type Text.</param>
    procedure WriteWidgetFactBox(TextWidGet: Text);
}