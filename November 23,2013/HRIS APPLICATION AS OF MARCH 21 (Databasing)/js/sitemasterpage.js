window.history.forward(1);

function onTextBoxUpdate(evt) {
    var textBoxID = evt.source.textBoxID;
    var findComma = evt.selMenuItem.label.indexOf(',');
    if (findComma > 0) {
        var index = findComma + 2;
        var eadd = evt.selMenuItem.label.substring(index)
        document.getElementById(textBoxID).value = eadd;
    }
    //Cancel default behaviour - setting of textbox value to selMenuItem.label
    evt.preventDefault();
}

function PrintThisPage() {
    var sOption = "toolbar=yes,location=no,directories=yes,menubar=yes,";
    sOption += "scrollbars=yes,width=750,height=600,left=100,top=25";
    var sWinHTML = document.getElementById('wee').innerHTML;

    var winprint = window.open("", "", 'scrollbars=1,width=650,height=500,menubar=1,resizable=1');
    winprint.document.open();
    winprint.document.write('<html><link href="StyleSheets/StylePrintPreview.css" rel="stylesheet"><body>');
    winprint.document.write('<body><img src="Images/ReviseML.jpg" alt="Logo" style="margin-right:10px;" />');
    winprint.document.write(sWinHTML);
    winprint.document.write('</body></html>');
    winprint.document.close();
    winprint.focus();
    winprint.print();

}       
       
      

