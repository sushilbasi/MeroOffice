

function showhide1() {

    var div = document.getElementById("show1");
   
    if (div.style.display !== "none") {
        div.style.display = "none";
    }
    else {
        div.style.display = "block";
    } 
}

function showhide2() {
    var div = document.getElementById("show2");
    if (div.style.display !== "none") {
        div.style.display = "none";
    }
    else {
        div.style.display = "block";
    }
}
function showhide3() {
    var div = document.getElementById("show3");
    if (div.style.display !== "none") {
        div.style.display = "none";
    }
    else {
        div.style.display = "block";
    }
}
function showhide4() {
    var div = document.getElementById("show4");
    if (div.style.display !== "none") {
        div.style.display = "none";
    }
    else {
        div.style.display = "block";
    }
}


window.onload = function () {
    document.getElementById('show1').style.display = 'none';
    
};
window.onload = function () {
    document.getElementById('show2').style.display = 'none';

};
window.onload = function () {
    document.getElementById('show3').style.display = 'none';

};
window.onload = function () {
    document.getElementById('show4').style.display = 'none';

};