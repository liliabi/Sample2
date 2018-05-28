<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.news.view._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style.css" rel="stylesheet" />
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <div class="container">
            <div class="title">
                <%= bTitle %>
                </div>
            <div class="keywords">
                <%= bKeywords %>
            </div>
            <div class="content">
                <%= bContent %>
            </div>
        </div>
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
