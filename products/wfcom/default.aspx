<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ayzhuangxiu.products.wfcom._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/css/main.css" rel="stylesheet" />
    <link href="/css/layout.css" rel="stylesheet" />
    <script src="/js/jquery-1.7.2.min.js"></script>
    <script src="/js/common.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div id="among">
                <div id="aside">
                    <ul>
                        <li>
                            <img src="/upfile/pro.png" />
                        </li>
                    </ul>
                    <ul class="list">
                        <li class="hover" style="min-width: 25%">
                            <a href="pro.html">
                                <img src="/upfile/xinpinshangshi.png" />
                                <span>新品上市</span>
                            </a>
                        </li>
                        <li class="" style="min-width: 25%">
                            <a href="pro.html?ptid=204914&fid=204914">
                                <img src="/upfile/gangshichanpin.png" />
                                <span>岗石产品</span>
                            </a>
                        </li>
                        <li class="" style="min-width: 25%">
                            <a href="pro.html?ptid=204920&fid=204920">
                                <img src="/upfile/shiyingshichanpin.png" />
                                <span>石英石产品</span>
                            </a>
                        </li>
                        <li class="" style="min-width: 25%">
                            <a href="pro.html?ptid=204926&fid=204926">
                                <img src="/upfile/yixingchanpin.png" />
                                <span>异型产品</span>
                            </a>
                        </li>
                        <div class="list1">
                            <a href="pro.html?ptid=204975&fid=204919" class="hover">岗石新品</a>
                            <a href="pro.html?ptid=204939&fid=204919">石英石新品</a>
                            <a href="pro.html?ptid=204938&fid=204919">工程产品</a>
                        </div>

                    </ul>
                </div>
                <div class="content">
                    <!-- Content ================================================================ -->
                    <ul id="listPro" class="clearfix">
                        <a href="displayproduct.html?proID=2544489" target="_blank">
                            <li>
                                <img src="/upfile/haomiaocangqiong.jpg" alt="WFB177浩渺苍穹"/>
                            </li>
                            <span>WFB177浩渺苍穹</span>
                        </a>
                        <a href="displayproduct.html?proID=2544488" target="_blank">
                            <li>
                                <img src="/upfile/shuxingdanyue.jpg" alt="WFB176疏星淡月"/>
                            </li>
                            <span>WFB176疏星淡月</span>
                        </a>
                        <a href="displayproduct.html?proID=2544487" target="_blank">
                            <li>
                                <img src="/upfile/yinhaishenghua.jpg" alt="WFB175银海生花" />
                            </li>
                            <span>WFB175银海生花</span>
                        </a>
                        <a href="displayproduct.html?proID=2544073" target="_blank">
                            <li>
                                <img src="/upfile/xueyuanliezong.jpg" />
                            </li>
                            <span>WFB174-雪原猎踪</span>
                        </a>
                        <a href="displayproduct.html?proID=2482009" target="_blank">
                            <li>
                                <img src="/upfile/jingdianshaanna.jpg" />
                            </li>
                            <span>WFG167Z经典莎安娜</span>
                        </a>
                        <a href="displayproduct.html?proID=2482008" target="_blank">
                            <li>
                                <img src="/upfile/xinshengmiershi.jpg" />
                            </li>
                            <span>WFG168Z新圣米尔石</span>
                        </a>
                        <a href="displayproduct.html?proID=2482007" target="_blank">
                            <li>
                                <img src="/upfile/jingdianbaimeigui.jpg" />
                            </li>
                            <span>WFG169Z经典白玫瑰</span>
                        </a>
                        <a href="displayproduct.html?proID=2482006" target="_blank">
                            <li>
                                <img src="/upfile/xinyilishabai.jpg" />
                            </li>
                            <span>WFG170Z新伊丽莎白</span>
                        </a>
                        <a href="displayproduct.html?proID=2482005" target="_blank">
                            <li>
                                <img src="/upfile/baiyuyingsha.jpg" />
                            </li>
                            <span>WFG171白玉映沙</span>
                        </a>
                        <a href="displayproduct.html?proID=2482004" target="_blank">
                            <li>
                                <img src="/upfile/fouguangyuejin.jpg" />
                            </li>
                            <span>WFG172浮光跃金</span>
                        </a>
                        <a href="displayproduct.html?proID=2482003" target="_blank">
                            <li>
                                <img src="/upfile/chanxiangsiyi.jpg" />
                            </li>
                            <span>WFG173檀香四溢</span>
                        </a>
                    </ul>
                    <div id="pageStyle">
                        <a class="other first" href="/pro.html?pageIndex=1">首 页</a>
                        <a class="other prev">上一页</a>
                        <a class="num" href="/pro.html?pageIndex=1" class="Act">1</a>
                        <a class="other next">下一页</a>
                        <a class="other last" href="/pro.html?pageIndex=1">尾 页</a>
                        <select name="pageIndex1" id="pageIndex1" onchange="javascript:location.href='/pro.html?pageIndex='+this.options[selectedIndex].value+''">
                            <option value="1" selected="selected">1</option>
                        </select>
                    </div>
                    <!-- Content ================================================================ -->
                </div>
            </div>
        </div>
    </form>
</body>
</html>
