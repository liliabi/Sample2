<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="ayzhuangxiu.products.show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" href="images/bitbug_favicon.ico" />
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../images/work.js"></script>
    <style>
        .container {
            width:800px;
            margin:30px auto;
        }
        .container .title {
            font-size: 22px;
            font-weight: bold;
            padding: 10px 0;
            width: 100%;
            height: 30px;
            text-align: center;
        }

        .container .pic {
            width:600px;

        }
        .container .pic img{
            width:800px;

        }
        .container .content {
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <div class="container">
            <div class="title">
                <%= bTitle %>
            </div>
            <div class="pic">
                <img src="/upfile/<%= bPic %>" />
            </div>
            <div class="content">
                <%= bContent %>
            </div>
        </div>
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
