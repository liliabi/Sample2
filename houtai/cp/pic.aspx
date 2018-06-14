<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pic.aspx.cs" Inherits="ayzhuangxiu.houtai.cp.pic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <script type="text/javascript" src="../images/util.js"></script>
    <base target="_self" />
    <style>
        .image-list {
        }
            .image-list li {
                float:left;
                width:23%;
                margin:1%;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off" style="margin: 0; padding: 0;">
        <div class="main-wrap">
            <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="90000">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" height="35">
                        <tr>
                            <td nowrap class="hback_1">
                                <span class="red">图片：</span>
                            </td>
                            <td class="hback" valign="middle">
                                <table border="0" cellpadding="3" cellspacing="0">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="bPic" runat="server" CssClass="textbox" Text="" Width="200px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <iframe src="../../../inc/ay_upload.aspx?fd=bPic" frameborder="0" style="height: 30px; width: 350px;"
                                                scrolling="no"></iframe>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;<asp:HiddenField ID="bId" runat="server" /><asp:Button ID="btnAdd" class="buttonblue" runat="server" Text="  保存  " OnClick="btnAdd_Click" />
                                <asp:Button ID="btnSearch" class="buttonblue" Visible="false" runat="server" Text=" 查询 " OnClick="btnSearch_Click" />
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0"  align="center">
                        <tr>
                            <td>
                                <ul class="image-list">
                                    <asp:Repeater ID="rpList" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <table width="100%" border="1" cellpadding="3" cellspacing="0" align="center">
                                                    <tr>
                                                        <td align="center">
                                                            <asp:Image ID="Image1" runat="server" Height="80px"  ImageAlign="Middle" ImageUrl='<%#"../../../upfile/" + Eval("bPic")%>' /></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:HiddenField ID="bId" runat="server" Value='<%# Eval("bId")%>' />
                                                            <asp:LinkButton ID="btnDelete" runat="server" CssClass="icon icon-del" OnClientClick="return confirm('确认要删除吗?');"
                                                                OnClick="rpList_DeleteButton" CommandArgument='<%#Eval("bId")%>' Text="删除"></asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </li>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:Panel ID="Panel1" runat="server" Visible='<%#bool.Parse((rpList.Items.Count==0).ToString())%>'>
                                                <p>
                                                    <asp:Label ID="lblEmpty" Text="找不到任何数据" runat="server"></asp:Label>
                                                </p>
                                            </asp:Panel>

                                        </FooterTemplate>
                                    </asp:Repeater>
                                </ul>
                            </td>
                        </tr>
                    </table>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
