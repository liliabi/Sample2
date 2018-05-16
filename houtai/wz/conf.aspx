<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="conf.aspx.cs" Inherits="paducncms.admin.wz.conf" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <script type="text/javascript" src="../images/util.js"></script>
    <script src="../../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
   <form id="form1" runat="server" autocomplete="off" style="margin:0;padding:0;">
   <div class="main-wrap">
   <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="90000"></asp:ScriptManager>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
           <tr height="40">
               <td width="20" valign="middle">
                   <img src="../images/home_icon.png" />
               </td>
               <td>
                   您现在的位置：<font color="DarkSlateGray"><b>网站管理</b></font>&nbsp;&gt;&nbsp;参数配置
               </td>
               <td>
               </td>
           </tr>
       </table>
       <table border="0" cellpadding="0" cellspacing="0" height="10">
            <tr>
                <td>
                </td>
            </tr>
        </table>
       <table cellpadding='2' cellspacing='2' class='tab'>          
           <tr>
               <td width="120px" nowrap class='hback_1'>
                   网站名称：
               </td>
               <td>
                   <asp:TextBox ID="bName" runat="server" Width="300px" CssClass="textbox"></asp:TextBox>
               </td>
           </tr>         
           <tr>
               <td valign="middle" class='hback_1'>
                   网站简介：
               </td>
               <td>
                   <asp:TextBox ID="bTitle" runat="server" Width="98%" CssClass="textbox"></asp:TextBox>
               </td>
           </tr>          
           <tr>
               <td valign="middle" class='hback_1'>
                   网站域名：
               </td>
               <td class='hback'>
                   <asp:TextBox ID="bUrl" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
                   <asp:Button ID="Button1" CssClass="buttonblue" runat="server" Text="http://" OnClientClick="bUrl.value='http://'" />
                   <br />
                   <font color="red">请以http://为开头填写，长度不能超过100个字符。</font>
               </td>
           </tr>
           <tr>
                <td nowrap class="hback_1">
                    <span class="red">首页LOGO：</span>
                </td>
                <td colspan="3" class="hback">
                    <table border="0" cellpadding="3" cellspacing="0">
                        <tr>
                            <td>
                                <asp:TextBox ID="bPic" runat="server" CssClass="textbox" Text="" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <iframe src="../../inc/ay_upload.aspx?fd=bPic" frameborder="0" style="height: 30px; width: 400px;"
                                    scrolling="no"></iframe>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>    
           <tr>
               <td valign="middle" class='hback_1'>
                   备案信息：
               </td>
               <td class='hback'>
                   <asp:TextBox ID="bMiibeian" runat="server" Width="200px" CssClass="textbox"></asp:TextBox>
               </td>
           </tr>  
           <tr>
               <td valign="top" nowrap class='hback_1'>
                   网站META关键词：
               </td>
               <td class='hback'>
                   <asp:TextBox ID="bKeywords" runat="server" CssClass="textbox" TextMode="MultiLine" Height="77px"
                       Width="98%"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td valign="top" nowrap class='hback_1'>
                   网站META网页描述：
               </td>
               <td class='hback'>
                   <asp:TextBox ID="bDescriptions" runat="server" CssClass="textbox" TextMode="MultiLine"
                       Height="77px" Width="98%"></asp:TextBox>
               </td>
           </tr>    
           <tr>
               <td valign="top" nowrap class='hback_1'>
                   计数器：
               </td>
               <td class='hback'>
                   <asp:TextBox ID="bCounter" runat="server" CssClass="textbox" TextMode="MultiLine"
                       Height="77px" Width="98%"></asp:TextBox>
               </td>
           </tr>
        
       </table>      
        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td width="100" align="right" height="40">
                </td>
                <td>                
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
