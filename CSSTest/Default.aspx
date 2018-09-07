<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CSSTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href ="Theme.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="National Code: " CssClass ="Label"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass ="TextBox"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password: " CssClass ="Label"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass ="TextBox"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass ="Button" />
    
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" CssClass ="myCheckbox" />
    
    </div>
    </form>
</body>
</html>
