<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="menu.aspx.cs"
    Inherits="paducncms.admin.al.menu" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <script type="text/javascript" src="../images/util.js"></script>
    <script type="text/javascript">
        function OpenPage(title, wd, ht, url) {
            var postfunc = function () {
                __doPostBack('btnRefresh', '');
                if (window.parent.frames["MainFrame"].location.href.indexOf("dy/default.aspx") > 0) {
                    window.parent.frames["MainFrame"].__doPostBack('btnSearch', '');
                }               
            }
            top.OpenPage(title, wd, ht, url, postfunc);            
        }        
    </script>
</head>
<body>
    <form id="form1" name="form1" runat="server" autocomplete="off" style="margin: 0; padding: 0;">
        <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="90000">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server" style="margin: 0; padding: 0;">                   
                    <asp:TreeView ID="trvMap" runat="server" ImageSet="XPFileExplorer" Target="MainFrame"
                        CssClass="treeview" NodeIndent="5">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                        <NodeStyle HorizontalPadding="5px" VerticalPadding="5px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle BackColor="#748AA5" Font-Underline="False" ForeColor="#ffffff"
                            HorizontalPadding="5px" VerticalPadding="5px" />
                        <Nodes>
                        </Nodes>
                    </asp:TreeView>
                </asp:Panel>
                <asp:Button ID="btnRefresh" runat="server" Visible="false" Text="刷新" OnClick="btnRefresh_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
