<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.thecase._default" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" href="/images/bitbug_favicon.ico" />
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
        <div class="container">
            <div class="inside_con">
                <asp:Repeater ID="rpList" runat="server">
                    <ItemTemplate>
                        <div class="casesshow">
                            <a target="_blank" href='<%# (PaducnSoft.Common.Utils.NullToString(Eval("bTypeID"))=="1")?PaducnSoft.Common.Utils.NullToString(Eval("bUrl")): "view/?id=" + Eval("bId").ToString() %>' class="pirobox_gall demo" title="<%#Eval("bTitle")%>" rev="0">
                                <img src="/upfile/<%#Eval("bPic")%>" width="275" height="220">
                                <div><%#Eval("bTitle")%></div>
                            </a>
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
            </div>
            <div class="clear"></div>
            <div class="fpage">
                <asp:AspNetPager ID="MyPager" runat="server" PageSize="9" PageIndexBoxType="DropDownList"
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
