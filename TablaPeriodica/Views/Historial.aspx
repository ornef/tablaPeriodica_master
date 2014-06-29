﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="TablaPeriodica.Views.ElementoDetalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../css/tablaPeriodica.css" media="screen"/>
</head>
<body>
    <header>
        <a id="volver" title="volver" href="TablaPeriodica.aspx">Volver a la Tabla</a>
        <h1>2 Listado de Preguntas 3</h1>
    </header>
    <div class="container-fluid">
    <form id="form1" runat="server">
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
    </form>
        </div>
</body>
</html>
