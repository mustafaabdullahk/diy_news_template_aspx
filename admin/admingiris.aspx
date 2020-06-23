<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="admingiris.aspx.cs" Inherits="admingiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style26
    {
        width: 79px;
    }
    .style27
    {
        width: 609px;
    }
    .style28
    {
        width: 79px;
        height: 42px;
    }
    .style29
    {
        width: 609px;
        height: 42px;
    }
    .style32
    {
        width: 126px;
        height: 34px;
    }
    .style33
    {
        width: 84%;
        height: 42px;
        color: #000000;
    }
    .style34
    {
        width: 84%;
        height: 34px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style32">
            &nbsp;</td>
        <td class="style33">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style32">
            Yönetici Adı:</td>
        <td class="style33">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style32">
            Şifre:</td>
        <td class="style34">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style32">
            <asp:Button ID="butadmingiris" runat="server" onclick="butadmingiris_Click" 
                Text="Giriş" Width="126px" />
        </td>
        <td class="style34">
            <asp:Image ID="Image1" runat="server" Height="26px" Visible="False" 
                Width="28px" />
            <asp:Label ID="LblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

