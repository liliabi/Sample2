function highlightRows(obj, css) {
    var curClassName;
    curClassName = obj.className;
    if (curClassName == css) {
        obj.className = "selected";
    }
    else {
        obj.className = css;
    }
}

function display(ID) {
    if (document.getElementById(ID).style.display == "none") {
        document.getElementById(ID).style.display = "";
    } else {
        document.getElementById(ID).style.display = "none";
    }
}