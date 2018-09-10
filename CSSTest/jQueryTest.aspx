<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jQueryTest.aspx.cs" Inherits="CSSTest.jQueryTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .defaultText
        {
            font-style:italic;
            color:#CCCCCC;
            border-radius: 5px;
        }
        .defaultTextFocus
        {
            font-style:normal;
            color:#000000;
            border-radius: 5px;
        }

        .MehButton
        {
            background-color: #FF0000;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 10px;
        }

    </style>

    <script src="Scripts/jQuery.js" type="text/javascript"></script>

    <script>
        $(document).ready(function () 
        {
            var searchBox = $('#<%=TextBox1.ClientID%>');
            searchBox.focus(function () {
                if (searchBox.val() == this.title) {
                    searchBox.removeClass("defaultText");
                    searchBox.addClass("defaultTextFocus");
                    searchBox.val("");
                }
            });

            searchBox.blur( function() 
            {
                if (searchBox.val() == "") 
                {
                    searchBox.removeClass("defaultTextFocus");
                    searchBox.addClass("defaultText");
                    searchBox.val(this.title);
                }
            });
            searchBox.blur();
        })

    </script>
</head>

<body>
    <form id="form1" runat="server">
        <p></p>
        <div align="center">
            <fieldset style="width:400px;height:80px;">
                <p>
                    <asp:TextBox ID="TextBox1" width="200px" CssClass="defaultText" ToolTip="Enter your search keyword here" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSubmit" Text="SEARCH" runat="server" CssClass ="MehButton"/>
                </p>
            </fieldset>
        </div>
    </form>
</body>
</html>
