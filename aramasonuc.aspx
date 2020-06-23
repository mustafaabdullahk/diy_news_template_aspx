<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="aramasonuc.aspx.cs" Inherits="aramasonuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click"><%#Eval("haber") %></asp:LinkButton>
</asp:Content>

