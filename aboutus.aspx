<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Kuaizhuang.aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
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
                            佛山市法恩洁具有限公司，是一家专业从事陶瓷研发、生产及营销为一体的国际化大型陶瓷企业，产品涵盖柔光瓷砖、全抛釉瓷砖、仿古砖、抛光砖、瓷片等及配套设施。<br /><br />
                            法恩莎瓷砖，作为乐华集团旗下的高端品牌，传承了意大利纯正的高贵血统，不断吸取意大利时尚多元的文化风格，打造出富有意大利设计风格的时尚瓷砖让消费者奢享时尚生活之美。<br /><br />
                            法恩莎全线采用意大利、西班牙等全球先进的制陶设备及工艺标准，精选原料，不断的技术创新，力为缔造时尚瓷砖精品。<br /><br />
                            法恩莎瓷砖，以臻稀石、通体大理石、臻稀木、真石100、原木100、纯韵100、古风100、现代仿古砖、抛光砖、和瓷片系列，构建出时尚的房屋建筑，满足消费者个性时尚的生活理念。<br /><br />
                            目前，拥有佛山顺德、佛山高明、肇庆四会、韶关南雄、江西景德镇等六大现代化生产基地，总占地面积7000多亩，为全球的销售供应提供了强大的产能保证。作为中高端时尚瓷砖品牌，法恩莎以不断自我提升和创新的精神，引领着瓷砖领域的时尚潮流，为全球消费者提供唯美、艺术优雅的时尚家居生活空间。
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
