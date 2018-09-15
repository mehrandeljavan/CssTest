<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jQueryTest.aspx.cs" Inherits="CSSTest.jQueryTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link href="CSS/MyTheme.css" rel="stylesheet" type="text/css"/>

        <script src="Scripts/jQuery.js" type="text/javascript"></script>
        <script src="Scripts/MyScripts.js"></script>
    
        <script type="text/javascript">
            $(document).ready(function ()
            {
                var searchBox = $('#<%=TextBox1.ClientID%>');

                searchBox.focus(function ()
                {
            
                    if (searchBox.val() == this.title)
                    {
                        searchBox.removeClass("defaultText");
                        searchBox.val("");
                    }
                });

                searchBox.blur(function ()
                {
                    if (searchBox.val() == "")
                    {
                        searchBox.addClass("defaultText");
                        searchBox.val(this.title);
                    }
                });

                searchBox.blur();
            });
        </script>

    </head>

    <body dir="rtl">
        <form id="form1" runat="server">
            <div align="center">
                <fieldset style="width:400px;height:80px; border-radius:20px;">
                    <asp:TextBox ID="TextBox1" width="200px" CssClass="defaultText" ToolTip="لطفا کلمات کلیدی خود را وارد کنید" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSubmit" Text="جستجو" runat="server" CssClass ="MehButton"/>
                </fieldset>
            </div>
        </form>
    </body>
</html>
