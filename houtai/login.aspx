<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"  CodeBehind="login.aspx.cs" Inherits="paducncms.admin.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="images/style.css" />
    <script type="text/javascript">
        function DoFresh() {
            document.getElementById("Image1").src = "CreateImg.aspx?tm=" + Math.random();
        } 
    </script>
</head>
<body>
    <form id="form2" runat="server" autocomplete="off" style="margin: 0; padding: 0;">
    <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="90000">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <br>
                <br>
                <br>
                <br>
                <table border="0" align="center" cellpadding="5" cellspacing="0" style="width: 450px">
                    <tr>
                        <td style="width: 100px; height: 30px;">
                            用 户：
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtAdminName" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 30px;">
                            密 码：
                        </td>
                        <td  align="left">
                            <asp:TextBox ID="txtAdminPassword" runat="server" CssClass="textbox"
                                TextMode="Password" Width="180px"></asp:TextBox>
                        </td>
                    </tr>                   
                    <tr>
                        <td style="width: 100px; height: 30px">
                            验 证 码：
                        </td>
                        <td align="left" style="height: 30px">
                            <asp:TextBox ID="txtVerifyCode" runat="server" CssClass="textbox"  Width="60px"></asp:TextBox>&nbsp;&nbsp;<asp:Image
                                ImageAlign="AbsMiddle" ID="Image1" runat="server" ImageUrl="CreateImg.aspx" />
                            <a href="javascript:DoFresh();">看不清，请点击我！</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                        </td>
                        <td style="height: 55px;">
                            <asp:ImageButton ID="btnOK" runat="server" ImageUrl="images/loginbutton.png" OnClick="btnOK_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
