<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.products._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/common.css" rel="stylesheet" />
    <link href="../../css/faencc.css" rel="stylesheet" />
    <script src="../../js/jquery-1.11.3.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="index_overflow">
            <asp:Literal ID="Top" runat="server"></asp:Literal>
            <asp:Literal ID="Nav" runat="server"></asp:Literal>
            <div class="MainBox">
                <div class="bannerBox">
                    <%--<img src="../../upfile/faenccproduction.jpg"  width="100%" height="400px" />--%>
                    <div class="banner_list b_dlock" style="background: url(../../upfile/faenccproduction.jpg) center top no-repeat; display: block;"></div>
                    <%--<div class="banner_list" style="background: url(&quot;/kps01/M00/0A/56/wKiAiVhZ6l6B50vCAAJmfiRhro8414.jpg&quot;) center top no-repeat; display: block;"></div>--%>
                </div>
            </div>

            <!--Banner-->
            <div class="inside_dh">
                <div class="container">
                    <script type="text/javascript">
                        $(document).ready(
                        function () {
                            $('.inside_dh ul li').hover(
                                function () {
                                    $(this).find('a:first').addClass('menu_current');
                                }, function () {
                                    $(this).find('a:first').removeClass('menu_current');
                                }
                            );
                        });
                    </script>
                    <ul>
                        <li><a href="products.html?proTypeID=173765&proTypeName=%E8%87%BB%E7%A8%80%E7%9F%B3%E7%B3%BB%E5%88%97" title="臻稀石系列">臻稀石系列</a>
                            <dl>
                            </dl>
                        </li>
                        <li><a href="products.html?proTypeID=202044&proTypeName=%E7%93%B7%E6%8A%9B%E7%9F%B3%E7%B3%BB%E5%88%97" title="瓷抛石系列">瓷抛石系列</a>
                            <dl>
                            </dl>
                        </li>
                        <li><a href="products.html?proTypeID=202043&proTypeName=%E9%80%9A%E4%BD%93%E5%A4%A7%E7%90%86%E7%9F%B3" title="通体大理石">通体大理石</a>
                            <dl>
                            </dl>
                        </li>
                        <li><a href="products.html?proTypeID=202042&proTypeName=%E5%85%A8%E6%8A%9B%E9%87%89%E7%B3%BB%E5%88%97" title="全抛釉系列">全抛釉系列</a>
                            <dl>
                                <dt><a href="products.html?proTypeID=173767&fid=202042&proTypeName=%E7%9C%9F%E7%8E%89100" title="真玉100">真玉100</a> </dt>
                                <dt><a href="products.html?proTypeID=173768&fid=202042&proTypeName=%E7%9C%9F%E7%9F%B3100" title="真石100">真石100</a> </dt>
                            </dl>
                        </li>
                        <li><a href="products.html?proTypeID=202041&proTypeName=%E4%BB%BF%E5%8F%A4%E7%A0%96%E7%B3%BB%E5%88%97" title="仿古砖系列">仿古砖系列</a>
                            <dl>
                                <dt><a href="products.html?proTypeID=203488&fid=202041&proTypeName=%E7%8E%B0%E4%BB%A3%E4%BB%BF%E5%8F%A4" title="现代仿古">现代仿古</a> </dt>
                                <dt><a href="products.html?proTypeID=173769&fid=202041&proTypeName=%E7%BA%AF%E9%9F%B5100" title="纯韵100">纯韵100</a> </dt>
                                <dt><a href="products.html?proTypeID=173766&fid=202041&proTypeName=%E8%87%BB%E7%A8%80%E6%9C%A8" title="臻稀木">臻稀木</a> </dt>
                                <dt><a href="products.html?proTypeID=173770&fid=202041&proTypeName=%E5%8F%A4%E9%A3%8E100" title="古风100">古风100</a> </dt>
                            </dl>
                        </li>
                        <li><a href="products.html?proTypeID=173771&proTypeName=%E6%8A%9B%E5%85%89%E7%A0%96%E7%B3%BB%E5%88%97" title="抛光砖系列">抛光砖系列</a>
                            <dl>
                            </dl>
                        </li>
                        <li><a href="products.html?proTypeID=202039&proTypeName=%E7%93%B7%E7%89%87%E7%B3%BB%E5%88%97" title="瓷片系列">瓷片系列</a>
                            <dl>
                                <dt><a href="products.html?proTypeID=202040&fid=202039&proTypeName=%E5%93%91%E5%85%89%E7%93%B7%E7%89%87" title="哑光瓷片">哑光瓷片</a> </dt>
                                <dt><a href="products.html?proTypeID=173772&fid=202039&proTypeName=%E4%BA%AE%E5%85%89%E7%93%B7%E7%89%87" title="亮光瓷片">亮光瓷片</a> </dt>
                            </dl>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="container">
                <div class="inside_con" style="padding: 15px 0;">

                    <div class="pro_list">
                        <div class="f_pic c_pic">
                            <a href="displayproduct.html?proID=2473440" title="闪电米黄" target="_blank">
                                <img src="../../upfile/shandianmihuang.jpg" width="550" height="320" />
                            </a>
                        </div>
                        <div class="f_pic">
                            <div class="div_con">
                                <div class="title"><a href="displayproduct.html?proID=2473440" title="闪电米黄" target="_blank">闪电米黄</a></div>
                                <div class="line"></div>
                                <div class="jianshu">
                                    <p style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; LINE-HEIGHT: 3; MARGIN-TOP: 0.5em; FONT-FAMILY: 微软雅黑; MARGIN-BOTTOM: 0.5em; FONT-SIZE: 10.5pt">米黄的色彩温润低调而清丽柔婉，使空间的每个角落都充满温情的气质。给空间以舒适，以简约，以低调的高贵。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro_list prof_right">
                        <div class="f_pic c_pic">
                            <a href="displayproduct.html?proID=2473438" title="拉洛灰" target="_blank">
                                <img src="../../upfile/laluohui.jpg" width="550" height="320" /></a>
                        </div>
                        <div class="f_pic">
                            <div class="div_con">
                                <div class="title"><a href="displayproduct.html?proID=2473438" title="拉洛灰" target="_blank">拉洛灰</a></div>
                                <div class="line"></div>
                                <div class="jianshu">
                                    <p style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; LINE-HEIGHT: 3; MARGIN-TOP: 0.5em; FONT-FAMILY: 微软雅黑; MARGIN-BOTTOM: 0.5em; FONT-SIZE: 10.5pt">纵横交错的纹路给予瓷砖非凡的神秘感，其貌似毫无规则的纹理走向无限还原真石的纹理及质感，给现代家居空间注入一丝来自大自然的天然气质。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro_list">
                        <div class="f_pic c_pic">
                            <a href="displayproduct.html?proID=2463763" title="自由格调" target="_blank">
                                <img src="../../upfile/ziyougediao.jpg" width="550" height="320" />
                            </a>
                        </div>
                        <div class="f_pic">
                            <div class="div_con">
                                <div class="title"><a href="displayproduct.html?proID=2463763" title="自由格调" target="_blank">自由格调</a></div>
                                <div class="line"></div>
                                <div class="jianshu">
                                    <p style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; LINE-HEIGHT: 3; MARGIN-TOP: 0.5em; FONT-FAMILY: 微软雅黑; MARGIN-BOTTOM: 0.5em; FONT-SIZE: 10.5pt">瓷片以灰色为产品基调，并在其中加入同色调的字母元素，不仅迎合时下年轻人的潮流品味，还为现代家居生活平添一抹欧美时尚气质。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro_list prof_right">
                        <div class="f_pic c_pic">
                            <a href="displayproduct.html?proID=2463742" title="图兰朵" target="_blank">
                                <img src="../../upfile/tulanduo.jpg" width="550" height="320" />
                            </a>
                        </div>
                        <div class="f_pic">
                            <div class="div_con">
                                <div class="title"><a href="displayproduct.html?proID=2463742" title="图兰朵" target="_blank">图兰朵</a></div>
                                <div class="line"></div>
                                <div class="jianshu">
                                    <p style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; LINE-HEIGHT: 3; MARGIN-TOP: 0.5em; FONT-FAMILY: 微软雅黑; MARGIN-BOTTOM: 0.5em; FONT-SIZE: 10.5pt">瓷片表面印花生机勃勃，花朵丛生。娇羞柔媚中不失清新淡雅，给现代生活空间带来一份难得的清新田园之风。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro_list">
                        <div class="f_pic c_pic">
                            <a href="displayproduct.html?proID=2463741" title="阿依达" target="_blank">
                                <img src="../../upfile/ayida.jpg" width="550" height="320" />
                            </a>
                        </div>
                        <div class="f_pic">
                            <div class="div_con">
                                <div class="title"><a href="displayproduct.html?proID=2463741" title="阿依达" target="_blank">阿依达</a></div>
                                <div class="line"></div>
                                <div class="jianshu">
                                    <p style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; LINE-HEIGHT: 3; MARGIN-TOP: 0.5em; FONT-FAMILY: 微软雅黑; MARGIN-BOTTOM: 0.5em; FONT-SIZE: 10.5pt">瓷片大面积运用浅黄色色调，给予家居空间以温馨，以淡雅，以舒适。点缀几缕枝桠，为现代居住空间注入一丝大自然的清新力量。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro_list prof_right">
                        <div class="f_pic c_pic">
                            <a href="displayproduct.html?proID=2462404" title="卡西白" target="_blank">
                                <img src="../../upfile/kaxibai.jpg" width="550" height="320" />
                            </a>
                        </div>
                        <div class="f_pic">
                            <div class="div_con">
                                <div class="title"><a href="displayproduct.html?proID=2462404" title="卡西白" target="_blank">卡西白</a></div>
                                <div class="line"></div>
                                <div class="jianshu">
                                    <p style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; LINE-HEIGHT: 3; MARGIN-TOP: 0.5em; FONT-FAMILY: 微软雅黑; MARGIN-BOTTOM: 0.5em; FONT-SIZE: 10.5pt">瓷片运用大面积的白色，些许灰色纹理缭绕其中，呈现出一种朴实素雅而不失精彩的感觉。低调气质与生俱来，为现代生活空间平添一份时尚质感。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro_list">
                        <div class="f_pic c_pic">
                            <a href="displayproduct.html?proID=2462403" title="桑塔" target="_blank">
                                <img src="../../upfile/sangta.jpg" width="550" height="320" />
                            </a>
                        </div>
                        <div class="f_pic">
                            <div class="div_con">
                                <div class="title"><a href="displayproduct.html?proID=2462403" title="桑塔" target="_blank">桑塔</a></div>
                                <div class="line"></div>
                                <div class="jianshu">
                                    <p style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; LINE-HEIGHT: 3; MARGIN-TOP: 0.5em; FONT-FAMILY: 微软雅黑; MARGIN-BOTTOM: 0.5em; FONT-SIZE: 10.5pt">法恩莎桑塔系列瓷片，讲述一个关于传教的圣女给黑暗的人心带来光明的故事。瓷片表面纹理清新雅致，色调柔和舒适，触感平整光滑，十字分割使瓷片尽显小家碧玉的气质，温婉动人。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro_list prof_right">
                        <div class="f_pic c_pic">
                            <a href="displayproduct.html?proID=2462245" title="奥贝尔" target="_blank">
                                <img src="../../upfile/aobeier.jpg" width="550" height="320" />
                            </a>
                        </div>
                        <div class="f_pic">
                            <div class="div_con">
                                <div class="title"><a href="displayproduct.html?proID=2462245" title="奥贝尔" target="_blank">奥贝尔</a></div>
                                <div class="line"></div>
                                <div class="jianshu">
                                    <p style="TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; LINE-HEIGHT: 3; MARGIN-TOP: 0.5em; FONT-FAMILY: 微软雅黑; MARGIN-BOTTOM: 0.5em; FONT-SIZE: 10.5pt">法恩莎奥贝尔系列瓷片，将天然裂纹的纹理融入其中，获得一种全新的视觉感受。其色调温婉柔和，砖面平整光滑，自然舒适，宜家气质尽显。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="fpage">
                        <a href="/products.html?pageIndex=1"><<</a>&nbsp;
                          <a href="/products.html">上一页</a>&nbsp;
	                        <a href="/products.html?pageIndex=1"><font color='#FF0000'>1</font></a>&nbsp;
                             <a href="/products.html?pageIndex=2">2</a>&nbsp;
                             <a href="/products.html?pageIndex=3">3</a>&nbsp;
                             <a href="/products.html?pageIndex=4">4</a>&nbsp;
                             <a href="/products.html?pageIndex=5">5</a>&nbsp;
                             <a href="/products.html?pageIndex=6">6</a>&nbsp;
                          <a href="/products.html?pageIndex=2">下一页</a>&nbsp;
                          <a href="/products.html?pageIndex=7">>></a>&nbsp;
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <asp:Literal ID="Footer" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
