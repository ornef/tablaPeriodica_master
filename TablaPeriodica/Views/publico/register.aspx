<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="TablaPeriodica.Views.publico.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tabla Peri&oacute;dica</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="../../css/tablaPeriodica.css" media="screen" />
</head>
<body>
    <header>
        <div id="menu"><a class="menu" id="volver" title="volver" href="TablaPeriodica.aspx">Volver a la Tabla</a></div>
        <div id="titulo">2 Registrarme 3</div>
        <div id="clear"></div>
    </header>
    <div class="container">
        <link href="../../Scripts/bootstrap-responsive.min.css" rel="stylesheet" class="cssdeck" />
        <link href="../../Scripts/login/bootstrap.min.css" rel="stylesheet" class="cssdeck" />

        <div class="" id="loginModal">
            <div class="modal-body">
                <div class="well">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#login" data-toggle="tab">Registrarme</a></li>
                    </ul>
                    <form id="form" runat="server" class="form-horizontal">
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane active in" id="login">
                                <fieldset>
                                    <legend>Registrarse</legend>
                                    <asp:Label ID="lblMsgCrearCuenta" runat="server" CssClass="alert-error"></asp:Label>
                                    <div class="control-group">
                                        <label class="control-label">Nombre</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtNombre" runat="server" CssClass="input-xlarge"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Apellido</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtApellido" runat="server" CssClass="input-xlarge"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Email</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-xlarge" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Contraseña</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtContrasenia" runat="server" CssClass="input-xlarge" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div>
                                        <asp:Button ID="btnCrearCta" runat="server" CssClass="btn btn-primary" Text="Crear Cuenta" OnClick="crearUsuario_Click" />
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
