<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSTest.aspx.cs" Inherits="CSSTest.CSSTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link type="text/css" rel="stylesheet" href="jquery-ui.css" />--%>
    <link href="CSS/jquery-ui.theme.css" rel="stylesheet" type="text/css"  media="screen" runat="server"/>
    <style>
        .MehButton
        {
            background-color: #FF0000;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Button ID="Button1" runat="server" Text="Button 1" CssClass="ui-button"  />

        <asp:Button ID="Button2" runat="server" Text="Button 2" CssClass="MehButton" />
    </div>
    </form>
</body>
</html>
