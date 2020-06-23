<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="HaberManset.ascx" tagname="HaberManset" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style32
        {
            width: 155px;
        }
        .style36
        {
            width: 151px;
        }
        .style39
        {
            width: 151px;
            height: 94px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:HaberManset ID="HaberManset2" runat="server" />
    
</asp:Content>

