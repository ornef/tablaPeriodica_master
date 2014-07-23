<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActualizarContrasenia.aspx.cs" Inherits="TablaPeriodica.Views.publico.ActualizarContraseña" %>

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
        <div id="titulo">2 Actualizar Contraseña 3</div>
        <div id="clear"></div>
    </header>
    <div class="container">
        <link href="../../Scripts/bootstrap-responsive.min.css" rel="stylesheet" class="cssdeck" />
        <link href="../../Scripts/login/bootstrap.min.css" rel="stylesheet" class="cssdeck" />

        <div class="" id="loginModal">
            <div class="modal-body" style="overflow-y: visible;">
                <div class="well">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#login" data-toggle="tab">Actualizar Contraseña</a></li>
                    </ul>
                  
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane active in" id="login">
                                <fieldset>
                                    <legend>Cambiar Contraseña</legend>
                                    <asp:Label ID="lblMsgCrearCuenta" runat="server" CssClass="alert-error"></asp:Label>
                                    <div class="control-group">
                                        <label class="control-label">Contraseña Actual</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtContrasenia" runat="server" CssClass="input-xlarge" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtContrasenia" CssClass="alert-error" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Nueva Contraseña</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtNuevaContrasenia" runat="server" CssClass="input-xlarge" TextMode="Password"></asp:TextBox> 
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNuevaContrasenia" CssClass="alert-error" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Repita la Contraseña</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtContraseniaRepetida" runat="server" CssClass="input-xlarge" TextMode="Password" CausesValidation="True"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContraseniaRepetida" CssClass="alert-error" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNuevaContrasenia" ControlToValidate="txtContraseniaRepetida" CssClass="alert-error" ErrorMessage="La contraseña no coincide"></asp:CompareValidator>
                                        </div>
                                    </div>
                                    <div>
                                        <asp:Button ID="btnUpdatePsw" runat="server" CssClass="btn btn-primary" Text="Cambiar" OnClick="updatePsw_Click" />
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

