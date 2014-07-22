<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="olvidoContrasenia.aspx.cs" Inherits="TablaPeriodica.Views.publico.olvidoContrasenia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Tabla Peri&oacute;dica</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="../../css/tablaPeriodica.css" media="screen" />
</head>
<body>
    <form id="form" runat="server" class="form-horizontal">
    <header>
          
        <div>
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="Menu" BackColor="Transparent">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Views/publico/TablaPeriodica.aspx" Text="Volver a la Tabla"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div id="titulo">2 Recuperar Contraseña 3</div>
        <div id="clear"></div>
    </header>
    <div class="container">
        <link href="../../Scripts/bootstrap-responsive.min.css" rel="stylesheet" class="cssdeck" />
        <link href="../../Scripts/login/bootstrap.min.css" rel="stylesheet" class="cssdeck" />

        <div class="" id="loginModal">
            <div class="modal-body" style="overflow-y: visible;">
                <div class="well">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#login" data-toggle="tab">Recuperar Contraseña</a></li>
                    </ul>
                  
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane active in" id="login">
                                <fieldset>
                                    <asp:Label ID="lblMsgOlvido" runat="server" CssClass="alert-error"></asp:Label>
                                    <div class="control-group">
                                        <label class="control-label">Email</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-xlarge" TextMode="Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" CssClass="alert-error" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div>
                                        <asp:Button ID="btnEnviarContrasenia" runat="server" CssClass="btn btn-primary" Text="Enviar Mail" OnClick="btnEnviarContrasenia_Click" />
                                    </div>

                                </fieldset>
                            </div>
                    </form>
                </div>
            </div>
            <script class="cssdeck" src="../../Scripts/login/jquery.min.js"></script>
            <script class="cssdeck" src="../../Scripts/login/bootstrap.min.js"></script>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#tabs').tab();
            })
        </script>
</body>
</html>
