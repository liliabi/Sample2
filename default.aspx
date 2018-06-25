<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>快装师</title>
    <link rel="shortcut icon" href="images/bitbug_favicon.ico" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
    <link href="images/whir_css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="images/jquery.min.js"></script>
    <script type="text/javascript" src="images/work.js"></script>
    <script type="text/javascript" src="images/superslide.2.1.js"></script>
    <script src="images/column.js" type="text/javascript"></script>
    <script src="images/picshow.js" type="text/javascript"></script>
    <script src="images/picshow1.js" type="text/javascript"></script>
    <script src="images/picshow2.js" type="text/javascript"></script>
    <script src="images/picshow4.js" type="text/javascript"></script>
    <script src="images/picshow5.js" type="text/javascript"></script>
    <script src="images/picshow6.js" type="text/javascript"></script>
    <!--[if IE 6]>
<script type="text/javascript" src="script/iepng.js"></script>
<script type="text/javascript"> 
EvPNG.fix('img,#header,.topnav,'); </script>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server" style="padding: 0; margin: 0;" autocomplete="off">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <!--banner-->

        <div class="fullSlide">
            <div class="bd">
                <ul>
                    <asp:Literal ID="ltBannerList" runat="server"></asp:Literal>
                </ul>
            </div>
            <div class="hd">
                <ul>
                </ul>
            </div>
        </div>
        <script type="text/javascript">
            jQuery(".fullSlide").hover(function () {
                jQuery(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
            },
            function () {
                jQuery(this).find(".prev,.next").fadeOut()
            });
            jQuery(".fullSlide").slide({
                titCell: ".hd ul",
                mainCell: ".bd ul",
                effect: "fold",
                autoPlay: true,
                autoPage: true,
                trigger: "click"
            });
        </script>

        <!--关于我们-->
        <div class="about">
            <div class="aboutimg">
                <img src="images/about_img.jpg" width="260" style="vertical-align: middle;" />
            </div>
            <div class="aboutcon">
                <div class="title">
                    <img src="images/aboutt.jpg" />
                </div>
                <div class="aboutinfo">
                    <p><a href="aboutus.aspx"><asp:Literal ID="ltaboutus" runat="server"></asp:Literal></a></p>                   
                </div>
            </div>
        </div>
        <!--品牌-->
        <div class="brand">
            <div class="brandlist">
                <ul>
                    <li><a href="products/faencc/about.aspx">法恩莎瓷砖</a></li>
                    <li><a href="products/faencn/about.aspx">法恩莎卫浴</a></li>
                    <li><a href="products/arrcn/about.aspx">箭牌橱柜</a></li>
                    <li><a href="products/arrcom/about.aspx">箭牌衣柜</a></li>
                    <li><a href="products/wfcom/about.aspx">万峰石材</a></li>
                    <li><a href="products/jycom/about.aspx">聚佑佳皮雕</a></li>
                </ul>
            </div>
        </div>
        <!--产品中心-->
        <div class="product">
            <div class="title1">
                <img src="images/prot.jpg" />
            </div>
            <div class="titlei">
                <h1 id="one1" onclick="setTab('one',1,6)" class="hover">法恩莎瓷砖</h1>
                <h1 id="one2" onclick="setTab('one',2,6)">法恩莎卫浴</h1>
                <h1 id="one3" onclick="setTab('one',3,6)">箭牌橱柜</h1>
                <h1 id="one4" onclick="setTab('one',4,6)">箭牌衣柜</h1>
                <h1 id="one5" onclick="setTab('one',5,6)">万峰石材</h1>
                <h1 id="one6" onclick="setTab('one',6,6)">聚佑佳皮雕</h1>
            </div>
            <div class="proscroll" id="con_one_1">
                <asp:Literal ID="ltprod1" runat="server"></asp:Literal>
                <script type="text/javascript">
                    <!--
    picrun_ini()
    //-->
                </script>
                <!-- picrotate_left end -->
            </div>
            <div class="proscroll" id="con_one_2" style="display: none">
                <asp:Literal ID="ltprod2" runat="server"></asp:Literal>
                <script type="text/javascript">
                    <!--
    picrun_ini1()
    //-->
                </script>
                <!-- picrotate_left end -->
            </div>
            <div class="proscroll" id="con_one_3" style="display: none">
                <asp:Literal ID="ltprod3" runat="server"></asp:Literal>
                <script type="text/javascript">
                    <!--
    picrun_ini2()
    //-->
                </script>
            </div>
            <div class="proscroll" id="con_one_4" style="display: none">
                <asp:Literal ID="ltprod4" runat="server"></asp:Literal>
                <script type="text/javascript">
                    <!--
    picrun_ini4()
    //-->
                </script>
            </div>
            <div class="proscroll" id="con_one_5" style="display: none">
                <asp:Literal ID="ltprod5" runat="server"></asp:Literal>
                <script type="text/javascript">
                    <!--
    picrun_ini5()
    //-->
                </script>
            </div>
            <div class="proscroll" id="con_one_6" style="display: none">
                <asp:Literal ID="ltprod6" runat="server"></asp:Literal>
                <script type="text/javascript">
                    <!--
    picrun_ini6()
    //-->
                </script>
            </div>
        </div>
        <!--新闻资讯-->
        <div class="news">
            <div class="title4">
                <img src="images/newbg.jpg" />
            </div>
            <div class="newscon">
                <div class="newslist">
                    <asp:Literal ID="ltNewsList" runat="server"></asp:Literal>
                    <div class="clear"></div>
                    <div class="more"><a href="news/" target="_blank">浏览更多</a></div>
                </div>
            </div>
        </div>

        <!--footer-->
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
