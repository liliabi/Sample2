<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.news._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/images/work.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>

        <div class="MainBox">
            <div class="bannerBox">
                <div class="banner_list b_dlock" style="background: url(/upfile/arrowkitchenbanner.jpg) center top no-repeat; display: block;"></div>
            </div>
        </div>
        <div class="container">
            <div id="con">
                <div class="inside_dh">
                    <div class="inside_dh_l">所有新闻</div>
                </div>
                <div class="inside_con">
                    <!--Content-->
                    <asp:Repeater ID="rpList" runat="server">
                        <ItemTemplate>
                            <div class="news_li">
                                <div class="r_con">
                                    <div class="titleb"><a href="view/?id=<%#Eval("bId")%>" target="_blank" title="<%#Eval("bTitle")%>"> <%#Eval("bAddTime","{0:yyyy-MM-dd}")%> <%#Eval("bTitle")%></a></div>
                                    <div class="content"><%#Eval("bKeywords")%></div>
                                    <div class="date"></div>
                                </div>
                                <div class="clear"></div>
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
                        <asp:AspNetPager ID="MyPager" runat="server" PageSize="3" PageIndexBoxType="DropDownList"
                            ShowPageIndexBox="Never" CustomInfoHTML="" ShowCustomInfoSection="Never" AlwaysShow="False"
                            Wrap="False" LayoutType="Table" HorizontalAlign="Center" CustomInfoTextAlign="Right"
                            FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                            Direction="LeftToRight" OnPageChanged="MyPager_PageChanged">
                        </asp:AspNetPager>
                    </div>
                    <div class="clear"></div>

                    <!--Content-->
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
