<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Reservas</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />

    




    <style type="text/css">
        .auto-style1 {
            color: #B2C629;
            background-color: #000000;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 187px;
        }
    </style>
</head>
<body id="top" onload="Window_Onload()">
    <form id="form1" runat="server">
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="index.aspx">R<span class="auto-style1">ESERVAS</span></a></h1>
      <p>Auditorios FUNLAM</p>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
       
<div class="wrapper col2">
  
    &nbsp;
      <table class="auto-style2">
          <tr>
              <td class="auto-style3">Usuario</td>
              <td>
                  <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style3">
                  <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                  <br />
                 <a href="Usuarios.aspx" <asp:Label ID="Label3" runat="server" Text="Registrarme"></asp:Label></a>
              </td>
          </tr>
          <tr>
              <td colspan="2">
                  <asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" />
              </td>
          </tr>
    </table>
   
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
</div>
<!-- ####################################################################################################### -->
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" />
  </div>
</div>

    </form>
</body>
</html>
