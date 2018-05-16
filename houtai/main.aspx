<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="paducncms.admin._main" %>
<html>
<head id="Head1">
<title>柏顿内容网站管理中心</title> 
</head>
<frameset rows="90,*" cols="*" frameborder="no" framespacing="0" border="0">
<frame name="topFrame" id="fraToolbar" scrolling="no" src="top.aspx" noresize frameborder="no" bordercolor="#E9E8EB" style="border-bottom:5px solid #E9E8EB;"/>
<frameset id="BodyFrame" name="BodyFrame" cols="205,7,*" frameborder="no" border="0" framespacing="0">
<frame src="left.aspx" name="leftFrame" scrolling="auto" noresize="NORESIZE" id="leftFrame" />
<frame src="middle.aspx" name="midFrame" frameborder="no" scrolling="no" noresize id="midFrame" style="border:1px solid #bebebe;border-top:none;border-bottom:none;"/>
<frame src="" runat="server" name="MainFrame" id="MainFrame"/>
<noframes> 
<body> 
很抱歉，馈下使用的浏览器不支援框架功能，请转用新的浏览器。 
</body> 
</noframes>
</frameset>
</frameset>
</html>


