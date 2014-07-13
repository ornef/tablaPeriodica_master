<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mostrarElemento.aspx.cs" Inherits="TablaPeriodica.Views.publico.mostrarElemento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="inlineElemento" onclick="inlineElemento_Click">
                <asp:Table ID="TableElement" runat="server">
                    <asp:TableRow runat="server" ID="ElementoTabla" >
                        <asp:TableCell ID="TableCell1" runat="server">S&iacute;mbolo:</asp:TableCell>
                        <asp:TableCell ID="TableCell2" runat="server"><asp:TextBox ID="txtSimbolo" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell ID="TableCell17" runat="server">Nombre:</asp:TableCell>
                        <asp:TableCell ID="TableCell18" runat="server"><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell ID="TableCell3" runat="server">N&uacute;mero at&oacute;mico:</asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server"><asp:TextBox ID="txtNroAtomico" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell ID="TableCell5" runat="server">Valencia:</asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server"><asp:TextBox ID="txtValencia" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server">
                        <asp:TableCell ID="TableCell7" runat="server">Electronegatividad:</asp:TableCell>
                        <asp:TableCell ID="TableCell8" runat="server"><asp:TextBox ID="txtElectronegatividad" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                   <asp:TableRow ID="TableRow5" runat="server">
                        <asp:TableCell ID="TableCell9" runat="server">Configuraci&oacute;n electr&oacute;nica:</asp:TableCell>
                        <asp:TableCell ID="TableCell10" runat="server"><asp:TextBox ID="txtConfElec" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow6" runat="server">
                        <asp:TableCell ID="TableCell11" runat="server">Masa at&oacute;mica (g/m):</asp:TableCell>
                        <asp:TableCell ID="TableCell12" runat="server"><asp:TextBox ID="txtMasa" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow7" runat="server">
                        <asp:TableCell ID="TableCell13" runat="server">Detalles:</asp:TableCell>
                        <asp:TableCell ID="TableCell14" runat="server"><asp:TextBox ID="txtDetalles" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow8" runat="server">
                        <asp:TableCell ID="TableCell15" runat="server" > 
                            <asp:Button id="btnPreguntar" Text="Preguntar" runat="server" OnClick="btnPreguntar_Click" />
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell16" runat="server">
                            <asp:Button id="btnEditar" Text="Editar" runat="server" OnClick="btnEditar_Click" />
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell19" runat="server">
                            <asp:Button id="btnGuardar" Text="Guardar" runat="server" OnClick="btnGuardar_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                 </asp:Table>
                    <div id="hacerPregunta">
                <asp:TextBox ID="txtMessage" runat="server" Visible="false" OnTextChanged="btnEnviar_Click"></asp:TextBox>
                <asp:Button id="btnEnviar" Text="Enviar" runat="server" OnClick="btnPreguntar_Click" Visible="false"/>  
                <asp:HiddenField ID="hiddenDisplayName" runat="server" OnValueChanged="btnPreguntar_Click" />
                <asp:HiddenField ID="hiddenElemento" runat="server" OnValueChanged="btnPreguntar_Click" />
            </div>
            </div>
    </div>
    </form>
</body>
</html>
