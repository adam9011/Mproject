<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="border:0;">
    <tr>
        <td style="width: 167px"></td>
        <td style="width: 167px">Documento</td>
        <td>
            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            </td>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Consultar" OnClick="Button1_Click" />
            <asp:Label ID="lblestado" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

