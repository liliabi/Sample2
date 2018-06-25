<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="ayzhuangxiu.products.wfcom.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>快装师</title>
    <link rel="shortcut icon" href="/images/bitbug_favicon.ico" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <link href="/css/main.css" rel="stylesheet" />
    <link href="/css/layout.css" rel="stylesheet" />
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery-1.7.2.min.js"></script>
    <script src="/images/work.js"></script>
    <style>
        .bannerbox {
            width: 100%;
            position: relative;
            overflow: hidden;
            height: 380px;
        }

        .banner {
            width: 3000px;
            position: absolute;
            left: 50%;
            margin-left: -950px;
            margin-top: -180px;
        }

        .company {
            background: center top no-repeat;
            height: 700px;
            overflow: hidden;
            margin-bottom: 3px;
        }

        .width {
            max-width: 1100px;
            margin: 40px auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <div class="bannerbox">
            <a class="banner">
                <img src="/upfile/wfaboutbanner.jpg" />
            </a>

        </div>
        <div class="company" style="background-image: url(/upfile/wfcompanybg.jpg)">
            <div class="width">
                <p style="TEXT-ALIGN: center; MARGIN: 0px; font-size: 24px; color: #71452e">万峰石材科技股份有限公司</p>
                <br />
                万峰石材科技股份有限公司成立于2000年，注册资金1亿元，至今已发展成为集新型建筑材料技术研发与人造石材及其异型材料的研发、生产、销售、应用设计、现场施工和后期养护服务于一体的高新技术企业。
                    <br />
                <br />
                公司拥有广东省级环保合成石材工程技术研究开发中心，是国家人造石行业标准与广东省地方标准的发起起草单位，成功开发出了“数控布料”、“表面纳米改性防护”“多彩岩相仿真”、“线（裂）纹仿真”、“玉石仿真”、“微石仿真”等生产工艺技术，拥有多项国家发明专利(如专利号:ZL20101061327.6、ZL201010613264.6、ZL201010603363.6)。作为承担国家科技环保战略的践行者，公司的废石料高值化利用合成优质石材技术，被编入《国家鼓励的循环经济技术、工艺和设备名录》以及《国家“十二五”战略性新兴产业发展报告》。
                    <br />
                <br />
                万峰石材股份创造了国内石材行业以“石材艺术设计与应用专家”定位的集合型商业运作模式，始终以“专注石材空间装饰艺术发展、源于天然而优于天然的使用性能”作为设计研发核心思想，完全突破传统石材应用的局限性，从材料结构、材料功能、高仿真技术、施工技术、养护技术、装饰艺术等方面充分彰显产品魅力，缔造高尚人居空间典范。凭借“材料+设计+配套服务”的核心竞争力，公司承接过世界最高迪拜塔、柬埔寨王宫、印度尼克商业城、上海时代金融中心、湖南步步高商业广场等多项国内外著名建筑工程，并获得中国建材建筑应用创新大奖。
                    <br />
                <br />
                万峰石材股份始终坚持“企业生存靠产品、持久发展靠研发”的经营理念，现已研发生产超过200款人造石及异型产品，产品花色丰富、应用广泛。凭借商业模式、规模实力、科技研发、卓越品质四大创新优势，万峰石材股份现已成为人造石材行业发展及趋势定位的重要参与者。
                    <br />
                <br />
                展望未来，万峰石材科技股份有限公司仍将一如既往，以“创新研发、务实高效、服务共赢”的企业精神，致力成为世界人造石材行业科技研发和生态环境改善的承担者。
            </div>
        </div>
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
