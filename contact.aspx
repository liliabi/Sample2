<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Kuaizhuang.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="renderer" content="webkit" />
    <!--默认使用极速渲染模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <!--让IE调用edge引擎渲染-->
    <title>XX公司网站</title>
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/idangerous.swiper.css" />
    <link rel="stylesheet" href="css/animate.min.css" />
    <link rel="stylesheet" href="css/swiper.min.css" />
    <link rel="stylesheet" href="css/about_us.css" />
    <link rel="stylesheet" href="/images/whir_css.css" />
    <script type="text/javascript" src="js/jquery-1.11.3.min.js">
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="index_overflow">
            <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
            <%--<asp:Literal ID="Nav" runat="server"></asp:Literal>--%>
            <asp:Literal ID="Bdy" runat="server"></asp:Literal>

            <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
        </div>
        <script src="js/swiper.min.js">
            </script>
        <script src="js/transform.js">
            </script>
        <script src="js/regexkit.js">
            </script>
        <script src="js/index.js">
            </script>
        <script src="js/from.js">
            </script>
        <script src="js/service.js">
            </script>
        <script src="js/menu.js">
            </script>
    </form>
</body>
</html>
