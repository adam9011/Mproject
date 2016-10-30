<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Reservas</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="layout/styles/PageStyles.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row header">
              <div id="header">
                <div id="logo">
                  <h1 class="reservasTitle"><a href="index.aspx">RESERVAS</a></h1>
                  <p>Auditorios FUNLAM</p>
                </div>
                <br/>
              </div>
            </div>
      
            <div class="row content">
                <div data-role="field">
                    <label>Usuario</label>
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                </div>
                <div data-role="field">
                    <label id="Label2" runat="server">Contraseña</label>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div data-role="field">
                    <a href="Usuarios.aspx">
                        <label id="Label3" runat="server">Registrarme</label>
                    </a>
                </div>
                <div data-role="field">
                    <asp:Button ID="Button1" class="btn btn-ttc" runat="server" Text="Ingresar" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
