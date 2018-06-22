<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.products.arrcom._default" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>快装师</title>
    <link href="/css/arrowwardrobe.css" rel="stylesheet" />

    <script src="/js/arrowwardrobe.js"></script>
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/images/work.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <div class="MainBox">
            <div class="banner_list b_dlock" style="background: url(/upfile/arrowbanner.jpg) center top no-repeat; display: block;">
            </div>
        </div>
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
                    <li><a href="./" title="全部产品">全部产品</a>
                    </li>
                    <asp:Literal ID="ltProdClass" runat="server"></asp:Literal>
                </ul>
                <div class="clear"></div>
            </div>
        </div>

        <div class="main-box">
            <ul class="page-l series-list">
                <%--<li class="index-one-case one-series"><a href="product_view.html?id=218">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【水木清华】梳妆台" src="/upfile/shuzhuangtai.jpg" />
                    </div>
                    <p class="index-case-name">【水木清华】梳妆台</p>
                    <p>犹如清华园内的胜景 小家碧玉而又不失大家贵族华贵...</p>

                </a></li>
                <li class="index-one-case one-series"><a href="product_view.html?id=217">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【圣卡罗】装饰柜" src="/upfile/zhuangshigui.jpg" />
                    </div>
                    <p class="index-case-name">【圣卡罗】装饰柜</p>
                    <p>被意大利人誉为“歌剧中心”的圣卡罗歌剧院，集百年...</p>

                </a></li>
                <li class="index-one-case one-series"><a href="product_view.html?id=216">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【卡布奇诺】隔断柜" src="/upfile/geduangui.jpg" />
                    </div>
                    <p class="index-case-name">【卡布奇诺】隔断柜</p>
                    <p>纹理清晰自然，布局错落有致，唯美而又灵动，犹如一杯香...</p>

                </a></li>
                <li class="index-one-case one-series"><a href="product_view.html?id=215">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【加州阳光】过道柜" src="/upfile/guodaogui.jpg" />
                    </div>
                    <p class="index-case-name">【加州阳光】过道柜</p>
                    <p>箭牌全屋定制“加州阳光”系列将加州的旖旎风光转...</p>

                </a></li>
                <li class="index-one-case one-series"><a href="product_view.html?id=214">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【加州阳光】斗柜" src="/upfile/dougui.jpg" />
                    </div>
                    <p class="index-case-name">【加州阳光】斗柜</p>
                    <p>箭牌全屋定制“加州阳光”系列将加州的旖旎风光转...</p>

                </a></li>
                <li class="index-one-case one-series"><a href="product_view.html?id=213">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【巴黎之恋】餐边酒柜" src="/upfile/canbianjiugui.jpg" />
                    </div>
                    <p class="index-case-name">【巴黎之恋】餐边酒柜</p>
                    <p>当经典白邂逅深色咖，一切变得如梦如幻。时尚的设计，...</p>

                </a></li>
                <li class="index-one-case one-series"><a href="product_view.html?id=212">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【皇家印象】阳台柜" src="/upfile/yangtaigui.jpg" />
                    </div>
                    <p class="index-case-name">【皇家印象】阳台柜</p>
                    <p>一切带有自然气息，毫不矫揉造作，毫不刻意雕琢的美，都...</p>

                </a></li>
                <li class="index-one-case one-series"><a href="product_view.html?id=211">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【皇家印象】酒柜" src="/upfile/jiugui.jpg" />
                    </div>
                    <p class="index-case-name">【皇家印象】酒柜</p>
                    <p>一切带有自然气息，毫不矫揉造作，毫不刻意雕琢的美，都...</p>

                </a></li>
                <li class="index-one-case one-series"><a href="product_view.html?id=210">
                    <div class="pro_imgdiv">
                        <img class="index-case-pic delay-loading" alt="【都市恋人】斗柜" src="/upfile/dougui2.jpg" />
                    </div>
                    <p class="index-case-name">【都市恋人】斗柜</p>
                    <p>追求简约时尚，不是毫无内涵的随波逐流，而是自然和现...</p>
                </a>
                </li>--%>

                <asp:Repeater ID="rpList" runat="server">
                    <ItemTemplate>
                        <li class="index-one-case one-series"><a href="/products/show.aspx?id=<%#Eval("bId")%>"  title="<%#Eval("bTitle")%>" target="_blank">
                            <div class="pro_imgdiv">
                                <img class="index-case-pic delay-loading" alt="<%#Eval("bTitle")%>" src="/upfile/<%#Eval("bPic")%>" />
                            </div>
                            <p class="index-case-name"><%#Eval("bTitle")%></p>
                        </a>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Panel ID="Panel1" runat="server" Visible='<%#bool.Parse((rpList.Items.Count==0).ToString())%>'>
                            <p>
                                <asp:Label ID="lblEmpty" Text="没有找到任何数据" runat="server"></asp:Label>
                            </p>
                        </asp:Panel>
                    </FooterTemplate>
                </asp:Repeater>
            </ul>
            <div class="clear"></div>
            <div class="fpage">
                <asp:AspNetPager ID="MyPager" runat="server" PageSize="6" PageIndexBoxType="DropDownList"
                    ShowPageIndexBox="Never" CustomInfoHTML="" ShowCustomInfoSection="Never" AlwaysShow="False"
                    Wrap="False" LayoutType="Table" HorizontalAlign="Center" CustomInfoTextAlign="Right"
                    FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                    Direction="LeftToRight" OnPageChanged="MyPager_PageChanged">
                </asp:AspNetPager>
            </div>
            <div class="clear"></div>
        </div>

        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
