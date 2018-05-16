<%@ Page Language="C#" AutoEventWireup="true" Inherits="inc_ay_upload" Codebehind="ay_upload.aspx.cs" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>upload page</title>
    <style>
        body{padding:0;margin:0;background:#fcfcfc;font:12px/18px Arial, Helvetica, sans-serif; vertical-align:middle;}
        input
        {
            border: 0px solid #394757;
            text-align: left;
            color: #333333;
            line-height: 22px;
            padding: 3px 4px 2px 4px;
            cursor: pointer;
			height:24px;
            background-color: #ffffff;
            }
         .norbutton
        {
            border: 1px solid #394757;
            text-align: center;
            color: #ffffff;
            line-height: 24px;
            padding: 0px 5px 1px 5px;
            cursor: pointer;
            background-color: #425266;
            height:28px;
            }
        .textbox{border:1px solid #999;padding: 0px 4px 0px 4px;margin:0; line-height:26px;height:28px;text-align:center;}       

    </style>
</head>
<body leftmargin=0 topmargin =0>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:FileUpload ID="file1" runat="server" CssClass="textbox" />
            </td>
            <td>
               &nbsp;&nbsp;<asp:Button ID="btnupload" runat="server" CssClass="norbutton" Text="开始上传" OnClick="btnupload_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
