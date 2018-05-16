<%@ Page Language="C#" EnableViewState="false" AutoEventWireup="true" CodeBehind="top.aspx.cs" Inherits="paducncms.admin.top" %>

<html>
<head>
    <title></title>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <script type="text/javascript">
        function init() {
            window.parent.frames["MainFrame"].location.reload();
        }
    </script>
    <link type="text/css" rel="stylesheet" href="images/style.css" />
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body {
            background: #38485A;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="ltBody" runat="server"></asp:Literal>
    </form>
</body>
</html>
