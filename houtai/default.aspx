<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="paducncms.admin._default" %>
<html>
<head runat="server"> 
<title>柏顿内容网站管理中心</title>
<style type="text/css">
body{padding:0;margin:0;}
</style>
<script language="javascript" src="images/zDialog.js" type="text/javascript"></script>
<script language="javascript" src="images/zDrag.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">  
    function OpenPage(title, wd, ht, url, postfunc) {
        var dlg = new Dialog();
        dlg.Model = true;
        dlg.Width = wd;
        dlg.Height = ht;
        dlg.URL = url;        
        dlg.Title = title;       
        dlg.OKEvent = function () {
            postfunc();
            dlg.close();
        };
        dlg.CancelEvent = function () {
            dlg.close();
        };
        dlg.show();       
    }
</script>
</head>
<body scroll="no">
<iframe src="main.aspx" height="100%" width="100%" frameborder="0" id="parentframe"
    name="parentframe" marginheight="0" marginwidth="0" runat="server" scrolling="auto">
</iframe>
</body>
</html>