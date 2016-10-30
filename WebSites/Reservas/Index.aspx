<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div data-role="field" style="margin-bottom: 15px;">
        <label>Documento</label>
        <asp:TextBox ID="txtid" class="form-control" runat="server"></asp:TextBox>
    </div>
    <div data-role="field">
        <asp:Button ID="Button1" class="btn btn-ttc" style="margin-left: 110px;" runat="server" Text="Consultar" OnClick="Button1_Click" />
    </div>
    <div data-role="field">
        <asp:Label ID="lblestado" runat="server"></asp:Label>
    </div>
</asp:Content>

