<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modify.aspx.cs" Inherits="ayzhuangxiu.houtai.sy.adm.modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <link type="text/css" rel="stylesheet" href="../../images/style.css" />
    <script type="text/javascript" src="../../images/util.js"></script>
    <script src="../../../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off" style="margin: 0; padding: 0;">
        <div class="main-wrap">
            <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="90000"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr height="40">
                            <td width="20" valign="middle">
                                <img src="../../images/home_icon.png" />
                            </td>
                            <td>您现在的位置：<font color="DarkSlateGray"><b>用户管理</b></font>&nbsp;->&nbsp;后台管理员&nbsp;&nbsp;->&nbsp;编辑用户&nbsp;&nbsp;←&nbsp;<a href="default.aspx">返回列表</a>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" height="10">
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                    <table cellpadding='2' cellspacing='2' class='tab'>
                        <tr>
                            <td align="right" nowrap width="90px" class="hback_1">
                                <span class="red">用户名：</span>
                            </td>
                            <td class="hback">
                                <asp:TextBox ID="bName" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" nowrap width="90px" class="hback_1">姓名：
                            </td>
                            <td class="hback">
                                <asp:TextBox ID="bRealName" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" nowrap class="hback_1">
                                <span class="red">密码：</span>
                            </td>
                            <td class="hback">
                                <asp:TextBox ID="bPassword" runat="server" TextMode="Password" CssClass="textbox"
                                    Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top" class="hback_1">备注：
                            </td>
                            <td class="hback">
                                <asp:TextBox ID="bRemark" runat="server" CssClass="textbox" Height="60px" Width="98%"
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr>
                            <td width="100" align="right" height="40"></td>
                            <td>
                                <asp:HiddenField ID="bId" runat="server" />
                                <asp:HiddenField ID="bOrder" runat="server" />
                                <asp:Button ID="btnSubmit" runat="server" Text="  提交  " CssClass="buttonblue" OnClick="btnSubmit_Click" />&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="btnReset" runat="server" Text="  重置  " CssClass="buttonblue" OnClick="btnReset_Click" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
