<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Kuaizhuang.aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>快装师</title>
    <link rel="shortcut icon" href="images/bitbug_favicon.ico" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="renderer" content="webkit" />
    <!--默认使用极速渲染模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <!--让IE调用edge引擎渲染-->
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/about_us.css" />
    <link rel="stylesheet" href="/images/whir_css.css" />
    <script src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../../images/work.js"></script>
</head>
<body id="website" style="position: relative">
    <form id="form1" runat="server">
        <div id="index_overflow">
            <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
            <%--<asp:Literal ID="Nav" runat="server"></asp:Literal>--%>
            <div class="brand_banner">
                <img src="picture/au_banner.jpg" alt="" />
            </div>
            <div class="brand_content">
                <div class="brand_1_box">
                    <div class="content_1200">
                        <div class="content_center">
                           <p><asp:Literal ID="ltaboutus" runat="server"></asp:Literal></p>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
        </div>
    </form>
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
</body>
</html>
