﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        label {
            display: block;
            margin-top: 10px;
            margin-bottom: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>DbResourceManager Simple Resource Test</h1>

        <div class="container">
            <fieldset>
                <legend>DbRes</legend>

                <label>Using DbRes Direct Access Provider (default locale):</label>
                <%= DbRes.T("HelloWorld","Resources") %>

                <label>Using DbRes Force to German:</label>
                <%= DbRes.T("HelloWorld","Resources","de") %>
            </fieldset>
        </div>

        <div class="container">
            <fieldset>
                <legend>ASP.NET ResourceProvider</legend>
                <label>Get GlobalResource Object (default locale):</label>
                <%= GetGlobalResourceObject("Resources","HelloWorld") %>

                <label>Meta Tag (key lblHelloWorldLabel.Text):</label>
                <asp:Label ID="lblHelloLabel" runat="server" meta:resourcekey="lblHelloWorldLabel"></asp:Label>

                <label>GetLocalResourceObject via Expression:</label>                 
                <%= GetLocalResourceObject("lblHelloWorldLabel.Text") %>
            </fieldset>
        </div>
    </form>
</body>
</html>
