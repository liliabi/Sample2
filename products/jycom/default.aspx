<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.products.jycom._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/css/jyjpgcommon.css" rel="stylesheet" />
    <link href="/css/jyjpg.css" rel="stylesheet" />
    <link href="/images/whir_css.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/images/work.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltHeader" runat="server"></asp:Literal>
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
        <div class="jz_case">
            <div class="pro">
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/cphms.html" title="春葩+花美时" target="_blank">
                        <img src="/upfile/chunpa.jpg" alt="春葩+花美时" title="春葩+花美时" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/cphms.html" title="春葩+花美时" target="_blank">春葩+花美时</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/qy.html" title="清漪" target="_blank">
                        <img src="/upfile/qingdi.jpg" alt="清漪" title="清漪" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/qy.html" title="清漪" target="_blank">清漪</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" nomar ">
                    <dt><a href="http://www.jyjpg.com/Products/hms.html" title="花美时" target="_blank">
                        <img src="/upfile/huashimei.jpg" alt="花美时" title="花美时" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/hms.html" title="花美时" target="_blank">花美时</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/hqzx.html" title="画鹊兆喜" target="_blank">
                        <img src="/upfile/huaquezhaoxi.jpg" alt="画鹊兆喜" title="画鹊兆喜" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/hqzx.html" title="画鹊兆喜" target="_blank">画鹊兆喜</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/lth.html" title="兰亭荟" target="_blank">
                        <img src="/upfile/lantinghui.jpg" alt="兰亭荟" title="兰亭荟" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/lth.html" title="兰亭荟" target="_blank">兰亭荟</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" nomar ">
                    <dt><a href="http://www.jyjpg.com/Products/shjdsq.html" title="山海间-电视墙" target="_blank">
                        <img src="/upfile/shanhaijian.jpg" alt="山海间-电视墙" title="山海间-电视墙" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/shjdsq.html" title="山海间-电视墙" target="_blank">山海间-电视墙</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/ymqh.html" title="圆满青花" target="_blank">
                        <img src="/upfile/yuanmanqinghua.jpg" alt="圆满青花" title="圆满青花" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/ymqh.html" title="圆满青花" target="_blank">圆满青花</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/jahcsfq.html" title="简爱·花簇-沙发墙" target="_blank">
                        <img src="/upfile/jianaihuachu.jpg" alt="简爱·花簇-沙发墙" title="简爱·花簇-沙发墙" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/jahcsfq.html" title="简爱·花簇-沙发墙" target="_blank">简爱·花簇-沙发墙</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" nomar ">
                    <dt><a href="http://www.jyjpg.com/Products/jahtxcct.html" title="简爱-海棠秀春-床头" target="_blank">
                        <img src="/upfile/jianaihaitangxiuchun.jpg" alt="简爱-海棠秀春-床头" title="简爱-海棠秀春-床头" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/jahtxcct.html" title="简爱-海棠秀春-床头" target="_blank">简爱-海棠秀春-床头</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/jastrf231c.html" title="简爱·盛唐-RF23-1+橙金T型铝+橙金方型铝" target="_blank">
                        <img src="/upfile/jianaishengtang.jpg" alt="简爱·盛唐-RF23-1+橙金T型铝+橙金方型铝" title="简爱·盛唐-RF23-1+橙金T型铝+橙金方型铝" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/jastrf231c.html" title="简爱·盛唐-RF23-1+橙金T型铝+橙金方型铝" target="_blank">简爱·盛唐-RF23-1+橙金T型铝+橙金方型铝</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/jabt_1.html" title="简爱·博提" target="_blank">
                        <img src="/upfile/jianaiboti.jpg" alt="简爱·博提" title="简爱·博提" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/jabt_1.html" title="简爱·博提" target="_blank">简爱·博提</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" nomar ">
                    <dt><a href="http://www.jyjpg.com/Products/pafgldq_1.html" title="平安富贵·廊道墙" target="_blank">
                        <img src="/upfile/pinanfugui.jpg" alt="平安富贵·廊道墙" title="平安富贵·廊道墙" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/pafgldq_1.html" title="平安富贵·廊道墙" target="_blank">平安富贵·廊道墙</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/hdzwssb.html" title="厚德载物（山水版）" target="_blank">
                        <img src="/upfile/houdezaiwu.jpg" alt="厚德载物（山水版）" title="厚德载物（山水版）" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/hdzwssb.html" title="厚德载物（山水版）" target="_blank">厚德载物（山水版）</a></h3>
                        <p></p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/cxqdfdzsh.html" title="春夏秋冬" target="_blank">
                        <img src="/upfile/chunxiaqiudong.jpg" alt="春夏秋冬" title="春夏秋冬" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/cxqdfdzsh.html" title="春夏秋冬" target="_blank">春夏秋冬</a></h3>
                        <p>材质：环保PU中纤复合板     工艺：雕刻印彩</p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" nomar ">
                    <dt><a href="http://www.jyjpg.com/Products/fdzsh.html" title="天晟" target="_blank">
                        <img src="/upfile/tiansheng.jpg" alt="天晟" title="天晟" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/fdzsh.html" title="天晟" target="_blank">天晟</a></h3>
                        <p>材质：环保PU中纤复合板     工艺：雕刻印彩</p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/olfqbjq.html" title="简爱.路易" target="_blank">
                        <img src="/upfile/jianailuyi.jpg" alt="简爱.路易" title="简爱.路易" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/olfqbjq.html" title="简爱.路易" target="_blank">简爱.路易</a></h3>
                        <p>材质：环保PU中纤复合板     工艺：浮雕印彩</p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/jaxlmstybj.html" title="简爱.圣洁" target="_blank">
                        <img src="/upfile/jianaishengjie.jpg" alt="简爱.圣洁" title="简爱.圣洁" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/jaxlmstybj.html" title="简爱.圣洁" target="_blank">简爱.圣洁</a></h3>
                        <p>材质：环保PU中纤复合板     工艺：雕刻印彩</p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" nomar ">
                    <dt><a href="http://www.jyjpg.com/Products/mstybjq.html" title="绮罗香" target="_blank">
                        <img src="/upfile/yiluoxiang.jpg" alt="绮罗香" title="绮罗香" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/mstybjq.html" title="绮罗香" target="_blank">绮罗香</a></h3>
                        <p>材质：环保PU中纤复合板     工艺：雕刻印彩</p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/mesxdssbjq.html" title="简爱·美尔舍" target="_blank">
                        <img src="/upfile/jianaimeiershe.jpg" alt="简爱·美尔舍" title="简爱·美尔舍" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/mesxdssbjq.html" title="简爱·美尔舍" target="_blank">简爱·美尔舍</a></h3>
                        <p>材质：环保PU中纤复合板     工艺：雕刻印彩</p>
                        <i></i>
                    </dd>
                </dl>
                <dl class=" ">
                    <dt><a href="http://www.jyjpg.com/Products/jaxlxdssbj.html" title="简爱·春华" target="_blank">
                        <img src="/upfile/jianaichunhua.jpg" alt="简爱·春华" title="简爱·春华" /></a></dt>
                    <dd>
                        <h3><a href="http://www.jyjpg.com/Products/jaxlxdssbj.html" title="简爱·春华" target="_blank">简爱·春华</a></h3>
                        <p>材质：环保PU中纤复合板     工艺：雕刻印彩</p>
                        <i></i>
                    </dd>
                </dl>
            </div>
            <div class="clear"></div>

        </div>
        <asp:Literal ID="ltFooter" runat="server"></asp:Literal>
    </form>
</body>
</html>
