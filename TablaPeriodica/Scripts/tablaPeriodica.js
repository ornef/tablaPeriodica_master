function changeBackground(list) {
    var fondo = "url(../../Scripts/fancybox_overlay.png)";
    i = list.length;
    while (i--) {
        list[i].style.background = fondo;
    }
    return list;

}

function restoreBackground(list) {
    i = list.length;
    while (i--) {
        list[i].style.background = "";
    }
    return list;
}

function disableDivs(noDisable) {

    //This will disable everything contained in the div
    var noMetal = document.getElementsByClassName('col-sm-1 elemento no-metal');
    if (noDisable != "noMetal") {
        changeBackground(noMetal);
    }
    var noMetalDisabled = document.getElementsByClassName('col-sm-1 elemento no-metal');
    if (noDisable == "noMetal") {
        restoreBackground(noMetalDisabled);
    }

    var alcalinoTerreo = document.getElementsByClassName('col-sm-1 elemento metal-alcalinoterreo');
    if (noDisable != "alcalinoTerreo") {
        changeBackground(alcalinoTerreo);
    }
    var alcalinoTerreoDisabled = document.getElementsByClassName('col-sm-1 elemento metal-alcalinoterreo');
    if (noDisable == "alcalinoTerreo") {
        restoreBackground(alcalinoTerreoDisabled);
    }

    var alcalino = document.getElementsByClassName('col-sm-1 elemento metal-alcalino');
    if (noDisable != "alcalino") {
        changeBackground(alcalino);
    }
    var alcalinoDisabled = document.getElementsByClassName('col-sm-1 elemento metal-alcalino');
    if (noDisable == "alcalino") {
        restoreBackground(alcalinoDisabled);
    }

    var transicion = document.getElementsByClassName('col-sm-1 elemento metal-transicion');
    if (noDisable != "transicion") {
        changeBackground(transicion);
    }
    var transicionDisabled = document.getElementsByClassName('col-sm-1 elemento metal-transicion');
    if (noDisable == "transicion") {
        restoreBackground(transicionDisabled);
    }

    var otrosMetales = document.getElementsByClassName('col-sm-1 elemento otros-metales');
    if (noDisable != "otrosMetales") {
        changeBackground(otrosMetales);
    }
    var otrosMetalesDisabled = document.getElementsByClassName('col-sm-1 elemento otros-metales');
    if (noDisable == "otrosMetales") {
        restoreBackground(otrosMetalesDisabled);
    }

    var metaloide = document.getElementsByClassName('col-sm-1 elemento metaloide borde-izq-abajo');
    var metaloide2 = document.getElementsByClassName('col-sm-1 elemento metaloide');
    if (noDisable != "metaloide") {
        //document.getElementById('inlineBoro').style.background = fondo;
        changeBackground(metaloide);
        changeBackground(metaloide2);
    }
    var metaloideDisabled = document.getElementsByClassName('col-sm-1 elemento metaloide borde-izq-abajo');
    var metaloide2Disabled = document.getElementsByClassName('col-sm-1 elemento metaloide');
    if (noDisable == "metaloide") {
        //document.getElementById('inlineBoro').style.background = "";
        restoreBackground(metaloideDisabled);
        restoreBackground(metaloide2Disabled);
    }

    var halogeno = document.getElementsByClassName('col-sm-1 elemento halogeno');
    if (noDisable != "halogeno") {
        changeBackground(halogeno);
    }
    var halogenoDisabled = document.getElementsByClassName('col-sm-1 elemento halogeno');
    if (noDisable == "halogeno") {
        restoreBackground(halogenoDisabled);
    }

    var gasNoble = document.getElementsByClassName('col-sm-1 elemento gas-noble');
    if (noDisable != "gasNoble") {
        changeBackground(gasNoble);
    }
    var gasNobleDisabled = document.getElementsByClassName('col-sm-1 elemento gas-noble');
    if (noDisable == "gasNoble") {
        restoreBackground(gasNobleDisabled);
    }

    var lantanidos = document.getElementsByClassName('col-sm-1 elemento tierra-rara');
    if (noDisable != "tierraRara") {
        changeBackground(lantanidos);
    }
    var lantanidosDisabled = document.getElementsByClassName('col-sm-1 elemento tierra-rara');
    if (noDisable == "tierraRara") {
        restoreBackground(lantanidosDisabled);
    }

}