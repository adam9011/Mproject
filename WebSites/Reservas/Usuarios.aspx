<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Usuarios.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div data-role="field">
            <label>Documento</label>
            <asp:TextBox ID="txtdocumento" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" ControltoValidate="txtdocumento">Debe diligenciar este campo</asp:RequiredFieldValidator>
        </div>
        <div data-role="field">
            <label>Nombres</label>
            <asp:TextBox ID="txtnombre" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="rfv" ControltoValidate="txtnombre">Debe diligenciar este campo</asp:RequiredFieldValidator>
        </div>
        <div data-role="field">
            <label>Apellidos</label>
            <asp:TextBox ID="txtapellido" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ControltoValidate="txtapellido">Debe diligenciar este campo</asp:RequiredFieldValidator>
        </div>
        <div data-role="field">
            <label>Email</label>
            <asp:TextBox ID="txtcorreo" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ControltoValidate="txtcorreo">Debe diligenciar este campo</asp:RequiredFieldValidator>
        </div>
        <div data-role="field">
            <label>Teléfono</label>
            <asp:TextBox ID="txttelefono" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ControltoValidate="txttelefono">Debe diligenciar este campo</asp:RequiredFieldValidator>
        </div>
        <div data-role="field">
            <label id="Label1" runat="server">Usuario</label>
            <asp:TextBox ID="txtuser" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" ControltoValidate="txtuser">Debe diligenciar este campo</asp:RequiredFieldValidator>
        </div>
        <div data-role="field">
            <label id="Label2" runat="server">Contraseña</label>
            <asp:TextBox ID="txtpass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6" ControltoValidate="txtpass">Debe diligenciar este campo</asp:RequiredFieldValidator>
        </div>
        <div data-role="field">
            <asp:Button ID="Button1" class="btn btn-ttc" runat="server" Text="Guardar" OnClick="Button1_Click" />
            <asp:Label ID="lblregistro" runat="server"></asp:Label>
        </div>
</asp:Content>

