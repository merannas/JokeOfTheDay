function WriteWidget(TextWidGet){

    HTMLContainer.insertAdjacentHTML('beforebegin',TextWidGet);
};

function WriteWidgetFactBox(TextWidGet=''){
    document.body.innerHTML = '';
    if ((TextWidGet != null) && (TextWidGet != '')) {
        document.write(TextWidGet);}
    }

