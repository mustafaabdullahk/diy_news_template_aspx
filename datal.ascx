<%@ Control Language="C#" AutoEventWireup="true" CodeFile="datal.ascx.cs" Inherits="datal" %>
<asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
    RepeatDirection="Horizontal">
    <ItemTemplate>
        <table class="style32">
            <tr>
                <td class="style39">
                    <a href="Haberincele.aspx?Kimlik=<%#Eval("Kimlik")%>">
                    <img alt="" src="admin/images/<%#Eval("foto") %>" style="width: 151px; height: 90px" />
                    </a>
                </td>
            </tr>
            <tr>
                <td class="style36">
                    <a href="Haberincele.aspx?Kimlik=<%#Eval("Kimlik")%>"><%#Eval("baslik") %>
                    </asp:LinkButton>
                    <br />
                    hit:<asp:Label ID="Label2" runat="server" style="color: #35496A" 
                            Text='<%#Eval("hit") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
