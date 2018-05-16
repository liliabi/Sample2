using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paducncms.Module;
using System.Data;
using System.Collections;
namespace paducncms.admin
{
    public partial class pwd : PaducnSoft.Module.BasePage
    {
        string msql = "";
        PaducnSoft.DAL.ay_admin dal = new PaducnSoft.DAL.ay_admin();
        protected void Page_PreInit(object sender, EventArgs e)
        {
            base.CurrentPath = "./";
        }
        #region 前台操作处理
        protected void Page_Load(object sender, EventArgs e)
        {        
            if (!IsPostBack)
            {              
                EditItem();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            UpdateItem();
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {          
            EditItem();
        }


        #endregion
        private void EditItem()
        {
            this.bPassword.Text = "";
            this.bNewPassword.Text = "";
            this.bNewPassword.Text = "";
        }
        private void UpdateItem()
        {
            bool result = false;
            result = dal.CheckUserName(UserRights.AdminUserID, this.bPassword.Text);
            if (!result)
            {
                PaducnSoft.Common.MessageBox.Alert(this,"原密码错误!");
                Page.SetFocus(this.bPassword);
                return;
            }
            else
            {
                if (this.bNewPassword.Text.Equals(""))
                {
                    PaducnSoft.Common.MessageBox.Alert(this,"新密码不能为空！");
                    Page.SetFocus(this.bNewPassword);
                    return;
                }
                string s1 = this.bNewPassword.Text;
                string s2 = this.bNewPassword2.Text;
                if (s1 != s2)
                {
                    PaducnSoft.Common.MessageBox.Alert(this, "两次输入的新密码不一致!");
                    Page.SetFocus(this.bNewPassword);
                    return;
                }
                PaducnSoft.Model.ay_admin model = new PaducnSoft.Model.ay_admin();
                model.bName = UserRights.AdminUserID;
                model.bPassword = PaducnSoft.Common.SecurityEncryption.DESEncrypt(this.bPassword.Text);             
                model.bAddTime = DateTime.Now;
                model.bAddUser = paducncms.Module.UserRights.AdminUserID;
                result = dal.Update(model);
                if (result)
                {
                    PaducnSoft.Common.MessageBox.Alert(this, "修改密码成功,请牢记新密码,并且新密码会在下次登陆时生效！", "pwd.aspx");
                }
                else
                {
                    PaducnSoft.Common.MessageBox.Alert(this, "修改密码失败!");
                }
            }
           
        }
    }
}