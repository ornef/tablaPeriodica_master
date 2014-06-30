<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TablaPeriodica.Views.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tabla Peri&oacute;dica</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0"/>
     <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen"/>
     <link rel="stylesheet" type="text/css" href="../../css/tablaPeriodica.css" media="screen"/>
</head>
<body>
     <header>
        <div id="menu"><a class="menu" id="volver" title="volver" href="TablaPeriodica.aspx">Volver a la Tabla</a></div>
        <div id="titulo">2 Registrarme 3</div>
        <div id="clear"></div>
    </header>
    <div class="container">
        <link href="../../Scripts/bootstrap-responsive.min.css" rel="stylesheet" class="cssdeck" />
        <link href="../../Scripts/login/bootstrap.min.css" rel="stylesheet" class="cssdeck"/>
    
<div class="" id="loginModal">
	<div class="modal-body">
		<div class="well">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#login" data-toggle="tab">Registrarme</a></li>
				<li><a href="#create" data-toggle="tab">Crear una Cuenta </a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane active in" id="login">
                        <form id="form" runat="server" class="form-horizontal"> 
						<fieldset>
								<legend>Login</legend>
							<div class="control-group">
								<!-- Username -->
								<label class="control-label"  for="username">Usuario</label>
								<div class="controls">
                                    <asp:TextBox ID="username" runat="server" CssClass="input-xlarge"></asp:TextBox>
								</div>
							</div>			
							<div class="control-group">
								<!-- Password-->
								<label class="control-label" for="password">Contrase&ntilde;a</label>
								<div class="controls">
									 <asp:TextBox ID="password" runat="server" CssClass="input-xlarge"></asp:TextBox>
								</div>
							</div>
							<div class="control-group">
								<!-- Button -->
								<div class="controls">
									<asp:button ID="btnLogin" runat="server" CssClass="btn btn-success" Text="Login" OnClick="Unnamed1_Click"/>
								</div>
							</div>
						</fieldset>
					</form>                
				</div>
				<div class="tab-pane fade" id="create">
					<form id="tab">
						<label>Nombre</label>
                        <input type="text" value="" class="input-xlarge"/>
						<label>Apellido</label>
						<input type="text" value="" class="input-xlarge"/>
						<label>Email</label>
						<input type="text" value="" class="input-xlarge"/>
						<div>
							<button class="btn btn-primary">Crear Cuenta</button>
						</div>
					</form>
				</div>
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
