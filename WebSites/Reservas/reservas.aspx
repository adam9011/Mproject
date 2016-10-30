<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reservas.aspx.cs" Inherits="reservas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script type="text/javascript">

    function cargar_imagen(imagen) {
        var img = document.getElementById("myimage");
        var img_dir = "../images/";

        if (img) {
            img.src = img_dir + imagen;
        }
    }

    function Window_Onload() {
      $('#<%=txtFecha.ClientID%>').datepicker({
          changeMonth: true,
          changeYear: true
      });
    }

</script>

    <div data-role="field">
        <label id="Label1" runat="server">Auditorio</label>
        <select name="auditorios" id="txtauditorio" onchange="cargar_imagen(this.value)" runat="server">
            <option value="reservas.jpg">Seleccione Auditorio</option>
            <option value="1.jpg">Auditorio 1</option>
            <option value="2.jpg">Auditorio 2</option>
            <option value="3.jpg">Auditorio 3</option>
        </select>
    </div>
    <div data-role="field">
        <img class="img-thumbnail" alt ="" src="" id="myimage"/>
    </div>
    <div data-role="field">
        <label id="fehca" runat="server">Fecha</label>
        <asp:TextBox type="text" id="txtFecha" runat="server"/>
    </div>
    <div data-role="field">
        <label id="Label2" runat="server">Hora Inicio</label>
        <select name ="horainiio" id ="slchorai" runat="server">
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
    </div>
    <div data-role="field">
        <label id="Label4" runat="server">Hora Fin</label>
        <select name ="horafin" id ="slchoraf" runat="server">
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
    </div>
    <div data-role="field">
        <label id="Label3" runat="server">Observaciones</label>
        <textarea id="txtobservaciones"  class="form-control" name="S1" runat="server"></textarea>
    </div>
    <div data-role="field">
        <asp:Button ID="Button1" class="btn btn-ttc" runat="server" Text="Solicitar" OnClick="Button1_Click" />
        <asp:Label ID="solicitud" runat="server"></asp:Label>
    </div>
</asp:Content>

