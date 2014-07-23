<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarConfiguracion.aspx.cs" Inherits="TablaPeriodica.Views.administracion.AgregarConfiguracion" %>

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
        <div id="titulo">2 Agregar Configuración 3</div>
        <div id="clear"></div>
    </header>
    <div class="container">
        <link href="../../Scripts/bootstrap-responsive.min.css" rel="stylesheet" class="cssdeck" />
        <link href="../../Scripts/login/bootstrap.min.css" rel="stylesheet" class="cssdeck" />

        <div class="" id="loginModal">
            <div class="modal-body" style="overflow-y: visible;">
                <div class="well">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#login" data-toggle="tab">Configuraciones</a></li>
                    </ul>
                  
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane active in" id="login">
                                <fieldset>
                                    <legend>Configuración</legend>
                                    <asp:Label ID="lblMsgConfiguracion" runat="server" CssClass="alert-error"></asp:Label>
                                    <div class="control-group">
                                        <label class="control-label">ID</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtId" runat="server" CssClass="input-xlarge"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" CssClass="alert-error" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Valor</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtValor" runat="server" CssClass="input-xlarge"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtValor" CssClass="alert-error" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div>
                                        <asp:Button ID="btnCrearConfiguracion" runat="server" CssClass="btn btn-primary" Text="Crear Configuración" OnClick="crearConf_Click" />
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
