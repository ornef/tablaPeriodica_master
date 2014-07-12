<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="TablaPeriodica.Views.ElementoDetalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cabecera_va_aqui" runat="server">
    <header>
         <div id="menu">
		 <asp:Menu ID="Menu1" runat="server" Orientation="Vertical">
         </asp:Menu>
		 <a class="menu" id="volver" title="volver" href="../publico/TablaPeriodica.aspx">Volver a la Tabla</a></div>
        <div id="titulo">2 Listado de Preguntas 3</div>
        <div id="clear"></div>
    </header>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cuerpo_va_aqui" runat="server">
    <div class="container-fluid">

    <asp:Button ID="btnActualizar" runat="server" CssClass="button" Text="Actualizar" EnableViewState="False" OnClick="btnActualizar_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server" Width="100%" onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="false" emptydatatext="No hay datos para mostrar">
      <emptydatarowstyle backcolor="LightYellow" forecolor="Black"/>
      <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="true" ItemStyle-Width="15%" />
        <asp:BoundField DataField="DeUsuario" HeaderText="Emisor" ReadOnly="true" ItemStyle-Width="10%" /> 
        <asp:BoundField DataField="AUsuario" HeaderText="Receptor" ReadOnly="true" ItemStyle-Width="10%" /> 
        <asp:BoundField DataField="Mensaje" HeaderText="Mensaje" ReadOnly="true" ItemStyle-Width="40%" />  
        <asp:BoundField DataField="NroAtomico" HeaderText="Número Atómico" ReadOnly="true" ItemStyle-Width="20%" /> 
      </Columns>
      <SelectedRowStyle BackColor="#FFFFC0" />
    </asp:GridView>
   
        </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="pie_va_aqui" runat="server">
</asp:Content>
