<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site1.Master" AutoEventWireup="true" CodeBehind="GestionConfiguracion.aspx.cs" Inherits="TablaPeriodica.Views.administracion.GestionConfiguracion" %>
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
		<div id="titulo">2 Gestión de Configuración 3</div>
        <div id="clear"></div>
    </header>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cuerpo_va_aqui" runat="server">
      <div class="container-fluid">

    <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-primary" Text="Actualizar" EnableViewState="False" OnClick="btnActualizar_Click" />
          <asp:HyperLink ID="HyperLink1" runat="server" href="AgregarConfiguracion.aspx" Text="Agregar nueva Configuración"></asp:HyperLink>
          <asp:Label ID="lblMsgHistorial" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" CssClass="TableElement" runat="server" Width="50%" AutoGenerateColumns="false" emptydatatext="No hay datos para mostrar" BackColor="WhiteSmoke" GridLines="Horizontal">
      <emptydatarowstyle backcolor="LightYellow"/>
      <Columns>
        <asp:CommandField ShowSelectButton="true"/>
        <asp:BoundField DataField="id" HeaderText="Clave" ReadOnly="true" ItemStyle-Width="20%" />
        <asp:BoundField DataField="valor" HeaderText="Valor" ReadOnly="false" ItemStyle-Width="20%" /> 
      </Columns>
      <SelectedRowStyle BackColor="#FFFFC0" />
    </asp:GridView>
   
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="pie_va_aqui" runat="server">
</asp:Content>
