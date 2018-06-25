<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.products.arrcn._default" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>快装师</title>
    <link rel="shortcut icon" href="/images/bitbug_favicon.ico" />
    <link href="/css/arrcnindex.css" rel="stylesheet" />
    <%--<link href="/css/arrcnswiper.css" rel="stylesheet" />--%>
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/images/work.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <div class="MainBox">
            <div class="banner_list b_dlock" style="background: url(/upfile/arrowkitchenbanner.jpg) center top no-repeat; height: 400px; display: block;">
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

        <div class="pro_list_bg">
            <div class="container">
                <div class="inside_con" style="padding: 15px 0;">

                    <asp:Repeater ID="rpList" runat="server">
                        <ItemTemplate>
                            <div class="pro_pic">
                                <a href="/products/show.aspx?id=<%#Eval("bId")%>" target="_blank" title="<%#Eval("bTitle")%>" style="margin-top: -210px;">
                                <img src="/upfile/<%#Eval("bPic")%>"><div class="name"><%#Eval("bTitle")%></a></div>
                            </div>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Panel ID="Panel1" runat="server" Visible='<%#bool.Parse((rpList.Items.Count==0).ToString())%>'>
                                <p>
                                    <asp:Label ID="lblEmpty" Text="没有找到任何数据" runat="server"></asp:Label>
                                </p>
                            </asp:Panel>
                        </FooterTemplate>
                    </asp:Repeater>
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
                <%--<div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2434046_displayproduct.html" target="_blank" title="韵律芭蕾" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/yunlvbalei.jpg"><div class="name">韵律芭蕾</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2434045_displayproduct.html" target="_blank" title="馨丝物语" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/xinsiwuyu.jpg"><div class="name">馨丝物语</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2434043_displayproduct.html" target="_blank" title="望岳" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/wangyue.jpg"><div class="name">望岳</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2434041_displayproduct.html" target="_blank" title="千岛湖光" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/qiandaohuguang.jpg"><div class="name">千岛湖光</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2433991_displayproduct.html" target="_blank" title="洛可可变奏曲" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/luokekebianzouqu.jpg"><div class="name">洛可可变奏曲</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div"><a href="http://www.arrowkitchen.cn/proID=2183473_displayproduct.html" target="_blank" title="极地恋歌"></a></div>
                    <img src="/upfile/jidiliange.jpg"><div class="name">极地恋歌</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2183470_displayproduct.html" target="_blank" title="丘比特" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/qiubite.jpg"><div class="name">丘比特</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2183467_displayproduct.html" target="_blank" title="檀香居" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/chanxiangju.jpg"><div class="name">檀香居</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2183466_displayproduct.html" target="_blank" title="原色梦想" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/yuansemengxiang.jpg"><div class="name">原色梦想</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2183465_displayproduct.html" target="_blank" title="云间木曦" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/yunjianmuxi.jpg"><div class="name">云间木曦</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2183464_displayproduct.html" target="_blank" title="宝马世家" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/baomashijia.jpg"><div class="name">宝马世家</div>
                </div>
                <div class="pro_pic">
                    <div class="h_div" style="display: none;"><a href="http://www.arrowkitchen.cn/proID=2183463_displayproduct.html" target="_blank" title="极光" style="margin-top: -210px;"></a></div>
                    <img src="/upfile/jiguang.jpg"><div class="name">极光</div>
                </div>
                <div class="clear"></div>
                <div style="text-align: center; margin: 0px auto; margin: 20px 0px;">
                    <!--Content-->
                    <div class="clear"></div>
                </div>--%>
            </div>
        </div>
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
