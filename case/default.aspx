<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.thecase._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <link href="/images/whir_css.css" rel="stylesheet" />
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/images/work.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <div class="inside_banner">
            <style>
                .MainBox {
                    Z-INDEX: 0;
                    POSITION: relative;
                    WIDTH: 100%;
                    height: 400px;
                }

                    .MainBox .bannerBox .banner_list {
                        POSITION: absolute;
                        WIDTH: 100%;
                        DISPLAY: none;
                        HEIGHT: 400px;
                        TOP: 0px;
                        LEFT: 0px;
                        z-index: 0;
                    }

                    .MainBox .bannerBox .b_dlock {
                        display: block;
                    }



                .banner_ico_warpper {
                    top: 360px;
                    position: absolute;
                    text-align: center;
                    z-index: 11;
                    left: 0;
                    width: 100%;
                }

                    .banner_ico_warpper ul {
                        display: inline-block;
                        *display: inline;
                        zoom: 1;
                        text-align: center;
                    }

                        .banner_ico_warpper ul li {
                            cursor: pointer;
                            display: block;
                            float: left;
                            height: 16px;
                            text-indent: -9989px;
                            width: 16px;
                            margin-right: 11px;
                        }

                            .banner_ico_warpper ul li.ico_now {
                                color: #FFFFFF;
                                width: 16px;
                                height: 16px;
                            }
            </style>
            <div style="width: 1003px; position: relative; margin: 0px auto; z-index: 11;">
                <div class="banner_ico_warpper">
                    <ul class="banner_ico">
                        <li class="list_1 ico_now">1</li>
                        <li class="list_2">2</li>
                    </ul>
                </div>
            </div>
            <div class="MainBox">
                <div class="bannerBox">
                    <div class="banner_list b_dlock" style="background: url(/upfile/gongchenganli.jpg) center top no-repeat; display: block;"></div>

                    <div class="banner_list" style="background: url(&quot;/kps01/M00/0A/5B/wKiAiVhZ64OaDeNDAAPkfTDdXGo850.jpg&quot;) center top no-repeat; display: none;"></div>
                </div>
            </div>
        </div>
        <!--Banner-->
        <div class="inside_dh">
            <div class="container">
                <div class="inside_dh_l">
                    <ul>
                        <li><a href="cases.html?shareTypeID=48853&amp;shareTypeName=%E9%AB%98%E6%A1%A3%E4%BD%8F%E5%AE%85%20" title="高档住宅 ">高档住宅 </a></li>
                        <li><a href="cases.html?shareTypeID=48854&amp;shareTypeName=%E9%85%92%E5%BA%97%2F%E5%95%86%E5%9C%BA" title="酒店/商场">酒店/商场</a></li>
                        <li><a href="cases.html?shareTypeID=48855&amp;shareTypeName=%E5%86%99%E5%AD%97%E6%A5%BC%2F%E5%AD%A6%E6%A0%A1%20" title="写字楼/学校 ">写字楼/学校 </a></li>
                        <li><a href="cases.html?shareTypeID=48856&amp;shareTypeName=%E5%B8%82%E6%94%BF%E6%9C%BA%E5%85%B3" title="市政机关">市政机关</a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="container">
            <div class="inside_con">
                <div class="casesshow">
                    <a href="/kps01/M00/07/DB/wKiAiVhOQq2Z9Wk3AALYnUQH4nM703.jpg" class="pirobox_gall demo" title="成都瑞升望汉橡树林" rev="0">
                        <img src="/upfile/chengduruisheng.jpg" width="275" height="220">
                        <div>成都瑞升望汉橡树林</div>
                    </a>
                </div>
                <div class="casesshow">
                    <a href="/kps01/M00/07/DB/wKiAiVhOQqynA7IdAALF0IjUIww700.jpg" class="pirobox_gall demo" title="哈尔滨北纬45度地产" rev="1">
                        <img src="/kps01/M00/07/DB/wKiAiVhOQqyGsUTMAAGAGWASPLI865.jpg" width="275" height="220">
                        <div>哈尔滨北纬45度地产</div>
                    </a>
                </div>
                <div class="casesshow">
                    <a href="/kps01/M00/07/DB/wKiAiVhOQqzR0yIDAAPDYcDJxGk494.jpg" class="pirobox_gall demo" title="海投地产-(厦门海投水云湾)" rev="2">
                        <img src="/kps01/M00/07/DB/wKiAiVhOQquyRogoAAGpb1ePU8w472.jpg" width="275" height="220">
                        <div>海投地产-(厦门海投水云湾)</div>
                    </a>
                </div>
                <div class="casesshow">
                    <a href="/kps01/M00/07/DB/wKiAiVhOQqvOkvRJAAM-r-Yrq2o059.jpg" class="pirobox_gall demo" title="海投地产尚书房" rev="3">
                        <img src="/kps01/M00/07/DB/wKiAiVhOQqukoVgYAAGAZD4WUl4191.jpg" width="275" height="220">
                        <div>海投地产尚书房</div>
                    </a>
                </div>
                <div class="casesshow">
                    <a href="/kps01/M00/07/DB/wKiAiVhOQqu_6dUCAAK9o1skjVg493.jpg" class="pirobox_gall demo" title="海峡国际社区" rev="4">
                        <img src="/kps01/M00/07/DB/wKiAiVhOQquh-kbuAAGE8TkKdFQ000.jpg" width="275" height="220">
                        <div>海峡国际社区</div>
                    </a>
                </div>
                <div class="casesshow">
                    <a href="/kps01/M00/07/DB/wKiAiVhOQqqHnH3IAAJcq03AWi4969.jpg" class="pirobox_gall demo" title="弘润地产" rev="5">
                        <img src="/kps01/M00/07/DB/wKiAiVhOQqmxvqUcAAEfhmW1vPE279.jpg" width="275" height="220">
                        <div>弘润地产</div>
                    </a>
                </div>
                <div class="casesshow">
                    <a href="/kps01/M00/07/DA/wKiAiVhOQqfcou3oAAQJ9lQ1-Vk462.jpg" class="pirobox_gall demo" title="吉安汇丰御园" rev="6">
                        <img src="/kps01/M00/07/DA/wKiAiVhOQqbd5gKcAAG6n30MfZw719.jpg" width="275" height="220">
                        <div>吉安汇丰御园</div>
                    </a>
                </div>
                <div class="casesshow">
                    <a href="/kps01/M00/07/DA/wKiAiVhOQqWgqUFiAAJpZ1U3ITo901.jpg" class="pirobox_gall demo" title="锦城国际" rev="7">
                        <img src="/kps01/M00/07/DA/wKiAiVhOQqX7H9pGAAFKb6PW_aU052.jpg" width="275" height="220">
                        <div>锦城国际</div>
                    </a>
                </div>
                <div class="casesshow">
                    <a href="/kps01/M00/07/DA/wKiAiVhOQqXbWRy-AAKvdVi78Kc529.jpg" class="pirobox_gall demo" title="联发地产欣悦华府" rev="8">
                        <img src="/kps01/M00/07/DA/wKiAiVhOQqX30ZWwAAF-8piK8gg558.jpg" width="275" height="220">
                        <div>联发地产欣悦华府</div>
                    </a>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
