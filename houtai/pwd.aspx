<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pwd.aspx.cs" Inherits="paducncms.admin.pwd" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link type="text/css" rel="stylesheet" href="images/style.css" />
    <script type="text/javascript" src="images/util.js"></script>
    <script src="../My97DatePicker/WdatePicker.js" type="text/javascript"></script>   
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
                       <img src="images/home_icon.png" />
                   </td>
               <td>
                   您现在的位置：<font color="DarkSlateGray"><b>密码修改</b></font>
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
               <td class="hback_1" width="90px" nowrap>
                   旧密码：
               </td>
               <td class="hback">
                   <asp:TextBox ID="bPassword" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="hback_1" nowrap>
                   新密码：
               </td>
               <td class="hback">
                   <asp:TextBox ID="bNewPassword" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="hback_1" nowrap>
                   确认密码：
               </td>
               <td class="hback">
                   <asp:TextBox ID="bNewPassword2" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
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
