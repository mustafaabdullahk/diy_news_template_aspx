<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 680px;
            height: 0px;
            margin-right: 0px;
            align:center;
            table-layout: 0;
            top: 0px;
            right: 0px;
            bottom: 0px;
            left: 0px;
        }
        .style2
        {
            width: 509px;
        }
        .style6
        {
            height: 252px;
        }
        .style7
        {
            height: 27px;
        }
        .style12
        {
            height: 124px;
            width:650px;
        }
        .style13
        {
            height: 106px;
        }
        .style18
        {
            height: 24px;
        }
        .style19
        {
            height: 80px;
            width: 347px;
            background-color: #333333;
        }
        .style22
        {
            height: 252px;
            background-color: #313131;
            font-size: xx-large;
            font-family: Tahoma;
            width: 54px;
        }
        .style23
        {
            background-color: #63697A;
            color: #FF0000;
        }
        .style25
        {
            height: 170px;
        }
        .style26
        {
            height: 25px;
        }
        .style28
        {
            height: 24px;
            width: 347px;
        }
        .style30
        {
            height: 24px;
            width: 54px;
        }
        .style33
        {
            color: #FF0000;
            font-size: large;
        }
        .style34
        {
            height: 124px;
            width:650px;
        }
        .style38
        {
            width: 95px;
            height: 24px;
            background-color: #313131;
        }
        .style39
        {
            color: #C0C0C0;
            font-size: medium;
            font-family: Tahoma;
            width: 95px;
        }
        .style40
        {
            height: 124px;
            width: 169px;
        }
        .style41
        {
            width: 169px;
            height: 24px;
            background-color: #313131;
        }
    </style>
</head>
<body align="center" 
    bgcolor="gray" border="0">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" border="0px" 
            
            
            
            style="padding: 0px; margin: 0px; border-width: 0px; border-color: #FF6600; border-spacing: 0px; empty-cells: 0; caption-side: 0; border-collapse: 0; background-image: url('images/n1.gif');">
            <tr>
                <td class="style12" bgcolor="White" colspan="5">
                    <img class="style34" src="../admin%20banner.png" /></td>
            </tr>
            <tr>
                <td class="style40" bgcolor="White">
                    <asp:Image ID="Image1" runat="server" Height="104px" Width="159px" />
                </td>
                <td class="style19" valign="top" bgcolor="Gray">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FFCC99" 
                        style="background-color: #CCCCCC" />
                    Haber Fotoğrafı<asp:DropDownList ID="dropkategori" runat="server" 
                        DataTextField="KategoriAd">
                    </asp:DropDownList>
                    </td>
                <td colspan="3" bgcolor="#313131" class="style13" valign="top" 
                    style="margin: 0px; padding: 0px; border-style: hidden;">
                    <asp:Image ID="ImgMsg" runat="server" Height="35px" Visible="False" 
                        Width="35px" />
                    <asp:Label ID="LblMsg" runat="server" Visible="False" style="color: #C0C0C0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style41" bgcolor="#B2CFEA" >
                    
                    <asp:Label ID="Label1" runat="server" Text="Haber Başlığını Giriniz" 
                        style="color: #FFFFFF; background-color: #333333"></asp:Label>
                </td>
                <td bgcolor="Gray" class="style28" >
                    <asp:TextBox ID="TxtHBaslik" runat="server" Width="340px" BackColor="#FFCC99" 
                        style="background-color: #CCCCCC"></asp:TextBox>
                </td>
                <td bgcolor="#313131" class="style18" 
                    style="margin: 0px; padding: 0px; border-style: hidden;" colspan="2">
                    &nbsp;</td>
                <td bgcolor="#313131" class="style38" 
                    style="margin: 0px; padding: 0px; border-style: hidden;">
                    <asp:Label ID="Label3" runat="server" Visible="False" style="color: #FFFFFF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style6" bgcolor="White" valign="top" 
                    style="background-image: url('../background.png')" rowspan="2" 
                    width="750px">
                    <asp:TextBox ID="TxtHİcerik" runat="server" Height="250px" TextMode="MultiLine" 
                        Width="520px" BackColor="#CCFFFF" style="background-color: #BCBCBC" ></asp:TextBox>
                </td>
                <td class="style22" align="left" bgcolor="#313131" valign="middle" 
                    style="margin: 0px; padding: 0px; border-style: hidden;" colspan="2" 
                    rowspan="2">
                    <strong><span class="style23" style="background-color: #313131">&lt;-</span></strong></td>
                <td class="style39" align="left" bgcolor="#313131" valign="middle" 
                    style="margin: 0px; padding: 0px; border-style: hidden;">
                    <br />
                    <br />
                    <br />
                    <span class="style33">Haber Metni</span></td>
            </tr>
            <tr>
                <td class="style39" align="left" bgcolor="#313131" valign="middle" 
                    style="margin: 0px; padding: 0px; border-style: hidden;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style41" bgcolor="#B2CFEA" 
                    style="background-image: url('../background.png')">
                    <asp:Label ID="Label2" runat="server" Text="Haberi ekleyen"></asp:Label>
                </td>
                <td class="style18" bgcolor="Gray" colspan="2" 
                    style="background-image: url('../background.png')" width="750px">
                    <asp:TextBox ID="TxtEkleyen" runat="server" Width="340px" BackColor="#FFCC99" 
                        style="background-color: #CCCCCC"></asp:TextBox>
                </td>
                <td class="style30" bgcolor="#313131" 
                    style="margin: 0px; padding: 0px; border-style: hidden;">
                    &nbsp;</td>
                <td class="style38" bgcolor="#313131" 
                    style="margin: 0px; padding: 0px; border-style: hidden;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" bgcolor="Gray" class="style2" rowspan="4" 
                    style="background-image: url('../background.png')" width="750px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="Black" Height="255px" 
                        Width="100%" DataKeyNames="Kimlik" Font-Italic="False" 
                        onselectedindexchanging="GridView1_SelectedIndexChanging" 
                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                        CellSpacing="2" onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="Başlık">
                                <ItemTemplate>
                                    <%#Eval("baslik") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Seç" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
                            BorderColor="#8CA1B6" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td colspan="3" bgcolor="#313131" class="style26" 
                    style="margin: 0px; padding: 0px; border-style: hidden;" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Kaydet" Width="150px" 
                        onclick="Button1_Click" BackColor="Lime" BorderColor="#CC3300" 
                        BorderStyle="Dotted" Height="25px" />
                </td>
            </tr>
            <tr>
                <td colspan="3" bgcolor="#313131" class="style7" 
                    style="border-style: hidden;" align="center">
                    <asp:Button ID="Button2" runat="server" Text="Güncelle" Width="150px" 
                        onclick="Button2_Click" BackColor="#FFFF66" BorderColor="Red" 
                        BorderStyle="Dotted" Enabled="False" Height="25px" />
                </td>
            </tr>
            <tr>
                <td colspan="3" bgcolor="#313131" class="style26" 
                    style="margin: 0px; padding: 0px; border-style: hidden;" align="center">
                    <asp:Button ID="Button3" runat="server" BackColor="#FF3300" BorderColor="Red" 
                        BorderStyle="Dotted" Enabled="False" Height="25px" onclick="Button3_Click" 
                        Text="Sil" Width="150px" />
                </td>
            </tr>
            <tr>
                <td colspan="3" bgcolor="#313131" 
                    style="margin: 0px; padding: 0px; border-style: hidden;" class="style25">
    
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Güvenli Çıkış" 
                        Font-Bold="True" Font-Names="Mistral" Font-Overline="False" Font-Size="Medium" 
                        Font-Strikeout="False" Font-Underline="True" ForeColor="Red" />
    
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
