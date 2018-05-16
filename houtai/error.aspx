<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="paducncms.admin.error" %>

<html>
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link type="text/css" rel="stylesheet" href="images/style.css" />    
</head>
<body>
    <form id="form1" runat="server">
    <table class="tabledataaccess" cellpadding="1" cellspacing="1" height="100%">
           <tr>
               <td height="60px" colspan="2">
                   <span class="blue" style="font-size:18px;">数据库连接错误！</span>
               </td>              
           </tr>
           <tr height="30">
               <td colspan="2">
                   您可以尝试以下操作：
               </td>              
           </tr>
           <tr height="30">
               <td align="right" nowrap>
                   1：
               </td>
               <td>                
                   重装安装系统，点<a href="install.aspx" target="_blank" style="color:Red;">这里</a>进行安装。注意：该操作会清空所有数据，请慎用！
               </td>
           </tr>
           <tr height="30">
               <td align="right" nowrap>
                   2：
               </td>
               <td>                
                   稍后再重新登录，点<a href="login.aspx" style="color:Red;">这里</a>重新登录。
               </td>
           </tr>
           <tr height="30">
               <td align="right" nowrap>
                   3：
               </td>
               <td>                
                   请确认根目录是否存在config.xml文件，否则点<a href="install.aspx" target="_blank" style="color:Red;">这里</a>重新安装系统。
               </td>
           </tr>
           <tr>
               <td colspan="2">
                   &nbsp;
               </td>              
           </tr>     
         </table>
    </form>
</body>
</html>
