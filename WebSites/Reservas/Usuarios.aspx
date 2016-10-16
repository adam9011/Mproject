<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Usuarios.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border:0;">
        <tr>
            <td style="width: 285px">&nbsp;</td>
            <td style="width: 92px">Documento</td>
            <td style="width: 523px">
                <asp:TextBox ID="txtdocumento" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" ControltoValidate="txtdocumento">
           Debe diligenciar este campo
  </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">&nbsp;</td>
            <td style="width: 92px">Nombres</td>
            <td style="width: 523px">
                <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" id="rfv" ControltoValidate="txtnombre">
           Debe diligenciar este campo
  </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">&nbsp;</td>
            <td style="width: 92px">Apellidos</td>
            <td style="width: 523px">
                <asp:TextBox ID="txtapellido" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ControltoValidate="txtapellido">
           Debe diligenciar este campo
  </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">&nbsp;</td>
            <td style="width: 92px">Email</td>
            <td style="width: 523px">
                <asp:TextBox ID="txtcorreo" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ControltoValidate="txtcorreo">
           Debe diligenciar este campo
  </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">&nbsp;</td>
            <td style="width: 92px">Telèfono</td>
            <td style="width: 523px">
                <asp:TextBox ID="txttelefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ControltoValidate="txttelefono">
           Debe diligenciar este campo
  </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">&nbsp;</td>
            <td style="width: 92px">
                <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            </td>
            <td style="width: 523px">
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" ControltoValidate="txtuser">
           Debe diligenciar este campo
  </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">&nbsp;</td>
            <td style="width: 92px">
                <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td style="width: 523px">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6" ControltoValidate="txtpass">
           Debe diligenciar este campo
  </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" />
                <asp:Label ID="lblregistro" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

