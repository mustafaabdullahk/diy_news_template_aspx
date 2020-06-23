<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="KategoriSec.aspx.cs" Inherits="KategoriSec" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="JS/HaberManset.js"></script>
    <script type="text/javascript">
        var aktif = 1; var timer; var adet;
        $(document).ready(function () {
            $("#manset").show();
            $("#manset div").hide();
            $("#manset div:first").show();
            adet = $("#manset div").length;
            sayfalar();
            renk(1);
            timer = setInterval(degistir, 3000);
        });
        function degistir() {
            $("#manset div:nth-child(" + aktif + ")").slideUp(100);
            aktif = (aktif + 1) % adet;
            if (aktif == 0) aktif = adet;
            $("#manset div:nth-child(" + aktif + ")").slideDown(200);
            renk(aktif);
        }
        function tikla(deger) {
            renk(deger);
            $("#manset div:nth-child(" + aktif + ")").slideUp(100);
            aktif = deger;
            $("#manset div:nth-child(" + aktif + ")").slideDown(200);
            clearInterval(timer);
            timer = setInterval(degistir, 3000);
        }
        function renk(deger) {
            $("#sayfa_no span").css("background-color", "#ccc")
            $("#sayfa_no span:nth-child(" + deger + ")").css("background-color", "#eee");
        }
        function sayfalar() {
            var sayfa_no = "";
            for (var i = 1; i <= adet; i++) {
                sayfa_no += "<span class='sayfa' onmouseover=tikla(" + i + ")>" + i + "</span>"
            }
            $("#sayfa_no").html(sayfa_no);
        }
    </script>
  
    <style type="text/css">
      *{padding:0; margin:0;}
      body{margin:5px;cursor:default;}
      #manset {cursor:default;font-family:trebuchet ms; width:395px; height:358px; padding:2px; border:solid 1px #ccc; background-color:#eee; margin:0 0 0 0;display:none;}
      #manset div{font-family:trebuchet ms; width:395px; height:358px}
      .sayfa{float:left;padding:0px 0;margin:0 2px 0 0;color:#369;cursor:default;font-family:calibri;font-size:11pt;border:solid 1px #369; width:22px; text-align:center;}
      .manset_f{float:left;border:0;}
      .manset_h{float:left;background-color:#dcdcdc;color:#333;width:372px;margin:0 0 5px 0;height:20px;font-size:11pt;color:#800;font-weight:bold;padding:0 10px;}
      #manset a{text-decoration:none; cursor:default;}
    </style>
  </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="kategoriyegorerepeat" runat="server">
    <HeaderTemplate><div id="manset"></HeaderTemplate>
    <ItemTemplate>
    <div>
    <a href="Haberincele.aspx?Kimlik=<%#Eval("Kimlik")%>" style="text-decoration:none;color:inherit;">
    <table style="width:390px">
<tr>
<td style=" background-image:url('images/mabg.png'); padding-left:5px; padding-top:5px; padding-right:5px; padding-bottom:5px; font-size:12px; background-color:White; color:White">
<%# Eval("baslik") %> 
</td>
</tr>
<tr>
<td>
 <a href='<%# Eval("Kimlik","Haberincele.aspx?Kimlik={0}")%>'><img src="admin/images/<%# Eval("foto") %>" height="293px" width="390px" class="manset_f" /></a>
</td>

</tr>
<tr>
<td style=" background-image:url('images/mabg.png'); padding-left:5px; padding-top:5px; padding-right:5px; padding-bottom:5px; font-size:12px; background-color:White; color:White">
<%# Eval("ekleyen") %>
</td>
</tr>
</table></a></div>
    
    </ItemTemplate>
    <FooterTemplate> 
  </div>  
    </FooterTemplate>
   </asp:Repeater>
  <table>
  <tr>
  <td style="padding:1px">
  <div class="manset_f"><span id="sayfa_no"></span></div>
  </td>
  </tr>
  </table>
</asp:Content>

