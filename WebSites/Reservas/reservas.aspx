<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reservas.aspx.cs" Inherits="reservas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="border:0;">
        <tr>
            <td style="width: 227px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Auditorio"></asp:Label>
            </td>
            <td>
                
                <script type="text/javascript">
 function cargar_imagen(imagen) {
  var img = document.getElementById("myimage");
  var img_dir = "http://localhost:50925/images/";
  if (img) {
   img.src = img_dir + imagen;
  }

  $(document).ready(function () {

  
  });
 }
  function Window_Onload() {

      $('#<%=txtFecha.ClientID%>').datepicker();
  }

 

</script>
                
<select name="auditorios" id="txtauditorio" onchange="cargar_imagen(this.value)" runat="server">
 <option value="reservas.jpg">Seleccione Auditorio</option>
 <option value="1.jpg">Auditorio 1</option>
 <option value="2.jpg">Auditorio 2</option>
 <option value="3.jpg">Auditorio 3</option>
</select>
                <img alt ="" src="http://localhost:50925/images/reservas.jpg" id="myimage"/></td>

            
        </tr>
        <tr>
            <td style="width: 227px; height: 46px;">
                </td>
            <td style="height: 46px">
                <asp:Label ID="fehca" runat="server" Text="Fecha"></asp:Label>
            </td>
            <td style="height: 46px">
                <asp:TextBox type="text" id="txtFecha" runat="server"/>
            </td>
        </tr>
        <tr>
            <td style="width: 227px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Hora"></asp:Label>
            </td>
            <td>Inicio<select name ="horainiio" id ="slchorai" runat="server">
                <option>00:00</option>
                <option>06:00</option>
                <option>07:00</option>
                <option>08:00</option>
                <option>09:00</option>
                <option>10:00</option>
                <option>11:00</option>
                <option>12:00</option>
                <option>13:00</option>
                <option>14:00</option>
                <option>15:00</option>
                <option>16:00</option>
                <option>17:00</option>
                <option>17:00</option>
                      </select>
                <asp:TextBox  id="minutosi" runat="server" Width="63px"/>
                &nbsp;&nbsp; Fin<select name ="horafin" id ="slchoraf" runat="server">
                <option>00:00</option>
                <option>06:00</option>
                <option>07:00</option>
                <option>08:00</option>
                <option>09:00</option>
                <option>10:00</option>
                <option>11:00</option>
                <option>12:00</option>
                <option>13:00</option>
                <option>14:00</option>
                <option>15:00</option>
                <option>16:00</option>
                <option>17:00</option>
                <option>17:00</option>
                      </select>
                <asp:TextBox  id="minutosf" runat="server" Width="63px"/>
            </td>
        </tr>
        <tr>
            <td style="width: 227px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Observaciones"></asp:Label>
            </td>
            <td>
                <textarea id="txtobservaciones" name="S1" style="width: 255px; height: 47px" runat="server"></textarea></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 32px">
                <asp:Button ID="Button1" runat="server" Text="Solicitar" OnClick="Button1_Click" />
                <asp:Label ID="solicitud" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

