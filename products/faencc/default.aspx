<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.products._default" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <title>快装师</title>
    <link href="../../images/whir_css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../images/jquery.min.js"></script>
    <script type="text/javascript" src="../../images/work.js"></script>
    <link href="../../css/common.css" rel="stylesheet" />
    <link href="../../css/faencc.css" rel="stylesheet" />
    

</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
        <div id="index_overflow">           
            <div class="MainBox">
                <div class="bannerBox">                   
                    <div class="banner_list b_dlock" style="background: url(../../upfile/faenccproduction.jpg) center top no-repeat; display: block;"></div>                   
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
                <div class="inside_con" style="padding: 15px 0;">
                    <asp:Repeater ID="rpList" runat="server">
                        <ItemTemplate>
                            <div class="pro_list <%# (Container.ItemIndex + 1)%2==0?"prof_right":"" %>">
                                <div class="f_pic c_pic">
                                    <a href="view/?id=<%#Eval("bId")%>" title="<%#Eval("bTitle")%>" target="_blank">
                                        <img src="../../upfile/<%#Eval("bPic")%>" width="550" height="320" />
                                    </a>
                                </div>
                                <div class="f_pic">
                                    <div class="div_con">
                                        <div class="title"><a href="view/?id=<%#Eval("bId")%>" title="<%#Eval("bTitle")%>" target="_blank"><%#Eval("bTitle")%></a></div>
                                        <div class="line"></div>
                                        <div class="jianshu">
                                            <p><%# PaducnSoft.Common.Utils.CutString(PaducnSoft.Common.Utils.DeleteHtml(PaducnSoft.Common.Utils.HtmlDecode(PaducnSoft.Common.StringPlus.NullToString(Eval("bContent")))), 220)%></p>
                                        </div>
                                    </div>
                                </div>
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
            </div>
           
        </div>
        <!--footer-->
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
