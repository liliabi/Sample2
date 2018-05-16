using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paducncms.Module;
using System.Data;

namespace paducncms.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!PaducnSoft.Common.StringPlus.IsUrl())
            {
                Response.Write("<script language=JavaScript>;parent.location.href='default.aspx';</script>");
                Response.End();
            }           
            Page.SetFocus(this.txtAdminName);
        }


        protected void btnOK_Click(object sender, ImageClickEventArgs e)
        {
            if (this.txtAdminName.Text.Equals(""))
            {
                PaducnSoft.Common.MessageBox.Alert(this, "用户不能为空！");
                Page.SetFocus(this.txtAdminName);
                return;
            }
            if (this.txtAdminPassword.Text.Equals(""))
            {
                PaducnSoft.Common.MessageBox.Alert(this, "密码不能为空！");
                Page.SetFocus(this.txtAdminPassword);
                return;
            }
            if (this.txtVerifyCode.Text.Equals(""))
            {
                PaducnSoft.Common.MessageBox.Alert(this, "验证码不能为空！");
                Page.SetFocus(this.txtVerifyCode);
                return;
            }
            if (!this.txtVerifyCode.Text.Equals(Session["VerifyCode"].ToString()))
            {
                PaducnSoft.Common.MessageBox.Alert(this, "验证码不正确，请重新输入！");
                Page.SetFocus(this.txtVerifyCode);
                return;
            }
            PaducnSoft.DAL.ay_login dal_login = new PaducnSoft.DAL.ay_login();
            string strMessage = string.Empty;
            bool result = dal_login.CheckUserName(this.txtAdminName.Text, this.txtAdminPassword.Text, out strMessage);
            if (!result)
            {
                PaducnSoft.Common.MessageBox.Alert(this, strMessage);
                return;
            }
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Red", "parent.location.href='default.aspx';", true);
            }         

        }

    }
}