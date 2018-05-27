<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.products.faencn._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>快装师</title>
    <link href="/css/common.css" rel="stylesheet" />
    <link href="/css/faenza.com.cn.css" rel="stylesheet" />
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/images/work.js"></script>
    <script src="/js/faenza.com.cn.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="index_overflow">
            <%--<asp:Literal ID="Top" runat="server"></asp:Literal>--%>
            <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
            <%--<asp:Literal ID="Nav" runat="server"></asp:Literal>--%>
            <div class="MainBox">
                <div class="bannerBox">
                    <div class="banner_list b_dlock" style="background: url(../../upfile/faenzacomcnproduction.jpg) center no-repeat; display: block;"></div>
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
            <%--<div class="pro_dh">
                    <ul>
                        <li><a href="http://www.faenza.com.cn/products.html?proTypeID=163809&amp;fid=163809&amp;proTypeName=%E9%99%B6%E7%93%B7%2F%E5%9D%90%E4%BE%BF%E5%99%A8%E7%B3%BB%E5%88%97" title="陶瓷/坐便器系列"><span class="tb tb1"></span>
                            <div>陶瓷/坐便器系列</div>
                        </a></li>
                        <li><a href="http://www.faenza.com.cn/products.html?proTypeID=163810&amp;fid=163810&amp;proTypeName=%E6%B5%B4%E7%BC%B8%E7%B3%BB%E5%88%97" title="浴缸系列"><span class="tb tb2"></span>
                            <div>浴缸系列</div>
                        </a></li>
                        <li><a href="http://www.faenza.com.cn/products.html?proTypeID=163811&amp;fid=163811&amp;proTypeName=%E6%B5%B4%E5%AE%A4%E6%9F%9C%E7%B3%BB%E5%88%97" title="浴室柜系列"><span class="tb tb3"></span>
                            <div>浴室柜系列</div>
                        </a></li>
                        <li><a href="http://www.faenza.com.cn/products.html?proTypeID=163812&amp;fid=163812&amp;proTypeName=%E9%BE%99%E5%A4%B4%E4%BA%94%E9%87%91%E7%B3%BB%E5%88%97" title="龙头五金系列"><span class="tb tb4"></span>
                            <div>龙头五金系列</div>
                        </a></li>
                        <li><a href="http://www.faenza.com.cn/products.html?proTypeID=163813&amp;fid=163813&amp;proTypeName=%E6%B7%8B%E6%B5%B4%E6%88%BF%E7%B3%BB%E5%88%97" title="淋浴房系列"><span class="tb tb5"></span>
                            <div>淋浴房系列</div>
                        </a></li>
                        <li><a href="http://www.faenza.com.cn/products.html?proTypeID=163814&amp;fid=163814&amp;proTypeName=%E7%9B%86%E7%B3%BB%E5%88%97" title="盆系列"><span class="tb tb6"></span>
                            <div>盆系列</div>
                        </a></li>
                        <li><a href="http://www.faenza.com.cn/products.html?proTypeID=163815&amp;fid=163815&amp;proTypeName=%E6%8C%82%E4%BB%B6%E7%B3%BB%E5%88%97" title="挂件系列"><span class="tb tb7"></span>
                            <div>挂件系列</div>
                        </a></li>
                        <li><a href="http://www.faenza.com.cn/products.html?proTypeID=163816&amp;fid=163816&amp;proTypeName=%E8%8A%B1%E6%B4%92%E7%B3%BB%E5%88%97" title="花洒系列"><span class="tb tb8"></span>
                            <div>花洒系列</div>
                        </a></li>
                    </ul>
                    <div class="clear"></div>
                </div>--%>
            <div class="pro_con_bg">
                <div class="news_loadingDiv">
                    <div class="b_pic add_pic" id="f_right">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2545348" target="_blank">
                                <img src="/upfile/F3M9025SC.png" class="LazyLoad" style="display: inline;" /></a><div class="name">
                                    <div>F3M9025SC</div>
                                    <div class="en_font"></div>
                                    <div class="buy_a"><a href="http://www.faenza.com.cn/displayproduct.html?proID=2545348" target="_blank">立即购买 &gt;&gt;</a></div>
                                </div>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2545321" target="_blank">
                                <img src="/upfile/F1E9022C.png" class="LazyLoad" style="display: inline;" />
                                <div class="name">F1E9022C</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2543203" target="_blank">
                                <img src="/upfile/F3C9022C.png" class="LazyLoad" style="display: inline;" />
                                <div class="name">F3C9022C</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2543183" target="_blank">
                                <img src="/upfile/F7T9022C.png" class="LazyLoad" style="display: inline;" />
                                <div class="name">F7T9022C</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542487" target="_blank">
                                <img src="/upfile/FL25P21.png" class="LazyLoad" />
                                <div class="name">FL25P21</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542485" target="_blank">
                                <img src="/upfile/FL25P42.png" class="LazyLoad" />
                                <div class="name">FL25P42</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542266" target="_blank">
                                <img src="/upfile/FL18D42A.png" class="LazyLoad" />
                                <div class="name">FL18D42A</div>
                            </a>
                        </div>
                    </div>
                    <div class="b_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542265" target="_blank">
                                <img src="/upfile/FL23L31-1.png" class="LazyLoad" />
                            </a>
                            <div class="name">
                                <div>FL23L31-1</div>
                                <div class="en_font"></div>
                                <div class="buy_a"><a href="http://www.faenza.com.cn/displayproduct.html?proID=2542265" target="_blank">立即购买 &gt;&gt;</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542263" target="_blank">
                                <img src="/upfile/FL23S31-1.png" class="LazyLoad" />
                                <div class="name">FL23S31-1</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542244" target="_blank">
                                <img src="/upfile/FV017H.png" class="LazyLoad" />
                                <div class="name">FV017H</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542236" target="_blank">
                                <img src="/upfile/FV001Q-1.png" class="LazyLoad" />
                                <div class="name">FV001Q-1</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542233" target="_blank">
                                <img src="/upfile/FW026Q.png" class="LazyLoad" />
                                <div class="name">FW026Q</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542231" target="_blank">
                                <img src="/upfile/FC010A18-1.png" class="LazyLoad" />
                                <div class="name">FC010A18-1</div>
                            </a>
                        </div>
                    </div>
                    <div class="s_pic add_pic">
                        <div class="pic_con">
                            <a href="http://www.faenza.com.cn/displayproduct.html?proID=2542110" target="_blank">
                                <img src="/upfile/FC011A18-1.png" class="LazyLoad" />
                                <div class="name">FC011A18-1</div>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
            <%--<asp:Literal ID="Footer" runat="server"></asp:Literal>--%>
            <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
