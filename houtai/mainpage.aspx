<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="paducncms.admin.mainpage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="images/style.css" />
    <script type="text/javascript" src="images/jquery-1.6.4.min.js"></script>
    <script src="images/highcharts.js" type="text/javascript"></script>
    <script type="text/javascript" src="images/PaducnSoft.Common.StringPlus.js"></script>
    <script type="text/javascript" src="images/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="images/lhgdialog.min.js"></script>
    <script type="text/javascript">
        function OpenPage(url, wd, ht) {
            var result = window.showModalDialog(url, window, "DialogHeight=" + ht + ";dialogWidth:" + wd + ";status=no;help=no;scroll=no;resizable=no;location=no;toolbar=no");
            if (result == 1) {
                window.location.reload();
            }
        }
        function OpenPage2(url, wd, ht) {
            var result = window.showModalDialog(url, window, "DialogHeight=" + ht + ";dialogWidth:" + wd + ";status=no;help=no;scroll=yes;resizable=yes;location=no;toolbar=no");
            if (result == 1) {
                window.location.reload();
            }
        }
    </script>
    <script language="JavaScript">
    function ToggleDisplay(id){
    var elem = document.getElementById(id);    
    if (elem) {
        if (elem.style.display != 'block') {
            alert(elem.id);
        elem.style.display = 'block';        
        }
        else {
        elem.style.display = 'none';        
        }
    }
    }
 </script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" align="center" border="0" cellspacing="10" cellpadding="5">
        <tr>
            <td rowspan="2" width="120" align="center">
                <asp:Image ID="Image1" runat="server" ImageUrl="images/admin_p.gif" />
            </td>
            <td height="70">
                <asp:Label ID="Label1" runat="server" Text="欢迎进入柏顿内容网站管理中心" Font-Bold="False" Font-Names="微软雅黑"
                    Font-Size="18px" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td height="28">
                上次登录：<asp:Label ID="lbLogin" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
    </table>   
    
    <table width="100%" align="center" border="0" cellspacing="10" cellpadding="5">      
            <tr>
                <td style="font-weight:bold;border-bottom:2px solid #ddd;">
                    服务器配置情况
                </td>
            </tr>      
            <tr>
                <td valign="top">
                    <table width="100%" cellspacing="8" border="0" cellpadding="5">
                        <tr>
                            <td>
                                服务器IP地址：
                            </td>
                            <td>
                                <asp:Label ID="serverip" runat="server"></asp:Label>
                            </td>
                            <td>
                                服务器域名：
                            </td>
                            <td>
                                <asp:Label ID="server_name" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                服务器IIS版本：
                            </td>
                            <td>
                                <asp:Label ID="serversoft" runat="server"></asp:Label>
                            </td>
                            <td>
                                .NET解释引擎版本：
                            </td>
                            <td>
                                <asp:Label ID="servernet" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                服务端脚本执行超时：
                            </td>
                            <td>
                                <asp:Label ID="serverout" runat="server"></asp:Label>秒
                            </td>
                            <td>
                                服务器现在时间：
                            </td>
                            <td>
                                <asp:Label ID="servertime" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                AspNet内存占用：
                            </td>
                            <td>
                                <asp:Label ID="aspnetn" runat="server"></asp:Label>
                            </td>
                            <td>
                                AspNet CPU时间：
                            </td>
                            <td>
                                <asp:Label ID="aspnetcpu" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                开机运行时长：
                            </td>
                            <td>
                                <asp:Label ID="serverstart" runat="server"></asp:Label>小时
                            </td>
                            <td>
                                进程开始时间：
                            </td>
                            <td>
                                <asp:Label ID="prstart" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                CPU数：
                            </td>
                            <td>
                                <asp:Label ID="cpuc" runat="server"></asp:Label>个
                            </td>
                            <td>
                                服务器所在时区：
                            </td>
                            <td>
                                <font face="宋体">
                                    <asp:Label ID="serverarea" runat="server"></asp:Label></font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                CPU类型：
                            </td>
                            <td>
                                <asp:Label ID="cputype" runat="server"></asp:Label>
                            </td>
                            <td>
                                Sql数据库：
                            </td>
                            <td>
                                <asp:Label ID="serveraccess" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                网站Session总数：
                            </td>
                            <td>
                                <asp:Label ID="servers" runat="server"></asp:Label>
                            </td>
                            <td>
                                网站Application总数：
                            </td>
                            <td>
                                <asp:Label ID="servera" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>                                             
                </td>
            </tr>       
    </table>
    </form>
</body>
</html>
