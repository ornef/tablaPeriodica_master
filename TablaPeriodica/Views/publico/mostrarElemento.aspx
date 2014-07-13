<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mostrarElemento.aspx.cs" Inherits="TablaPeriodica.Views.publico.mostrarElemento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="inlineElemento" onclick="inlineElemento_Click">
                <asp:Label ID="lblMsgMostrarElemento" runat="server" CssClass="alert-error"></asp:Label>
                <asp:Table ID="TableElement" runat="server">
                    <asp:TableRow runat="server" ID="ElementoTabla">
                        <asp:TableCell ID="TableCell1" runat="server" Font-Bold="true" Width="200px" HorizontalAlign="Right">S&iacute;mbolo:</asp:TableCell>
                        <asp:TableCell ID="TableCell2" runat="server" Width="200px" HorizontalAlign="Left"><asp:Label runat="server" ID="lblSimbolo" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell ID="TableCell17" runat="server" Font-Bold="true" Width="200px" HorizontalAlign="Right">Nombre:</asp:TableCell>
                        <asp:TableCell ID="TableCell18" runat="server" Width="200px" HorizontalAlign="Left"><asp:Label runat="server" ID="lblNombre" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell ID="TableCell3" runat="server" Font-Bold="true" Width="200px" HorizontalAlign="Right">N&uacute;mero at&oacute;mico:</asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server" Width="200px" HorizontalAlign="Left"><asp:Label runat="server" ID="lblNroAtomico" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell ID="TableCell5" runat="server" Font-Bold="true" Width="200px" HorizontalAlign="Right">Tipo de elemento:</asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server" Width="200px" HorizontalAlign="Left"><asp:Label runat="server" ID="lblTipo" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server">
                        <asp:TableCell ID="TableCell7" runat="server" Font-Bold="true" Width="200px" HorizontalAlign="Right">Masa at&oacute;mica  (g/m):</asp:TableCell>
                        <asp:TableCell ID="TableCell8" runat="server" Width="200px" HorizontalAlign="Left"><asp:Label runat="server" ID="lblMasa" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                   <asp:TableRow ID="TableRow5" runat="server">
                        <asp:TableCell ID="TableCell9" runat="server" Font-Bold="true" Width="200px" HorizontalAlign="Right">Grupo:</asp:TableCell>
                        <asp:TableCell ID="TableCell10" runat="server" Width="200px" HorizontalAlign="Left"><asp:Label runat="server" ID="lblGrupo"  Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow6" runat="server">
                        <asp:TableCell ID="TableCell11" runat="server" Font-Bold="true" Width="200px" HorizontalAlign="Right">Periodo:</asp:TableCell>
                        <asp:TableCell ID="TableCell12" runat="server" Width="200px" HorizontalAlign="Left"><asp:Label runat="server" ID="lblPeriodo"  Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow7" runat="server">
                        <asp:TableCell ID="TableCell13" runat="server" Font-Bold="true" Width="200px" HorizontalAlign="Right">Detalles:</asp:TableCell>
                        <asp:TableCell ID="TableCell14" runat="server" Width="300px" HorizontalAlign="Left"><asp:TextBox ID="txtDetalles" runat="server" rows="5" Width="300px" TextMode="multiline" Enabled="false" ReadOnly="true"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow8" runat="server">
                        <asp:TableCell ID="TableCell15" runat="server">
                            <asp:Button ID="btnPreguntar" Text="Preguntar" runat="server" OnClick="btnPreguntar_Click" />
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell16" runat="server">
                            <asp:Button ID="btnEditar" Text="Editar" runat="server" OnClick="btnEditar_Click" />
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell19" runat="server">
                            <asp:Button ID="btnGuardar" Text="Guardar" runat="server" OnClick="btnGuardar_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <div id="hacerPregunta">
                    <asp:TextBox ID="txtMessage" runat="server" Visible="false" TextMode="multiline" Columns="40" Rows="5" OnTextChanged="btnEnviar_Click"></asp:TextBox>
                    <asp:Button ID="btnEnviar" Text="Enviar" runat="server" OnClick="btnPreguntar_Click" Visible="false" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
