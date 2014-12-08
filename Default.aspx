<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <h3 style="color:#0B3861;">Welcome to our website!</h3>
    <p>
        <img src="Styles/Images/DiningArea.jpg" style="height: 661px; width: 860px; margin-top: 5px" />
    </p>

</asp:Content>