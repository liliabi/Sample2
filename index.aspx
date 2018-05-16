<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Kuaizhuang.index" %>

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
    <script type="text/javascript" src="js/jquery-1.11.3.min.js">
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="index_overflow">
            <asp:Literal ID="Top" runat="server"></asp:Literal>
            <asp:Literal ID="Nav" runat="server"></asp:Literal>
            
            <div id="Div1">
                <!--banner图片-->
                <asp:Literal ID="BannerImg" runat="server"></asp:Literal>
                <%--<div class="bannerImg">
                    <div class="pic_list swiper-container" id="b04">
                        <div class="swiper-wrapper" style="height: 500px;">
                            <a class="swiper-slide banner-slide" href="/1/318.html" style="background: url(images/1-1g00r32g5556.jpg)"></a>
                            <a class="swiper-slide banner-slide" href="/1/318.html" style="background: url(images/1-1g00r32k3x1.jpg)"></a>
                            <a class="swiper-slide banner-slide" href="/1/318.html" style="background: url(images/1-1g00r32g5556.jpg)"></a>
                            <a class="swiper-slide banner-slide" href="/1/318.html" style="background: url(images/1-1fr610214c92.jpg)"></a>
                        </div>
                        <div class="swiper-pagination">
                        </div>
                        <div class="swiper-button-prev swiper-button-white" style="left: 20%">
                        </div>
                        <div class="swiper-button-next swiper-button-white" style="right: 20%">
                        </div>
                    </div>
                </div>--%>
                
                <!--品牌实力-->
                <%--<div class="card_title_box">
                </div>--%>

                <div style="background:#efeef3; padding: 30px 0;">

                    <div class="main_box">
                        <div class="hot_product">
                            <div class="hot_pic fl">
                                <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=88889999&amp;site=qq&amp;menu=yes"
                                    target="_blank">
                                    <img src="picture/index_01.jpg" />
                                </a>
                            </div>
                            <div class="hot_banner fr">
                                <a class="arrow-right" id="hot_banner_top_right">
                                    <img src="picture/right_btn.png" style="width: 20px; height: 38px; top: 50%; position: absolute; right: 27px;" />
                                </a>
                                <div class="swiper-container" id="hot_banner_top">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <a style="display: block; width: 100%; height: 100%" href="/plus/view.php?aid=131">
                                                <img src="picture/1-1fr91523200-l.jpg" />
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a style="display: block; width: 100%; height: 100%" href="/plus/view.php?aid=132">
                                                <img src="picture/1-1fr91523420-l.jpg" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hot_product" style="margin-top: 19px">
                            <div class="hot_banner fl">
                                <a class="arrow-left" href="http://wpa.qq.com/msgrd?v=3&amp;uin=88889999&amp;site=qq&amp;menu=yes"
                                    target="_blank" id="hot_banner_bottom_left">
                                    <img src="picture/left_btn.png" style="width: 20px; height: 38px; top: 50%; position: absolute; left: 27px;" />
                                </a>
                                <div class="swiper-container" id="hot_banner_bottom">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <a style="display: block; width: 100%; height: 100%" href="/plus/view.php?aid=133">
                                                <img src="picture/1-1fr91523580-l.jpg" />
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a style="display: block; width: 100%; height: 100%" href="/plus/view.php?aid=136">
                                                <img src="picture/1-1fs01345100-l.jpg" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="hot_pic fr">
                                <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=88889999&amp;site=qq&amp;menu=yes"
                                    target="_blank">
                                    <img src="picture/index_10.jpg" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 产品分类 -->
                <div class="card_title_box">
                    <div class="card_title_left">
                        <img src="picture/green_left.png" class="title_green_pic" />
                        <span class="big_size_blod">产品资料
                        </span>
                        <span class="big_size">石材家具
                        </span>
                    </div>
                </div>
                <div class="main_box" style="overflow: hidden; margin-bottom: 56px;">
                    <div class="construction_list_box">
                        <div class="construction_list">
                            <a target="_blank" href="/rzlp/02/310.html">
                                <img src="picture/1-1g00r25022960.jpg" alt="" style="width: 390px; height: 205px; position: relative;" />
                                <div class="construction_tips">
                                    <p style="font-size: 16px; margin-top: 10px; margin-left: 16px;">
                                        步阳华府
                                    </p>
                                    <span style="margin-right: 10px; margin-left: 16px;">2017-10-08
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div class="construction_list">
                            <a target="_blank" href="/rzlp/02/312.html">
                                <img src="picture/1-1g00r249153j.jpg" alt="" style="width: 390px; height: 205px; position: relative;" />
                                <div class="construction_tips">
                                    <p style="font-size: 16px; margin-top: 10px; margin-left: 16px;">
                                        盛世珑城
                                    </p>
                                    <span style="margin-right: 10px; margin-left: 16px;">2017-10-08
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div class="construction_list">
                            <a target="_blank" href="/rzlp/02/316.html">
                                <img src="picture/1-1g00r24t9602.jpg" alt="" style="width: 390px; height: 205px; position: relative;" />
                                <div class="construction_tips">
                                    <p style="font-size: 16px; margin-top: 10px; margin-left: 16px;">
                                        中梁首府
                                    </p>
                                    <span style="margin-right: 10px; margin-left: 16px;">2017-10-08
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div class="construction_list">
                            <a target="_blank" href="/rzlp/01/313.html">
                                <img src="picture/1-1g00r24k6214.jpg" alt="" style="width: 390px; height: 205px; position: relative;" />
                                <div class="construction_tips">
                                    <p style="font-size: 16px; margin-top: 10px; margin-left: 16px;">
                                        蔚蓝海岸
                                    </p>
                                    <span style="margin-right: 10px; margin-left: 16px;">2017-10-08
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div class="construction_list">
                            <a target="_blank" href="/rzlp/01/314.html">
                                <img src="picture/1-1g00r24i12q.jpg" alt="" style="width: 390px; height: 205px; position: relative;" />
                                <div class="construction_tips">
                                    <p style="font-size: 16px; margin-top: 10px; margin-left: 16px;">
                                        晓郡花园
                                    </p>
                                    <span style="margin-right: 10px; margin-left: 16px;">2017-10-08
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div class="construction_list">
                            <a target="_blank" href="/rzlp/02/317.html">
                                <img src="picture/1-1g00r24630391.jpg" alt="" style="width: 390px; height: 205px; position: relative;" />
                                <div class="construction_tips">
                                    <p style="font-size: 16px; margin-top: 10px; margin-left: 16px;">
                                        枫丹丽舍
                                    </p>
                                    <span style="margin-right: 10px; margin-left: 16px;">2017-10-08
                                    </span>
                                </div>
                            </a>
                        </div>
                    </div>
                 </div>
                <!-- 案例图库 -->
                <div class="card_title_box">
                    <div class="card_title_left">
                        <img src="picture/green_left.png" class="title_green_pic" />
                        <span class="big_size_blod">案例
                        </span>
                        <span class="big_size">图库
                        </span>
                        <span class="title_little">
                            <a class="designercase_decorationStyle_a" target="_blank" href="case.html" decorationstyleid="8">其他</a>
                            <asp:Repeater ID="decorationStyle" runat="server">
                                <ItemTemplate>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="<%#Eval("decorationStyleLink") %>" decorationstyleid="<%#Eval("decorationStyleLinkID") %>">北欧</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="9">北欧</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="9">北欧</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="10">简欧</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="11">新中式</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="12">美式</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="1">现代简约</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="2">田园</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="3">欧式</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="4">美式乡村</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="5">中式</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="6">地中海</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="7">混搭</a>
                                    <a class="designercase_decorationStyle_a" target="_blank" href="/case/" decorationstyleid="8">其他</a>
                                </ItemTemplate>
                            </asp:Repeater>

                        </span>
                    </div>
                </div>
                <div class="main_box" style="overflow: hidden; margin-bottom: 56px;">
                    <div class="case_box">
                        <div class="case_left_box">
                            <div class="case_left_list case_top">
                                <a href="/case/01/291.html">
                                    <img src="picture/1-1g00q50011638.jpg" />
                                </a>
                                <div class="case_tips_box">
                                    <p style="margin-top: 10px;">
                                        <span style="font-size: 22px">祥源城
                                        </span>
                                        <span style="font-size: 16px;">200平方
                                        </span>
                                        <span style="font-size: 16px;">15万
                                        </span>
                                    </p>
                                    <p class="case_desc">
                                        现代风格为目前装修市场中消费者首选的设计风格，因为它的简约、精致以及个性化的设计方式与当下的生活态度和审美情趣
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="case_right_box">
                            <div class="case_right_top_box">
                                <div class="case_right_right_box">
                                    <div class="case_right_right_bottom_box">

                                        <asp:Repeater ID="anlituku" runat="server">
                                            <ItemTemplate>
                                                <div class="case_right_right_bottom_left right_bottom_ohver">
                                                    <a href="<%#Eval("anlitukuLink") %>">
                                                        <img src="<%#Eval("anlitukuImg") %>" />
                                                    </a>
                                                    <div class="case_tips_box_small">
                                                        <span class="case_tips_box_small_span1"><%#Eval("anlitukuDesc") %>
                                                        </span>
                                                        <%--<span class="case_tips_box_small_span2">瀚悦府 89平方
                                                        </span>
                                                        <span class="case_tips_box_small_span2">8万
                                                        </span>--%>
                                                    </div>
                                                </div>
                                                <div class="case_right_right_bottom_left right_bottom_ohver">
                                                    <a href="/case/01/221.html">
                                                        <img src="picture/1-1g00q64911448.jpg" />
                                                    </a>
                                                    <div class="case_tips_box_small">
                                                        <span class="case_tips_box_small_span1">常青墅
                                                        </span>
                                                        <span class="case_tips_box_small_span2">300平方
                                                        </span>
                                                        <span class="case_tips_box_small_span2">20万
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="case_right_right_bottom_left right_bottom_ohver">
                                                    <a href="/case/01/267.html">
                                                        <img src="picture/1-1g00q55iw38.jpg" />
                                                    </a>
                                                    <div class="case_tips_box_small">
                                                        <span class="case_tips_box_small_span1">凤凰苑
                                                        </span>
                                                        <span class="case_tips_box_small_span2">135平方
                                                        </span>
                                                        <span class="case_tips_box_small_span2">10万
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="case_right_right_bottom_left right_bottom_ohver">
                                                    <a href="/case/01/270.html">
                                                        <img src="picture/1-1g00r04301542.jpg" />
                                                    </a>
                                                    <div class="case_tips_box_small">
                                                        <span class="case_tips_box_small_span1">兰溪151公馆
                                                        </span>
                                                        <span class="case_tips_box_small_span2">145平方
                                                        </span>
                                                        <span class="case_tips_box_small_span2">15
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="case_right_right_bottom_left right_bottom_ohver">
                                                    <a href="/case/01/241.html">
                                                        <img src="picture/1-1g00q63202355.jpg" />
                                                    </a>
                                                    <div class="case_tips_box_small">
                                                        <span class="case_tips_box_small_span1">香芸苑
                                                        </span>
                                                        <span class="case_tips_box_small_span2">220平方
                                                        </span>
                                                        <span class="case_tips_box_small_span2">16万
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="case_right_right_bottom_left right_bottom_ohver">
                                                    <a href="/case/01/215.html">
                                                        <img src="picture/1-1g00qa1235c.jpg" />
                                                    </a>
                                                    <div class="case_tips_box_small">
                                                        <span class="case_tips_box_small_span1">欧景名城
                                                        </span>
                                                        <span class="case_tips_box_small_span2">170平方
                                                        </span>
                                                        <span class="case_tips_box_small_span2">20万
                                                        </span>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Literal ID="Footer" runat="server"></asp:Literal>
            
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
        </div>
    </form>
</body>
</html>
