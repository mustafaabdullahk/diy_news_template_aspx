<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="Haberincele.aspx.cs" Inherits="Haberincele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style29
        {
            width: 100%;
        }
    .style31
    {
        width: 250px;
    }
        .style32
        {
            height: 60px;
        }
        .style33
        {
            height: 109px;
        }
        .style34
        {
            width: 8%;
            height: 23px;
        }
    .style35
    {
        width: 34%;
    }
    .style36
    {
        width: 76%;
    }
    .style37
    {
        width: 8%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Visible="False">
   
    <table class="style29">
        <tr>
            <td class="style31" rowspan="3" valign="top">
                <asp:Image ID="Image1"  runat="server" Height="200px" Width="250px" />
                
            </td>
            <td valign="top" class="style32" colspan="2">
               <asp:Label ID="LblHBaslik" runat="server"
                    style="color: #808080; font-size: xx-large; font-family: Tahoma; font-weight: 700"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td valign="top" class="style33" colspan="2">
                <asp:Label ID="LblHicerik" runat="server" Text="Label" 
                    
                    style="color: #C0C0C0; font-weight: 700; font-size: small; font-family: Tahoma" 
                    Width="500px"></asp:Label>
            </td>
        </tr>
    </table>
        <table class="style29">
            <tr>
                <td class="style37" valign="top">
                    <asp:Label ID="LblEkleyen" runat="server" style="color: #FF6666" Text="Label"></asp:Label>
                    &nbsp;yazdı</td>
                <td align="left" class="style35" style="text-align: right">
                    <asp:Label ID="LblKategori" runat="server" Text="Label"></asp:Label>
                    &nbsp;Haberi
                </td>
                <td class="style36" style="text-align: right" valign="top">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style34">
                </td>
                <td align="right" class="style14" colspan="2">
                    Bu Haber
                    <asp:Label ID="LblHit" runat="server" Text="Label"></asp:Label>
                    &nbsp;Kez Okundu</td>
            </tr>
        </table>
     </asp:Panel> 
     <asp:Image ID="ImgVarmi" runat="server" Height="40px" Visible="False" 
    Width="40px" />
     <asp:Label ID="LblMsg" runat="server" 
    style="color: #CC3300; font-size: large"></asp:Label>
</asp:Content>

