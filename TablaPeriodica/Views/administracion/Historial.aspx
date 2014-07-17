<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="TablaPeriodica.Views.ElementoDetalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cabecera_va_aqui" runat="server">
    <header>
        <div>
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="Menu" BackColor="Transparent">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Views/publico/TablaPeriodica.aspx" Text="Volver a la Tabla"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
		<div id="titulo">2 Listado de Preguntas 3</div>
        <div id="clear"></div>
    </header>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cuerpo_va_aqui" runat="server">
    <div class="container-fluid">

    <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-primary" Text="Actualizar" EnableViewState="False" OnClick="btnActualizar_Click" />
        <asp:Label ID="lblMsgHistorial" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" CssClass="TableElement" runat="server" Width="90%" AutoGenerateColumns="false" emptydatatext="No hay datos para mostrar" BackColor="WhiteSmoke" GridLines="Horizontal">
      <emptydatarowstyle backcolor="LightYellow"/>
      <Columns>
        <asp:CommandField ShowSelectButton="true"/>
        <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="true" ItemStyle-Width="15%" />
        <asp:BoundField DataField="DeUsuario" HeaderText="Emisor" ReadOnly="true" ItemStyle-Width="10%" /> 
        <asp:BoundField DataField="AUsuario" HeaderText="Receptor" ReadOnly="true" ItemStyle-Width="10%" /> 
        <asp:BoundField DataField="PreguntaAlumno" HeaderText="Pregunta" ReadOnly="true" ItemStyle-Width="30%" />
        <asp:BoundField DataField="Respuesta" HeaderText="Respuesta" ReadOnly="true" ItemStyle-Width="30%" />  
        <asp:BoundField DataField="NroAtomico" HeaderText="Número Atómico" ReadOnly="true" ItemStyle-Width="5%" /> 
      </Columns>
      <SelectedRowStyle BackColor="#FFFFC0" />
    </asp:GridView>
   
        </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="pie_va_aqui" runat="server">
</asp:Content>
