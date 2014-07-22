<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="TablaPeriodica.aspx.cs" Inherits="TablaPeriodica.Views.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cabecera_va_aqui" runat="server">
    <header>
        <div id="menu">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="Menu" BackColor="Transparent">
            </asp:Menu>
            <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
        </div>
        <div id="titulo">2 TABLA PERIODICA DE LOS ELEMENTOS 3</div>
        <div id="clear"></div>
    </header>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cuerpo_va_aqui" runat="server">
    <div class="container-fluid">
        <!-- columna grupos -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo-titulo">Grupo</div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        1<br />
                        IA
                    </div>
                </div>
                <div class="col-sm-2 sin-espacio elemento-vacio-2"></div>
                <div class="col-sm-3 sin-espacio elemento-vacio-3">
                    <div class="referencias-titulo">
                        <span>Referencias</span>
                    </div>
                </div>
                <div class="col-sm-3 sin-espacio elemento-vacio-3">
                    <div class="referencias-100">
                        <button type="button" class="btn btn-default btn-xm" id="todos" value="Reload Page" onclick="window.location.reload()"></button>
                        <span>Ver Todos</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-8 elemento-vacio-8"></div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        18<br />
                        VIIIA
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 1 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="periodo">
                        Periodo<br />
                        1<br />
                        <br />
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=1" title="Hidr&oacute;geno">
                    <div class="col-sm-1 elemento no-metal">
                        <div class="nro-atomico">1</div>
                        <div class="simbolo">H</div>
                        <div class="nombre-elemento">Hidr&oacute;geno</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        2<br />
                        IIA
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio"></div>
                <div class="col-sm-1 elemento-vacio-6">
                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm no-metal" id="noMetal" onclick="disableDivs('noMetal')"></button>
                        <span>No metal</span>
                    </div>
                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm metal-alcalino" id="btnAlcalino" onclick="disableDivs('alcalino')"></button>
                        <span>Metal alcalino</span>
                    </div>
                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm metal-alcalinoterreo" id="btnAlcalinoTerreo" onclick="disableDivs('alcalinoTerreo')"></button>
                        <span>Metal alcalino-t&eacute;rreo</span>
                    </div>
                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm metal-transicion" id="btnTransicion" onclick="disableDivs('transicion')"></button>
                        <span>Metal de Transici&oacute;n</span>
                    </div>
                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm otros-metales" id="btnOtrosMetales" onclick="disableDivs('otrosMetales')"></button>
                        <span>Otros Metales</span>
                    </div>
                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm halogeno" id="btnHalogeno" onclick="disableDivs('halogeno')"></button>
                        <span>Hal&oacute;geno</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio-3"></div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        13<br />
                        IIIA
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        14<br />
                        IVA
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        15<br />
                        VA
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        16<br />
                        VIA
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        17<br />
                        VIIA
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=2" title="Helio">
                    <div class="col-sm-1 elemento gas-noble">
                        <div class="nro-atomico">2</div>
                        <div class="simbolo">He</div>
                        <div class="nombre-elemento">Helio</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 2 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="periodo">
                        <br />
                        2<br />
                        <br />
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=3" title="Litio">
                    <div class="col-sm-1 elemento metal-alcalino">
                        <div class="nro-atomico">3</div>
                        <div class="simbolo">Li</div>
                        <div class="nombre-elemento">Litio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=4" title="Berilio">
                    <div class="col-sm-1 elemento metal-alcalinoterreo">
                        <div class="nro-atomico">4</div>
                        <div class="simbolo">Be</div>
                        <div class="nombre-elemento">Berilio</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
                <div class="col-sm-1 elemento-vacio-6">

                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm metaloide" id="btnMetaloide" onclick="disableDivs('metaloide')"></button>
                        <span>Metaloide</span>
                    </div>
                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm gas-noble" id="btnGasNoble" onclick="disableDivs('gasNoble')"></button>
                        <span>Gas Noble</span>
                    </div>
                    <div class="referencias">
                        <button type="button" class="btn btn-default btn-xm tierra-rara" id="btnTierraRara" onclick="disableDivs('tierraRara')"></button>
                        <span>Lant&aacute;nidos - Act&iacute;nidos</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio-3"></div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=5" title="Boro">
                    <div class="col-sm-1 elemento metaloide borde-abajo">
                        <div class="nro-atomico">5</div>
                        <div class="simbolo">B</div>
                        <div class="nombre-elemento">Boro</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=6" title="Carbono">
                    <div class="col-sm-1 elemento no-metal">
                        <div class="nro-atomico">6</div>
                        <div class="simbolo">C</div>
                        <div class="nombre-elemento">Carbono</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=7" title="Nitr&oacute;geno">
                    <div class="col-sm-1 elemento no-metal">
                        <div class="nro-atomico">7</div>
                        <div class="simbolo">N</div>
                        <div class="nombre-elemento">Nitr&oacute;geno</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=8" title="Ox&iacute;geno">
                    <div class="col-sm-1 elemento no-metal">
                        <div class="nro-atomico">8</div>
                        <div class="simbolo">O</div>
                        <div class="nombre-elemento">Ox&iacute;geno</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=9" title="Fl&uacute;or">
                    <div class="col-sm-1 elemento halogeno">
                        <div class="nro-atomico">9</div>
                        <div class="simbolo">F</div>
                        <div class="nombre-elemento">Fl&uacute;or</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=10" title="Ne&oacute;">
                    <div class="col-sm-1 elemento gas-noble">
                        <div class="nro-atomico">10</div>
                        <div class="simbolo">Ne</div>
                        <div class="nombre-elemento">Ne&oacute;n</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 3 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="periodo">
                        <br />
                        3<br />
                        <br />
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=11" title="Sodio">
                    <div class="col-sm-1 elemento metal-alcalino">
                        <div class="nro-atomico">11</div>
                        <div class="simbolo">Na</div>
                        <div class="nombre-elemento">Sodio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=12" title="Magnesio">
                    <div class="col-sm-1 elemento metal-alcalinoterreo">
                        <div class="nro-atomico">12</div>
                        <div class="simbolo">Mg</div>
                        <div class="nombre-elemento">Magnesio</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        3<br />
                        IIIB
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        4<br />
                        IVB
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        5<br />
                        VB
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        6<br />
                        VIB
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        7<br />
                        VIIB
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        8<br />
                        ----
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        9<br />
                        VIIIB
                    </div>
                </div>
            </div>
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        10<br />
                        ----
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        11<br />
                        IB
                    </div>
                </div>
                <div class="col-sm-1 elemento-vacio">
                    <div class="grupo">
                        12<br />
                        IIB
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=13" title="Aluminio">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">13</div>
                        <div class="simbolo">Al</div>
                        <div class="nombre-elemento">Aluminio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=14" title="Silicio">
                    <div class="col-sm-1 elemento metaloide borde-izq-abajo">
                        <div class="nro-atomico">14</div>
                        <div class="simbolo">Si</div>
                        <div class="nombre-elemento">Silicio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=15" title="F&oacute;sforo">
                    <div class="col-sm-1 elemento no-metal">
                        <div class="nro-atomico">15</div>
                        <div class="simbolo">P</div>
                        <div class="nombre-elemento">F&oacute;sforo</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=16" title="Azufre">
                    <div class="col-sm-1 elemento no-metal">
                        <div class="nro-atomico">16</div>
                        <div class="simbolo">S</div>
                        <div class="nombre-elemento">Azufre</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=17" title="Cloro">
                    <div class="col-sm-1 elemento halogeno">
                        <div class="nro-atomico">17</div>
                        <div class="simbolo">Cl</div>
                        <div class="nombre-elemento">Cloro</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=18" title="Arg&oacute;n">
                    <div class="col-sm-1 elemento gas-noble">
                        <div class="nro-atomico">18</div>
                        <div class="simbolo">Ar</div>
                        <div class="nombre-elemento">Arg&oacute;n</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 4 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="periodo">
                        <br />
                        4<br />
                        <br />
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=19" title="Potasio">
                    <div class="col-sm-1 elemento metal-alcalino">
                        <div class="nro-atomico">19</div>
                        <div class="simbolo">K</div>
                        <div class="nombre-elemento">Potasio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=20" title="Calcio">
                    <div class="col-sm-1 elemento metal-alcalinoterreo">
                        <div class="nro-atomico">20</div>
                        <div class="simbolo">Ca</div>
                        <div class="nombre-elemento">Calcio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=21" title="Escandio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">21</div>
                        <div class="simbolo">Sc</div>
                        <div class="nombre-elemento">Escandio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=22" title="Titanio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">22</div>
                        <div class="simbolo">Ti</div>
                        <div class="nombre-elemento">Titanio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=23" title="Vanadio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">23</div>
                        <div class="simbolo">V</div>
                        <div class="nombre-elemento">Vanadio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=24" title="Cromo">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">24</div>
                        <div class="simbolo">Cr</div>
                        <div class="nombre-elemento">Cromo</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=25" title="Manganeso">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">25</div>
                        <div class="simbolo">Mn</div>
                        <div class="nombre-elemento">Manganeso</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=26" title="Hierro">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">26</div>
                        <div class="simbolo">Fe</div>
                        <div class="nombre-elemento">Hierro</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=27" title="Cobalto">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">27</div>
                        <div class="simbolo">Co</div>
                        <div class="nombre-elemento">Cobalto</div>
                    </div>
                </a>
            </div>
            <div class="col-sm-10 sin-espacio">
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=28" title="N&iacute;quel">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">28</div>
                        <div class="simbolo">Ni</div>
                        <div class="nombre-elemento">N&iacute;quel</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=29" title="Cobre">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">29</div>
                        <div class="simbolo">Cu</div>
                        <div class="nombre-elemento">Cobre</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=30" title="Cinc">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">30</div>
                        <div class="simbolo">Zn</div>
                        <div class="nombre-elemento">Cinc</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=31" title="Galio">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">31</div>
                        <div class="simbolo">Ga</div>
                        <div class="nombre-elemento">Galio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=32" title="Germanio">
                    <div class="col-sm-1 elemento metaloide">
                        <div class="nro-atomico">32</div>
                        <div class="simbolo">Ge</div>
                        <div class="nombre-elemento">Germanio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=33" title="Ars&eacute;nico">
                    <div class="col-sm-1 elemento metaloide borde-izq-abajo">
                        <div class="nro-atomico">33</div>
                        <div class="simbolo">As</div>
                        <div class="nombre-elemento">Ars&eacute;nico</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=34" title="Selenio">
                    <div class="col-sm-1 elemento no-metal">
                        <div class="nro-atomico">34</div>
                        <div class="simbolo">Se</div>
                        <div class="nombre-elemento">Selenio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=35" title="Bromo">
                    <div class="col-sm-1 elemento halogeno">
                        <div class="nro-atomico">35</div>
                        <div class="simbolo">Br</div>
                        <div class="nombre-elemento">Bromo</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=36" title="Cript&oacute;n">
                    <div class="col-sm-1 elemento gas-noble">
                        <div class="nro-atomico">36</div>
                        <div class="simbolo">Kr</div>
                        <div class="nombre-elemento">Cript&oacute;n</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 5 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="periodo">
                        <br />
                        5<br />
                        <br />
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=37" title="Rubidio">
                    <div class="col-sm-1 elemento metal-alcalino">
                        <div class="nro-atomico">37</div>
                        <div class="simbolo">Rb</div>
                        <div class="nombre-elemento">Rubidio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=38" title="Estroncio">
                    <div class="col-sm-1 elemento metal-alcalinoterreo">
                        <div class="nro-atomico">38</div>
                        <div class="simbolo">Sr</div>
                        <div class="nombre-elemento">Estroncio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=39" title="Ytrio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">39</div>
                        <div class="simbolo">Y</div>
                        <div class="nombre-elemento">Ytrio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=40" title="Circonio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">40</div>
                        <div class="simbolo">Zr</div>
                        <div class="nombre-elemento">Circonio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=41" title="Niobio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">41</div>
                        <div class="simbolo">Nb</div>
                        <div class="nombre-elemento">Niobio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=42" title="Molibdeno">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">42</div>
                        <div class="simbolo">Mo</div>
                        <div class="nombre-elemento">Molibdeno</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=43" title="Tecnecio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">43</div>
                        <div class="simbolo">Tc</div>
                        <div class="nombre-elemento">Tecnecio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=44" title="Rutenio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">44</div>
                        <div class="simbolo">Ru</div>
                        <div class="nombre-elemento">Rutenio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=45" title="Rodio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">45</div>
                        <div class="simbolo">Rh</div>
                        <div class="nombre-elemento">Rodio</div>
                    </div>
                </a>
            </div>
            <div class="col-sm-10 sin-espacio">
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=46" title="Paladio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">46</div>
                        <div class="simbolo">Pd</div>
                        <div class="nombre-elemento">Paladio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=47" title="Plata">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">47</div>
                        <div class="simbolo">Ag</div>
                        <div class="nombre-elemento">Plata</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=48" title="Cadmio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">48</div>
                        <div class="simbolo">Cd</div>
                        <div class="nombre-elemento">Cadmio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=49" title="Indio">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">49</div>
                        <div class="simbolo">In</div>
                        <div class="nombre-elemento">Indio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=50" title="Esta&ntilde;io">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">50</div>
                        <div class="simbolo">Sn</div>
                        <div class="nombre-elemento">Esta&ntilde;o</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=51" title="Antimonio">
                    <div class="col-sm-1 elemento metaloide">
                        <div class="nro-atomico">51</div>
                        <div class="simbolo">Sb</div>
                        <div class="nombre-elemento">Antimonio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=52" title="Telurio">
                    <div class="col-sm-1 elemento metaloide borde-izq-abajo">
                        <div class="nro-atomico">52</div>
                        <div class="simbolo">Te</div>
                        <div class="nombre-elemento">Teluro</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=53" title="Yodo">
                    <div class="col-sm-1 elemento halogeno">
                        <div class="nro-atomico">53</div>
                        <div class="simbolo">I</div>
                        <div class="nombre-elemento">Yodo</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=54" title="Xenon">
                    <div class="col-sm-1 elemento gas-noble">
                        <div class="nro-atomico">54</div>
                        <div class="simbolo">Xe</div>
                        <div class="nombre-elemento">Xeno&oacute;n</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 6 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="periodo">
                        <br />
                        6<br />
                        <br />
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=55" title="Cesio">
                    <div class="col-sm-1 elemento metal-alcalino">
                        <div class="nro-atomico">55</div>
                        <div class="simbolo">Cs</div>
                        <div class="nombre-elemento">Cesio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=56" title="Bario">
                    <div class="col-sm-1 elemento metal-alcalinoterreo">
                        <div class="nro-atomico">56</div>
                        <div class="simbolo">Ba</div>
                        <div class="nombre-elemento">Bario</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento tierra-rara">
                    <div class="nro-atomico">57-71</div>
                    <div class="simbolo">La-Lu</div>
                    <div class="nombre-elemento">Lant&aacute;nidos</div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=72" title="Hafnio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">72</div>
                        <div class="simbolo">Hf</div>
                        <div class="nombre-elemento">Hafnio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=73" title="Tantalio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">73</div>
                        <div class="simbolo">Ta</div>
                        <div class="nombre-elemento">T&aacute;ntalo</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=74" title="Wolframio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">74</div>
                        <div class="simbolo">W</div>
                        <div class="nombre-elemento">Wolframio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=75" title="Renio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">75</div>
                        <div class="simbolo">Re</div>
                        <div class="nombre-elemento">Renio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=76" title="Osmio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">76</div>
                        <div class="simbolo">Os</div>
                        <div class="nombre-elemento">Osmio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=77" title="Iridio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">77</div>
                        <div class="simbolo">Ir</div>
                        <div class="nombre-elemento">Iridio</div>
                    </div>
                </a>
            </div>
            <div class="col-sm-10 sin-espacio">
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=78" title="Platino">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">78</div>
                        <div class="simbolo">Pt</div>
                        <div class="nombre-elemento">Platino</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=79" title="Oro">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">79</div>
                        <div class="simbolo">Au</div>
                        <div class="nombre-elemento">Oro</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=80" title="Mercurio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">80</div>
                        <div class="simbolo">Hg</div>
                        <div class="nombre-elemento">Mercurio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=81" title="Talio">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">81</div>
                        <div class="simbolo">Tl</div>
                        <div class="nombre-elemento">Talio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=82" title="Plomo">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">82</div>
                        <div class="simbolo">Pb</div>
                        <div class="nombre-elemento">Plomo</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=83" title="Bismuto">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">83</div>
                        <div class="simbolo">Bi</div>
                        <div class="nombre-elemento">Bismuto</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=84" title="Polonio">
                    <div class="col-sm-1 elemento metaloide">
                        <div class="nro-atomico">84</div>
                        <div class="simbolo">Po</div>
                        <div class="nombre-elemento">Polonio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=85" title="Astato">
                    <div class="col-sm-1 elemento halogeno borde-izq">
                        <div class="nro-atomico">85</div>
                        <div class="simbolo">At</div>
                        <div class="nombre-elemento">Astato</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=86" title="Rad&oacute;n">
                    <div class="col-sm-1 elemento gas-noble">
                        <div class="nro-atomico">86</div>
                        <div class="simbolo">Rn</div>
                        <div class="nombre-elemento">Rad&oacute;n</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- columna periodo 7 -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-1 elemento-vacio">
                    <div class="periodo">
                        <br />
                        7<br />
                        <br />
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=87" title="Francio">
                    <div class="col-sm-1 elemento metal-alcalino">
                        <div class="nro-atomico">87</div>
                        <div class="simbolo">Fr</div>
                        <div class="nombre-elemento">Francio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=88" title="Radio">
                    <div class="col-sm-1 elemento metal-alcalinoterreo">
                        <div class="nro-atomico">88</div>
                        <div class="simbolo">Ra</div>
                        <div class="nombre-elemento">Radio</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento tierra-rara">
                    <div class="nro-atomico">89-103</div>
                    <div class="simbolo">Ac-Lr</div>
                    <div class="nombre-elemento">Act&iacute;nidos</div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=104" title="Rutherfordio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">104</div>
                        <div class="simbolo">Rf</div>
                        <div class="nombre-elemento" style="overflow-wrap: normal">Rutherfordio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=105" title="Dubnio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">105</div>
                        <div class="simbolo">Db</div>
                        <div class="nombre-elemento">Dubnio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=106" title="Seaborgio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">106</div>
                        <div class="simbolo">Sg</div>
                        <div class="nombre-elemento">Seaborgio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=107" title="Bohrio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">107</div>
                        <div class="simbolo">Bh</div>
                        <div class="nombre-elemento">Bohrio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=108" title="Hassio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">108</div>
                        <div class="simbolo">Hs</div>
                        <div class="nombre-elemento">Hassio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=109" title="Meitnerio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">109</div>
                        <div class="simbolo">Mt</div>
                        <div class="nombre-elemento">Meitnerio</div>
                    </div>
                </a>
            </div>
            <div class="col-sm-10 sin-espacio">
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=110" title="Darmstadtio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">110</div>
                        <div class="simbolo">Ds</div>
                        <div class="nombre-elemento">Darmstadtio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=111" title="Roentgenio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">111</div>
                        <div class="simbolo">Rg</div>
                        <div class="nombre-elemento">Roentgenio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=112" title="Copernicio">
                    <div class="col-sm-1 elemento metal-transicion">
                        <div class="nro-atomico">112</div>
                        <div class="simbolo">Cn</div>
                        <div class="nombre-elemento">Copernicio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=113" title="Ununtrio">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">113</div>
                        <div class="simbolo">Uut</div>
                        <div class="nombre-elemento">Ununtrio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=114" title="Flerovio">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">114</div>
                        <div class="simbolo">Fl</div>
                        <div class="nombre-elemento">Flerovio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=115" title="Ununpentio">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">115</div>
                        <div class="simbolo">Uup</div>
                        <div class="nombre-elemento">Ununpentio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=116" title="Livermorio">
                    <div class="col-sm-1 elemento otros-metales">
                        <div class="nro-atomico">116</div>
                        <div class="simbolo">Lv</div>
                        <div class="nombre-elemento">Livermorio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=117" title="Ununseptio">
                    <div class="col-sm-1 elemento halogeno">
                        <div class="nro-atomico">117</div>
                        <div class="simbolo">Uus</div>
                        <div class="nombre-elemento">Ununseptio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=118" title="Ununoctio">
                    <div class="col-sm-1 elemento gas-noble">
                        <div class="nro-atomico">118</div>
                        <div class="simbolo">Uuo</div>
                        <div class="nombre-elemento">Ununoctio</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <div id="separador">
            <!--espacio-->
        </div>
        <!-- fila 1 Lantanidos -->
        <div class="row lantanidos">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-3 elemento-vacio-3">
                    <div class="tipo-elemento">
                        <br />
                        <span class="ref">Lant&aacute;nidos</span>
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=57" title="Lantano">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">57</div>
                        <div class="simbolo">La</div>
                        <div class="nombre-elemento">Lantano</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=58" title="Cerio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">58</div>
                        <div class="simbolo">Ce</div>
                        <div class="nombre-elemento">Cerio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=59" title="Praseodimio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">59</div>
                        <div class="simbolo">Pr</div>
                        <div class="nombre-elemento">Praseodimio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=60" title="Neodimio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">60</div>
                        <div class="simbolo">Nd</div>
                        <div class="nombre-elemento">Neodimio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=61" title="Prometio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">61</div>
                        <div class="simbolo">Pm</div>
                        <div class="nombre-elemento">Prometio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=62" title="Samario">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">62</div>
                        <div class="simbolo">Sm</div>
                        <div class="nombre-elemento">Samario</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=63" title="Europio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">63</div>
                        <div class="simbolo">Eu</div>
                        <div class="nombre-elemento">Europio</div>
                    </div>
                </a>
            </div>
            <div class="col-sm-10 sin-espacio">
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=64" title="Gadolinio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">64</div>
                        <div class="simbolo">Gd</div>
                        <div class="nombre-elemento">Gadolinio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=65" title="Terbio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">65</div>
                        <div class="simbolo">Tb</div>
                        <div class="nombre-elemento">Terbio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=66" title="Disprosio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">66</div>
                        <div class="simbolo">Dy</div>
                        <div class="nombre-elemento">Disprosio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=67" title="Holmio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">67</div>
                        <div class="simbolo">Ho</div>
                        <div class="nombre-elemento">Holmio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=68" title="Erbio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">68</div>
                        <div class="simbolo">Er</div>
                        <div class="nombre-elemento">Erbio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=69" title="Tulio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">69</div>
                        <div class="simbolo">Tm</div>
                        <div class="nombre-elemento">Tulio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=70" title="Yterbio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">70</div>
                        <div class="simbolo">Yb</div>
                        <div class="nombre-elemento">Yterbio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=71" title="Lutecio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">71</div>
                        <div class="simbolo">Lu</div>
                        <div class="nombre-elemento">Lutecio</div>
                    </div>
                </a>
                <div class="col-sm-1 elemento-vacio"></div>
                <div class="col-sm-1 elemento-vacio"></div>
            </div>
        </div>
        <!-- fila 1 Actinidos -->
        <div class="row">
            <div class="col-sm-10 sin-espacio">
                <div class="col-sm-3 elemento-vacio-3">
                    <div class="tipo-elemento">
                        <br />
                        <span class="ref">Act&iacute;nidos</span>
                    </div>
                </div>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=89" title="Actinio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">89</div>
                        <div class="simbolo">Ac</div>
                        <div class="nombre-elemento">Actinio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=90" title="Torio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">90</div>
                        <div class="simbolo">Th</div>
                        <div class="nombre-elemento">Torio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=91" title="Protactinio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">91</div>
                        <div class="simbolo">Pa</div>
                        <div class="nombre-elemento">Protactinio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=92" title="Uranio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">92</div>
                        <div class="simbolo">U</div>
                        <div class="nombre-elemento">Uranio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=93" title="Neptunio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">93</div>
                        <div class="simbolo">Np</div>
                        <div class="nombre-elemento">Neptunio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=94" title="Plutonio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">94</div>
                        <div class="simbolo">Pu</div>
                        <div class="nombre-elemento">Plutonio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=95" title="Americio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">95</div>
                        <div class="simbolo">Am</div>
                        <div class="nombre-elemento">Americio</div>
                    </div>
                </a>
            </div>
            <div class="col-sm-10 sin-espacio">
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=96" title="Curio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">96</div>
                        <div class="simbolo">Cm</div>
                        <div class="nombre-elemento">Curio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=97" title="Berkelio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">97</div>
                        <div class="simbolo">Bk</div>
                        <div class="nombre-elemento">Berkelio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=98" title="Californio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">98</div>
                        <div class="simbolo">Cf</div>
                        <div class="nombre-elemento">Californio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=99" title="Einsteinio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">99</div>
                        <div class="simbolo">Es</div>
                        <div class="nombre-elemento">Einsteinio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=100" title="Fermio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">100</div>
                        <div class="simbolo">Fm</div>
                        <div class="nombre-elemento">Fermio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=101" title="Mendelevio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">101</div>
                        <div class="simbolo">Md</div>
                        <div class="nombre-elemento">Mendelevio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=102" title="Nobelio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">102</div>
                        <div class="simbolo">No</div>
                        <div class="nombre-elemento">Nobelio</div>
                    </div>
                </a>
                <a class="iframe showElement" href="mostrarElemento.aspx?nroAtomico=103" title="Lawrencio">
                    <div class="col-sm-1 elemento tierra-rara">
                        <div class="nro-atomico">103</div>
                        <div class="simbolo">Lr</div>
                        <div class="nombre-elemento">Lawrencio</div>
                    </div>
                </a>
                <div class="col-sm-2 elemento-vacio-2"></div>
            </div>
        </div>
    </div>

    <!-- JS vinculados -->
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery-1.10.2.js"></script>

    <!--<script type="text/javascript" language="javascript" src="scripts/jquery-2.1.1.js"></script> -->
    <script type="text/javascript" src="../../Scripts/jquery.fancybox.js"></script>
    <script src="../../Scripts/tablaPeriodica.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".iframe").fancybox({
                'width': '50%',
                'height': '75%',
                'autoScale': false,
                'transitionIn': 'elastic',
                'transitionOut': 'fade',
                'type': 'iframe',
                beforeShow: function () {
                    $(".fancybox-skin").css("background", "url(../../Images/background-image.jpg) no-repeat center center fixed");
                }
            });

        })
    </script>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="pie_va_aqui" runat="server">
</asp:Content>
