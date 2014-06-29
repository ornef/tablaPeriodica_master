<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaPeriodica.aspx.cs" Inherits="TablaPeriodica.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0"/>
    <title>Tabla Peri&oacute;dica</title>
    <!-- Estilos CSS vinculados -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../css/tablaPeriodica.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../scripts/jquery.fancybox.css"/>
</head>
<body>
    <header>
        <a id="logueo" title="Login" href="#login_form">Login</a>
        <h1>2 TABLA PERIODICA DE LOS ELEMENTOS 3</h1>
    </header>
    <div style="display:none">
        <form id="login_form" runat="server">
            <p id="login_error">Please, enter data</p>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <asp:Label ID="lblUsuario" runat="server">Usuario</asp:Label>
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox> 
             <asp:Label ID="lblContrasenia" runat="server">Contraseña</asp:Label>
            <asp:TextBox ID="txtContrasenia" runat="server"></asp:TextBox>
            <asp:Button id="btnLogin" Text="Submit" runat="server" OnClick="btnLogin_Click" />  
        </form>
    </div>
    <div class="container-fluid">
        <!-- columna grupos -->
	    <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio"><div class="grupo-titulo">Grupo</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">1<br/>IA</div></div>
			    <div class="col-sm-2 sin-espacio elemento-vacio-2"></div>
                <div class="col-sm-3 sin-espacio elemento-vacio-3">
				    <div class="referencias-titulo">
					    <span>Referencias</span>
                    </div>
                </div>
                <div class="col-sm-3 sin-espacio elemento-vacio-3">
                    <div class="referencias-100">
					    <button type="button" class="btn btn-default btn-xm no-metal" id="todos" value="Reload Page" onclick="window.location.reload()"></button><span>Ver Todos</span>
				    </div>
                </div>
             </div>
             <div class="col-sm-10 sin-espacio">
                <div class="col-sm-8 elemento-vacio-8"></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">18<br/>VIIIA</div></div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 1 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
					<div class="periodo">Periodo<br/>1<br/><br/></div>
				</div>
                <div class="col-sm-1 elemento no-metal fancybox" id="inlineHidrogeno" title="Hidr&oacute;geno" href="#inlineElemento">
                    <div class ="nro-atomico">1</div>
                    <div class ="simbolo">H</div>
                    <div class ="nombre-elemento">Hidr&oacute;geno</div>
                </div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">2<br>IIA</div></div>
                <div class="col-sm-1 elemento-vacio"></div>
                <div class="col-sm-1 elemento-vacio-6">
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm no-metal" id="noMetal" onclick="disableDivs('noMetal')"></button><span>No metal</span>
					</div>
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm metal-alcalino" id="btnAlcalino" onclick="disableDivs('alcalino')"></button><span>Metal alcalino</span>
					</div>
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm metal-alcalinoterreo" id="btnAlcalinoTerreo"  onclick="disableDivs('alcalinoTerreo')"></button><span>Metal alcalino-t&eacute;rreo</span>
					</div>
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm metal-transicion" id="btnTransicion" onclick="disableDivs('transicion')"></button><span>Metal de Transici&oacute;n</span>
					</div>
				</div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio-3"></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">13<br>IIIA</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">14<br>IVA</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">15<br>VA</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">16<br>VIA</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">17<br>VIIA</div></div>
                <div class="col-sm-1 elemento gas-noble fancybox" id="inlineHelio" title="Helio" href="#inlineElemento">
                    <div class ="nro-atomico">2</div>
                    <div class ="simbolo">He</div>
                    <div class ="nombre-elemento">Helio</div>   
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 2 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="periodo"><br>2<br><br></div></div>
                <div class="col-sm-1 elemento metal-alcalino fancybox" id="inlineLitio" title="Litio" href="#inlineElemento">
                    <div class ="nro-atomico">3</div>
                    <div class ="simbolo">Li</div>
                    <div class ="nombre-elemento">Litio</div>        
                </div>
                <div class="col-sm-1 elemento metal-alcalinoterreo fancybox" id="inlineBerilio" title="Berilio" href="#inlineElemento">
                    <div class ="nro-atomico">4</div>
                    <div class ="simbolo">Be</div>
                    <div class ="nombre-elemento">Berilio</div>
                </div>
				<div class="col-sm-1 elemento-vacio"></div>
                <div class="col-sm-1 elemento-vacio-6">
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm otros-metales" id="btnOtrosMetales" onclick="disableDivs('otrosMetales')"></button><span>Otros Metales</span>
					</div>
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm metaloide" id="btnMetaloide" onclick="disableDivs('metaloide')"></button><span>Metaloide</span>
					</div>
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm halogeno" id="btnHalogeno" onclick="disableDivs('halogeno')"></button><span>Hal&oacute;geno</span>
					</div>
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm gas-noble" id="btnGasNoble" onclick="disableDivs('gasNoble')"></button><span>Gas Noble</span>
					</div>
					<div class="referencias">
						<button type="button" class="btn btn-default btn-xm tierra-rara" id="btnTierraRara" onclick="disableDivs('tierraRara')"></button><span>Lant&aacute;nidos - Act&iacute;nidos</span>
					</div>
				</div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio-3"></div>
                <div class="col-sm-1 elemento metaloide borde-abajo fancybox" id="inlineBoro" title="Boro" href="#inlineElemento">
                    <div class ="nro-atomico">5</div>
                    <div class ="simbolo">B</div>
                    <div class ="nombre-elemento">Boro</div>
                </div>
                <div class="col-sm-1 elemento no-metal fancybox" id="inlineCarbono" title="Carbono" href="#inlineElemento">
                    <div class ="nro-atomico">6</div>
                    <div class ="simbolo">C</div>
                    <div class ="nombre-elemento">Carbono</div>
                </div>
                <div class="col-sm-1 elemento no-metal fancybox" id="inlineNitrogeno" title="Nitr&oacute;geno" href="#inlineElemento">
                    <div class ="nro-atomico">7</div>
                    <div class ="simbolo">N</div>
                    <div class ="nombre-elemento">Nitr&oacute;geno</div>
                </div>
                <div class="col-sm-1 elemento no-metal fancybox" id="inlineOxigeno" title="Ox&iacute;geno" href="#inlineElemento">
                    <div class ="nro-atomico">8</div>
                    <div class ="simbolo">O</div>
                    <div class ="nombre-elemento">Ox&iacute;geno</div>
                </div>
                <div class="col-sm-1 elemento halogeno fancybox" id="inlineFluor" title="Fl&uacute;or" href="#inlineElemento">
                    <div class ="nro-atomico">9</div>
                    <div class ="simbolo">F</div>
                    <div class ="nombre-elemento">Fl&uacute;or</div>
                </div>
                <div class="col-sm-1 elemento gas-noble fancybox" id="inlineNeon" title="Ne&oacute;" href="#inlineElemento">
                    <div class ="nro-atomico">10</div>
                    <div class ="simbolo">Ne</div>
                    <div class ="nombre-elemento">Ne&oacute;n</div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 3 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio"><div class="periodo"><br/>3<br/><br/></div></div>
                <div class="col-sm-1 elemento metal-alcalino fancybox" id="inlineSodio" title="Sodio" href="#inlineElemento">
                    <div class ="nro-atomico">11</div>
                    <div class ="simbolo">Na</div>
                    <div class ="nombre-elemento">Sodio</div>         
                </div>
                <div class="col-sm-1 elemento metal-alcalinoterreo fancybox" id="inlineMagnesio" title="Magnesio" href="#inlineElemento">
                    <div class ="nro-atomico">12</div>
                    <div class ="simbolo">Mg</div>
                    <div class ="nombre-elemento">Magnesio</div>         
                </div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">3<br/>IIIB</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">4<br/>IVB</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">5<br/>VB</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">6<br/>VIB</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">7<br/>VIIB</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">8<br/>----</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">9<br/>VIIIB</div></div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio"><div class="grupo">10<br/>----</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">11<br/>IB</div></div>
                <div class="col-sm-1 elemento-vacio"><div class="grupo">12<br/>IIB</div></div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineAluminio" title="Aluminio" href="#inlineElemento">
                    <div class ="nro-atomico">13</div>
                    <div class ="simbolo">Al</div>
                    <div class ="nombre-elemento">Aluminio</div>
                </div>
                <div class="col-sm-1 elemento metaloide borde-izq-abajo fancybox" id="inlineSilicio" title="Silicio" href="#inlineElemento">
                    <div class ="nro-atomico">14</div>
                    <div class ="simbolo">Si</div>
                    <div class ="nombre-elemento">Silicio</div>
                </div>
                <div class="col-sm-1 elemento no-metal fancybox" id="inlineFosforo" title="F&oacute;sforo" href="#inlineElemento">
                    <div class ="nro-atomico">15</div>
                    <div class ="simbolo">P</div>
                    <div class ="nombre-elemento">F&oacute;sforo</div>
                </div>
                <div class="col-sm-1 elemento no-metal fancybox" id="inlineAzufre" title="Azufre" href="#inlineElemento">
                    <div class ="nro-atomico">16</div>
                    <div class ="simbolo">S</div>
                    <div class ="nombre-elemento">Azufre</div>
                </div>
                <div class="col-sm-1 elemento halogeno fancybox" id="inlineCloro" title="Cloro" href="#inlineElemento">
                    <div class ="nro-atomico">17</div>
                    <div class ="simbolo">Cl</div>
                    <div class ="nombre-elemento">Cloro</div>
                </div>
                <div class="col-sm-1 elemento gas-noble fancybox" id="inlineArgon" title="Arg&oacute;n" href="#inlineElemento">
                    <div class ="nro-atomico">18</div>
                    <div class ="simbolo">Ar</div>
                    <div class ="nombre-elemento">Arg&oacute;n</div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 4 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio"><div class="periodo"><br>4<br><br></div></div>
                <div class="col-sm-1 elemento metal-alcalino fancybox" id="inlinePotasio" title="Potasio" href="#inlineElemento">
                    <div class ="nro-atomico">19</div>
                    <div class ="simbolo">K</div>
                    <div class ="nombre-elemento">Potasio</div>
                </div>
                <div class="col-sm-1 elemento metal-alcalinoterreo fancybox" id="inlineCalcio" title="Calcio" href="#inlineElemento">
                    <div class ="nro-atomico">20</div>
                    <div class ="simbolo">Ca</div>
                    <div class ="nombre-elemento">Calcio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineEscandio" title="Escandio" href="#inlineElemento">
                    <div class ="nro-atomico">21</div>
                    <div class ="simbolo">Sc</div>
                    <div class ="nombre-elemento">Escandio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineTitanio" title="Titanio" href="#inlineElemento">
                    <div class ="nro-atomico">22</div>
                    <div class ="simbolo">Ti</div>
                    <div class ="nombre-elemento">Titanio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineVanadio" title="Vanadio" href="#inlineElemento">
                    <div class ="nro-atomico">23</div>
                    <div class ="simbolo">V</div>
                    <div class ="nombre-elemento">Vanadio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineCromo" title="Cromo" href="#inlineElemento">
                    <div class ="nro-atomico">24</div>
                    <div class ="simbolo">Cr</div>
                    <div class ="nombre-elemento">Cromo</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineManganeso" title="Manganeso" href="#inlineElemento">
                    <div class ="nro-atomico">25</div>
                    <div class ="simbolo">Mn</div>
                    <div class ="nombre-elemento">Manganeso</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineHierro" title="Hierro" href="#inlineElemento">
                    <div class ="nro-atomico">26</div>
                    <div class ="simbolo">Fe</div>
                    <div class ="nombre-elemento">Hierro</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineCobalto" title="Cobalto" href="#inlineElemento">
                    <div class ="nro-atomico">27</div>
                    <div class ="simbolo">Co</div>
                    <div class ="nombre-elemento">Cobalto</div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineNiquel" title="N&iacute;quel" href="#inlineElemento">
                    <div class ="nro-atomico">28</div>
                    <div class ="simbolo">Ni</div>
                    <div class ="nombre-elemento">N&iacute;quel</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineCobre" title="Cobre" href="#inlineElemento">
                    <div class ="nro-atomico">29</div>
                    <div class ="simbolo">Cu</div>
                    <div class ="nombre-elemento">Cobre</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineCinc" title="Cinc" href="#inlineElemento">
                    <div class ="nro-atomico">30</div>
                    <div class ="simbolo">Zn</div>
                    <div class ="nombre-elemento">Cinc</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineGalio" title="Galio" href="#inlineElemento">
                    <div class ="nro-atomico">31</div>
                    <div class ="simbolo">Ga</div>
                    <div class ="nombre-elemento">Galio</div>
                </div>
                <div class="col-sm-1 elemento metaloide fancybox" id="inlineGermanio" title="Germanio" href="#inlineElemento">
                    <div class ="nro-atomico">32</div>
                    <div class ="simbolo">Ge</div>
                    <div class ="nombre-elemento">Germanio</div>
                </div>
                <div class="col-sm-1 elemento metaloide borde-izq-abajo fancybox" id="inlineArsenico" title="Ars&eacute;nico" href="#inlineElemento">
                    <div class ="nro-atomico">33</div>
                    <div class ="simbolo">As</div>
                    <div class ="nombre-elemento">Ars&eacute;nico</div>
                </div>
                <div class="col-sm-1 elemento no-metal fancybox" id="inlineSelenio" title="Selenio" href="#inlineElemento">
                    <div class ="nro-atomico">34</div>
                    <div class ="simbolo">Se</div>
                    <div class ="nombre-elemento">Selenio</div>
                </div>
                <div class="col-sm-1 elemento halogeno fancybox" id="inlineBromo" title="Bromo" href="#inlineElemento">
                    <div class ="nro-atomico">35</div>
                    <div class ="simbolo">Br</div>
                    <div class ="nombre-elemento">Bromo</div>
                </div>
                <div class="col-sm-1 elemento gas-noble fancybox" id="inlineCripton" title="Cript&oacute;n" href="#inlineElemento">
                    <div class ="nro-atomico">36</div>
                    <div class ="simbolo">Kr</div>
                    <div class ="nombre-elemento">Cript&oacute;n</div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 5 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio"><div class="periodo"><br>5<br><br></div></div>
                <div class="col-sm-1 elemento metal-alcalino fancybox" id="inlineRubidio" title="Rubidio" href="#inlineElemento">
                    <div class ="nro-atomico">37</div>
                    <div class ="simbolo">Rb</div>
                    <div class ="nombre-elemento">Rubidio</div>
                </div>
                <div class="col-sm-1 elemento metal-alcalinoterreo fancybox" id="inlineEstroncio" title="Estroncio" href="#inlineElemento">
                    <div class ="nro-atomico">38</div>
                    <div class ="simbolo">Sr</div>
                    <div class ="nombre-elemento">Estroncio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineYtrio" title="Escandio" href="#inlineElemento">
                    <div class ="nro-atomico">39</div>
                    <div class ="simbolo">Y</div>
                    <div class ="nombre-elemento">Ytrio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineCirconio" title="Circonio" href="#inlineElemento">
                    <div class ="nro-atomico">40</div>
                    <div class ="simbolo">Zr</div>
                    <div class ="nombre-elemento">Circonio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineNiobio" title="Niobio" href="#inlineElemento">
                    <div class ="nro-atomico">41</div>
                    <div class ="simbolo">Nb</div>
                    <div class ="nombre-elemento">Niobio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineMolibdeno" title="Molibdeno" href="#inlineElemento">
                    <div class ="nro-atomico">42</div>
                    <div class ="simbolo">Mo</div>
                    <div class ="nombre-elemento">Molibdeno</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineTecnecio" title="Tecnecio" href="#inlineElemento">
                    <div class ="nro-atomico">43</div>
                    <div class ="simbolo">Tc</div>
                    <div class ="nombre-elemento">Tecnecio</div>   
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineRutenio" title="Rutenio" href="#inlineElemento">
                    <div class ="nro-atomico">44</div>
                    <div class ="simbolo">Ru</div>
                    <div class ="nombre-elemento">Rutenio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineRodio" title="Rodio" href="#inlineElemento">
                    <div class ="nro-atomico">45</div>
                    <div class ="simbolo">Rh</div>
                    <div class ="nombre-elemento">Rodio</div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlinePaladio" title="Paladio" href="#inlineElemento">
                    <div class ="nro-atomico">46</div>
                    <div class ="simbolo">Pd</div>
                    <div class ="nombre-elemento">Paladio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlinePlata" title="Plata" href="#inlineElemento">
                    <div class ="nro-atomico">47</div>
                    <div class ="simbolo">Ag</div>
                    <div class ="nombre-elemento">Plata</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineCadmio" title="Cadmio" href="#inlineElemento">
                    <div class ="nro-atomico">48</div>
                    <div class ="simbolo">Cd</div>
                    <div class ="nombre-elemento">Cadmio</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineIndio" title="Indio" href="#inlineElemento">
                    <div class ="nro-atomico">49</div>
                    <div class ="simbolo">In</div>
                    <div class ="nombre-elemento">Indio</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineEstanio" title="Esta&ntilde;io" href="#inlineElemento">
                    <div class ="nro-atomico">50</div>
                    <div class ="simbolo">Sn</div>
                    <div class ="nombre-elemento">Esta&ntilde;o</div>
                </div>
                <div class="col-sm-1 elemento metaloide fancybox" id="inlineAntimonio" title="Antimonio" href="#inlineElemento">
                    <div class ="nro-atomico">51</div>
                    <div class ="simbolo">Sb</div>
                    <div class ="nombre-elemento">Antimonio</div>
                </div>
                <div class="col-sm-1 elemento metaloide borde-izq-abajo fancybox" id="inlineTelurio" title="Telurio" href="#inlineElemento">
                    <div class ="nro-atomico">52</div>
                    <div class ="simbolo">Te</div>
                    <div class ="nombre-elemento">Teluro</div>
                </div>
                <div class="col-sm-1 elemento halogeno fancybox" id="inlineYodo" title="Yodo" href="#inlineElemento">
                    <div class ="nro-atomico">53</div>
                    <div class ="simbolo">I</div>
                    <div class ="nombre-elemento">Yodo</div>
                </div>
                <div class="col-sm-1 elemento gas-noble fancybox" id="inlineXenon" title="Xenon" href="#inlineElemento">
                    <div class ="nro-atomico">54</div>
                    <div class ="simbolo">Xe</div>
                    <div class ="nombre-elemento">Xeno&oacute;n</div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 6 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio"><div class="periodo"><br>6<br><br></div></div>
                <div class="col-sm-1 elemento metal-alcalino fancybox" id="inlineCesio" title="Cesio" href="#inlineElemento">
                    <div class ="nro-atomico">55</div>
                    <div class ="simbolo">Cs</div>
                    <div class ="nombre-elemento">Cesio</div>         
                </div>
                <div class="col-sm-1 elemento metal-alcalinoterreo fancybox" id="inlineBario" title="Bario" href="#inlineElemento">
                    <div class ="nro-atomico">56</div>
                    <div class ="simbolo">Ba</div>
                    <div class ="nombre-elemento">Bario</div>         
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inline5771" title="La-Lu" href="#inlineElemento">
                    <div class ="nro-atomico">57-71</div>
                    <div class ="simbolo">La-Lu</div>
                    <div class ="nombre-elemento">Lant&aacute;nidos</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineHafnio" title="Hafnio" href="#inlineElemento">
                    <div class ="nro-atomico">72</div>
                    <div class ="simbolo">Hf</div>
                    <div class ="nombre-elemento">Hafnio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineTantalio" title="Tantalio" href="#inlineElemento">
                    <div class ="nro-atomico">73</div>
                    <div class ="simbolo">Ta</div>
                    <div class ="nombre-elemento">T&aacute;ntalo</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineWolframio" title="Wolframio" href="#inlineElemento">
                    <div class ="nro-atomico">74</div>
                    <div class ="simbolo">W</div>
                    <div class ="nombre-elemento">Wolframio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineRenio" title="Renio" href="#inlineElemento">
                    <div class ="nro-atomico">75</div>
                    <div class ="simbolo">Re</div>
                    <div class ="nombre-elemento">Renio</div>   
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineOsmio" title="Osmio" href="#inlineElemento">
                    <div class ="nro-atomico">76</div>
                    <div class ="simbolo">Os</div>
                    <div class ="nombre-elemento">Osmio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineIridio" title="Iridio" href="#inlineElemento">
                    <div class ="nro-atomico">77</div>
                    <div class ="simbolo">Ir</div>
                    <div class ="nombre-elemento">Iridio</div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlinePlatino" title="Platino" href="#inlineElemento">
                    <div class ="nro-atomico">78</div>
                    <div class ="simbolo">Pt</div>
                    <div class ="nombre-elemento">Platino</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineOro" title="Oro" href="#inlineElemento">
                    <div class ="nro-atomico">79</div>
                    <div class ="simbolo">Au</div>
                    <div class ="nombre-elemento">Oro</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineMercurio" title="Mercurio" href="#inlineElemento">
                    <div class ="nro-atomico">80</div>
                    <div class ="simbolo">Hg</div>
                    <div class ="nombre-elemento">Mercurio</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineTalio" title="Talio" href="#inlineElemento">
                    <div class ="nro-atomico">81</div>
                    <div class ="simbolo">Tl</div>
                    <div class ="nombre-elemento">Talio</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlinePlomo" title="Plomo" href="#inlineElemento">
                    <div class ="nro-atomico">82</div>
                    <div class ="simbolo">Pb</div>
                    <div class ="nombre-elemento">Plomo</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineBismuto" title="Bismuto" href="#inlineElemento">
                    <div class ="nro-atomico">83</div>
                    <div class ="simbolo">Bi</div>
                    <div class ="nombre-elemento">Bismuto</div>
                </div>
                <div class="col-sm-1 elemento metaloide fancybox" id="inlinePolonio" title="Polonio" href="#inlineElemento">
                    <div class ="nro-atomico">84</div> 
                    <div class ="simbolo">Po</div>
                    <div class ="nombre-elemento">Polonio</div>
                </div>
                <div class="col-sm-1 elemento halogeno borde-izq fancybox" id="inlineAstato" title="Astato" href="#inlineElemento">
                    <div class ="nro-atomico">85</div>
                    <div class ="simbolo">At</div>
                    <div class ="nombre-elemento">Astato</div>
                </div>
                <div class="col-sm-1 elemento gas-noble fancybox" id="inlineRadon" title="Rad&oacute;n" href="#inlineElemento">
                    <div class ="nro-atomico">86</div>
                    <div class ="simbolo">Rn</div>
                    <div class ="nombre-elemento">Rad&oacute;n</div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 7 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio"><div class="periodo"><br>7<br><br></div></div>
                <div class="col-sm-1 elemento metal-alcalino fancybox" id="inlineFrancio" title="Francio" href="#inlineElemento">
                    <div class ="nro-atomico">87</div>
                    <div class ="simbolo">Fr</div>
                    <div class ="nombre-elemento">Francio</div>         
                </div>
                <div class="col-sm-1 elemento metal-alcalinoterreo fancybox" id="inlineRadio" title="Radio" href="#inlineElemento">
                    <div class ="nro-atomico">88</div>
                    <div class ="simbolo">Ra</div>
                    <div class ="nombre-elemento">Radio</div>         
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineAcLr" title="Actinidos" href="#inlineElemento">
                    <div class ="nro-atomico">89-103</div>
                    <div class ="simbolo">Ac-Lr</div>
                    <div class ="nombre-elemento">Act&iacute;nidos</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineRutherfordio" title="Rutherfordio" href="#inlineElemento">
                    <div class ="nro-atomico">104</div>
                    <div class ="simbolo">Rf</div>
                    <div class ="nombre-elemento">Rutherfordio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineDubnio" title="Dubnio" href="#inlineElemento">
                    <div class ="nro-atomico">105</div>
                    <div class ="simbolo">Db</div>
                    <div class ="nombre-elemento">Dubnio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineSeaborgio" title="Seaborgio" href="#inlineElemento">
                    <div class ="nro-atomico">106</div>
                    <div class ="simbolo">Sg</div>
                    <div class ="nombre-elemento">Seaborgio</div>   
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineBohrio" title="Bohrio" href="#inlineElemento">
                    <div class ="nro-atomico">107</div>
                    <div class ="simbolo">Bh</div>
                    <div class ="nombre-elemento">Bohrio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineHassio" title="Hassio" href="#inlineElemento">
                    <div class ="nro-atomico">108</div>
                    <div class ="simbolo">Hs</div>
                    <div class ="nombre-elemento">Hassio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineMeitnerio" title="Meitnerio" href="#inlineElemento">
                    <div class ="nro-atomico">109</div>
                    <div class ="simbolo">Mt</div>
                    <div class ="nombre-elemento">Meitnerio</div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineDarmstadtio" title="Darmstadtio" href="#inlineElemento">
                    <div class ="nro-atomico">110</div>
                    <div class ="simbolo">Ds</div>
                    <div class ="nombre-elemento">Darmstadtio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineRoentgenio" title="Roentgenio" href="#inlineElemento">
                    <div class ="nro-atomico">111</div>
                    <div class ="simbolo">Rg</div>
                    <div class ="nombre-elemento">Roentgenio</div>
                </div>
                <div class="col-sm-1 elemento metal-transicion fancybox" id="inlineCopernicio" title="Copernicio" href="#inlineElemento">
                    <div class ="nro-atomico">112</div>
                    <div class ="simbolo">Cn</div>
                    <div class ="nombre-elemento">Copernicio</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineUnuntrio" title="Ununtrio" href="#inlineElemento">
                    <div class ="nro-atomico">113</div>
                    <div class ="simbolo">Uut</div>
                    <div class ="nombre-elemento">Ununtrio</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineFlerovio" title="Flerovio" href="#inlineElemento">
                    <div class ="nro-atomico">114</div>
                    <div class ="simbolo">Fl</div>
                    <div class ="nombre-elemento">Flerovio</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineUnunpentio" title="Ununpentio" href="#inlineElemento">
                    <div class ="nro-atomico">115</div>
                    <div class ="simbolo">Uup</div>
                    <div class ="nombre-elemento">Ununpentio</div>
                </div>
                <div class="col-sm-1 elemento otros-metales fancybox" id="inlineLivermorio" title="Livermorio" href="#inlineElemento">
                    <div class ="nro-atomico">116</div> 
                    <div class ="simbolo">Lv</div>
                    <div class ="nombre-elemento">Livermorio</div>
                </div>
                <div class="col-sm-1 elemento halogeno fancybox" id="inlineUnunseptio" title="Ununseptio" href="#inlineElemento">
                    <div class ="nro-atomico">117</div>
                    <div class ="simbolo">Uus</div>
                    <div class ="nombre-elemento">Ununseptio</div>
                </div>
                <div class="col-sm-1 elemento gas-noble fancybox" id="inlineUnunoctio" title="Ununoctio" href="#inlineElemento">
                    <div class ="nro-atomico">118</div>
                    <div class ="simbolo">Uuo</div>
                    <div class ="nombre-elemento">Ununoctio</div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <div id="separador">
        <!--espacio-->
        </div>
        <!-- fila 1 Lantanidos -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-3 elemento-vacio-3"><div class="tipo-elemento"><br>*Lant&aacute;nidos</div></div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineLantano" title="Lantano" href="#inlineElemento">
                    <div class ="nro-atomico">57</div>
                    <div class ="simbolo">La</div>
                    <div class ="nombre-elemento">Lantano</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineCerio" title="Cerio" href="#inlineElemento">
                    <div class ="nro-atomico">58</div>
                    <div class ="simbolo">Ce</div>
                    <div class ="nombre-elemento">Cerio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlinePraseodimio" title="Praseodimio" href="#inlineElemento">
                    <div class ="nro-atomico">59</div>
                    <div class ="simbolo">Pr</div>
                    <div class ="nombre-elemento">Praseodimio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineNeodimio" title="Neodimio" href="#inlineElemento">
                    <div class ="nro-atomico">60</div>
                    <div class ="simbolo">Nd</div>
                    <div class ="nombre-elemento">Neodimio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlinePrometio" title="Prometio" href="#inlineElemento">
                    <div class ="nro-atomico">61</div>
                    <div class ="simbolo">Pm</div>
                    <div class ="nombre-elemento">Prometio</div>   
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineSamario" title="Samario" href="#inlineElemento">
                    <div class ="nro-atomico">62</div>
                    <div class ="simbolo">Sm</div>
                    <div class ="nombre-elemento">Samario</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineEuropio" title="Europio" href="#inlineElemento">
                    <div class ="nro-atomico">63</div>
                    <div class ="simbolo">Eu</div>
                    <div class ="nombre-elemento">Europio</div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineGadolinio" title="Gadolinio" href="#inlineElemento">
                    <div class ="nro-atomico">64</div>
                    <div class ="simbolo">Gd</div>
                    <div class ="nombre-elemento">Gadolinio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineTerbio" title="Terbio" href="#inlineElemento">
                    <div class ="nro-atomico">65</div>
                    <div class ="simbolo">Tb</div>
                    <div class ="nombre-elemento">Terbio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineDisprosio" title="Disprosio" href="#inlineElemento">
                    <div class ="nro-atomico">66</div>
                    <div class ="simbolo">Dy</div>
                    <div class ="nombre-elemento">Disprosio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineHolmio" title="Holmio" href="#inlineElemento">
                    <div class ="nro-atomico">67</div>
                    <div class ="simbolo">Ho</div>
                    <div class ="nombre-elemento">Holmio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineErbio" title="Erbio" href="#inlineElemento">
                    <div class ="nro-atomico">68</div>
                    <div class ="simbolo">Er</div>
                    <div class ="nombre-elemento">Erbio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineTulio" title="Tulio" href="#inlineElemento">
                    <div class ="nro-atomico">69</div>
                    <div class ="simbolo">Tm</div>
                    <div class ="nombre-elemento">Tulio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineYterbio" title="Yterbio" href="#inlineElemento">
                    <div class ="nro-atomico">70</div>
                    <div class ="simbolo">Yb</div>
                    <div class ="nombre-elemento">Yterbio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineLutecio" title="Lutecio" href="#inlineElemento">
                    <div class ="nro-atomico">71</div>
                    <div class ="simbolo">Lu</div>
                    <div class ="nombre-elemento">Lutecio</div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- fila 1 Actinidos -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-3 elemento-vacio-3"><div class="tipo-elemento"><br>*Act&iacute;nidos</div></div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineActinio" title="Actinio" href="#inlineElemento">
                    <div class ="nro-atomico">89</div>
                    <div class ="simbolo">Ac</div>
                    <div class ="nombre-elemento">Actinio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineTorio" title="Torio" href="#inlineElemento">
                    <div class ="nro-atomico">90</div>
                    <div class ="simbolo">Th</div>
                    <div class ="nombre-elemento">Torio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineProtactinio" title="Protactinio" href="#inlineElemento">
                    <div class ="nro-atomico">91</div>
                    <div class ="simbolo">Pa</div>
                    <div class ="nombre-elemento">Protactinio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineUranio" title="Uranio" href="#inlineElemento">
                    <div class ="nro-atomico">92</div>
                    <div class ="simbolo">U</div>
                    <div class ="nombre-elemento">Uranio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineNeptunio" title="Neptunio" href="#inlineElemento">
                    <div class ="nro-atomico">93</div>
                    <div class ="simbolo">Np</div>
                    <div class ="nombre-elemento">Neptunio</div>   
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlinePlutonio" title="Plutonio" href="#inlineElemento">
                    <div class ="nro-atomico">94</div>
                    <div class ="simbolo">Pu</div>
                    <div class ="nombre-elemento">Plutonio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineAmericio" title="Americio" href="#inlineElemento">
                    <div class ="nro-atomico">95</div>
                    <div class ="simbolo">Am</div>
                    <div class ="nombre-elemento">Americio</div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineCurio" title="Curio" href="#inlineElemento">
                    <div class ="nro-atomico">96</div>
                    <div class ="simbolo">Cm</div>
                    <div class ="nombre-elemento">Curio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineBerkelio" title="Berkelio" href="#inlineElemento">
                    <div class ="nro-atomico">97</div>
                    <div class ="simbolo">Bk</div>
                    <div class ="nombre-elemento">Berkelio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineCalifornio" title="Californio" href="#inlineElemento">
                    <div class ="nro-atomico">98</div>
                    <div class ="simbolo">Cf</div>
                    <div class ="nombre-elemento">Californio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineEinsteinio" title="Einsteinio" href="#inlineElemento">
                    <div class ="nro-atomico">99</div>
                    <div class ="simbolo">Es</div>
                    <div class ="nombre-elemento">Einsteinio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineFermio" title="Fermio" href="#inlineElemento">
                    <div class ="nro-atomico">100</div>
                    <div class ="simbolo">Fm</div>
                    <div class ="nombre-elemento">Fermio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineMendelevio" title="Mendelevio" href="#inlineElemento">
                    <div class ="nro-atomico">101</div>
                    <div class ="simbolo">Md</div>
                    <div class ="nombre-elemento">Mendelevio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineNobelio" title="Nobelio" href="#inlineElemento">
                    <div class ="nro-atomico">102</div>
                    <div class ="simbolo">No</div>
                    <div class ="nombre-elemento">Nobelio</div>
                </div>
                <div class="col-sm-1 elemento tierra-rara fancybox" id="inlineLawrencio" title="Lawrencio" href="#inlineElemento">
                    <div class ="nro-atomico">103</div>
                    <div class ="simbolo">Lr</div>
                    <div class ="nombre-elemento">Lawrencio</div>
                </div>
                <div class="col-sm-2 elemento-vacio-2"></div>
            </div>
        </div>
    </div>
    <div style="display:none">
        <div id="inlineElemento">
            <table>
                <tr>
                    <th>S&iacute;mbolo:</th>
                    <td>DB simbolo</td>
                </tr>
                <tr>
                    <th>N&uacute;mero at&oacute;mico:</th>
                    <td>DB numero atomico</td>
                </tr>
                <tr>
                    <th>Valencia:</th>
                    <td>DB valencia</td>
                </tr>
                <tr>
                    <th>Electronegatividad:</th>
                    <td>DB electronegatividad</td>
                </tr>
                <tr>
                    <th>Configuraci&oacute;n electr&oacute;nica:</th>
                    <td>DB configuracion electronica</td>
                </tr>
                <tr>
                    <th>Masa at&oacute;mica (g/m):</th>
                    <td>DB masa atomica</td>
                </tr>
                <tr>
                    <th>Detalles:</th>
                    <td>DB detalles</td>
                </tr>
                <tr>
                    <td>
                        <form id="preguntar" method="post" action="">
                            <p><input type="submit" value="Hacer Pregunta" /></p>
                        </form>
                    </td>
                    <td>
                        <form id="editar" method="post" action="">
                            <p><input type="submit" value="Editar" /></p>
                        </form>
                    </td>
                    <td>
                        <form id="guardar" method="post" action="">
                            <p><input type="submit" value="Guardar" /></p>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <!-- JS vinculados -->
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-1.10.2.js"></script>
    
    <!--<script type="text/javascript" language="javascript" src="scripts/jquery-2.1.1.js"></script> -->
    <script type="text/javascript" src="../Scripts/jquery.fancybox.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.fancybox').fancybox();
        })

        $("#logueo").fancybox({
            'scrolling': 'no',
            'titleShow': false,
            'onClosed': function () {
                $("#login_error").hide();
            }
        });

        $("#login_form").bind("submit", function () {

            if ($("#txtUsuario").val().length < 1 || $("#txtContrasenia").val().length < 1) {
                $("#login_error").show();
                $.fancybox.resize();
                return false;
            }

            $.fancybox.showActivity();

            $.ajax({
                type: "POST",
                cache: false,
                url: "/data/login.php",
                data: $(this).serializeArray(),
                success: function (data) {
                    $.fancybox(data);
                }
            });

            return false;
        });
		
        function changeBackground(list){
            var fondo = "url(file:///D:/UAI/4%20-%20LPPA/TP%20Tabla%20Periodica/Entrega1.lppa.20140511.GrupoFerrariPonce-v3/scripts/fancybox_overlay.png)";
            i = list.length;
            while(i--){
                list[i].style.background = fondo;
                $(list[i]).removeClass("fancybox");
            }
            return list;

        }

        function restoreBackground(list){
                i = list.length;
                while(i--){
                    $(list[i]).addClass("fancybox");
                    list[i].style.background = "";
                }
                return list;
        }

		function disableDivs (noDisable) {
            
			//This will disable everything contained in the div
              var noMetal = document.getElementsByClassName('col-sm-1 elemento no-metal fancybox');
              if(noDisable != "noMetal"){
                changeBackground(noMetal);
              }
              var noMetalDisabled = document.getElementsByClassName('col-sm-1 elemento no-metal');
              if(noDisable == "noMetal"){
                restoreBackground(noMetalDisabled);
              }

              var alcalinoTerreo = document.getElementsByClassName('col-sm-1 elemento metal-alcalinoterreo fancybox');
              if(noDisable != "alcalinoTerreo"){
                    changeBackground(alcalinoTerreo);
            }
            var alcalinoTerreoDisabled = document.getElementsByClassName('col-sm-1 elemento metal-alcalinoterreo');
            if(noDisable == "alcalinoTerreo"){
                restoreBackground(alcalinoTerreoDisabled);
            }

              var alcalino = document.getElementsByClassName('col-sm-1 elemento metal-alcalino fancybox');
              if(noDisable != "alcalino"){
                    changeBackground(alcalino);
              }
              var alcalinoDisabled = document.getElementsByClassName('col-sm-1 elemento metal-alcalino');
              if(noDisable == "alcalino"){
                restoreBackground(alcalinoDisabled);
              }

              var transicion = document.getElementsByClassName('col-sm-1 elemento metal-transicion fancybox');
              if(noDisable != "transicion") {
                    changeBackground(transicion);
              }
              var transicionDisabled = document.getElementsByClassName('col-sm-1 elemento metal-transicion');
              if(noDisable == "transicion"){
                restoreBackground(transicionDisabled);
              }

              var otrosMetales = document.getElementsByClassName('col-sm-1 elemento otros-metales fancybox');
              if(noDisable != "otrosMetales"){
                    changeBackground(otrosMetales);
              }
              var otrosMetalesDisabled = document.getElementsByClassName('col-sm-1 elemento otros-metales');
              if(noDisable == "otrosMetales"){
                restoreBackground(otrosMetalesDisabled);
              }

              var metaloide = document.getElementsByClassName('col-sm-1 elemento metaloide borde-izq-abajo fancybox');
              var metaloide2 = document.getElementsByClassName('col-sm-1 elemento metaloide fancybox');
              if(noDisable != "metaloide"){
                //document.getElementById('inlineBoro').style.background = fondo;
                changeBackground(metaloide);
                changeBackground(metaloide2);
            }
            var metaloideDisabled = document.getElementsByClassName('col-sm-1 elemento metaloide borde-izq-abajo');
            var metaloide2Disabled = document.getElementsByClassName('col-sm-1 elemento metaloide');
            if(noDisable == "metaloide"){
                //document.getElementById('inlineBoro').style.background = "";
                restoreBackground(metaloideDisabled);
                restoreBackground(metaloide2Disabled);
            }
              
              var halogeno = document.getElementsByClassName('col-sm-1 elemento halogeno fancybox');
              if(noDisable != "halogeno"){
                    changeBackground(halogeno);
              }
              var halogenoDisabled = document.getElementsByClassName('col-sm-1 elemento halogeno');
              if(noDisable == "halogeno"){
                restoreBackground(halogenoDisabled);
              }

              var gasNoble = document.getElementsByClassName('col-sm-1 elemento gas-noble fancybox');
              if(noDisable != "gasNoble"){
                    changeBackground(gasNoble);
              }
              var gasNobleDisabled = document.getElementsByClassName('col-sm-1 elemento gas-noble');
              if(noDisable == "gasNoble"){
                restoreBackground(gasNobleDisabled);
              }

              var lantanidos = document.getElementsByClassName('col-sm-1 elemento tierra-rara fancybox');
              if(noDisable != "tierraRara"){
                    changeBackground(lantanidos);
              }
              var lantanidosDisabled = document.getElementsByClassName('col-sm-1 elemento tierra-rara');
              if(noDisable == "tierraRara"){
                restoreBackground(lantanidosDisabled);
              }

		}

    </script>
</body>
</html>
