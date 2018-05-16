using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.sy.adm
{
    public partial class modify : PaducnSoft.Module.BasePage
    {
        PaducnSoft.DAL.ay_admin dal = new PaducnSoft.DAL.ay_admin();
        protected void Page_PreInit(object sender, EventArgs e)
        {
            base.CurrentPath = "../";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Params["id"] != null && Request.Params["id"].Trim() != "")
                {
                    ShowInfo((int)PaducnSoft.Common.StringPlus.ConvertNullToZero(Request.Params["id"]));
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string strErr = "";
            if (this.bName.Text.Trim().Length == 0)
            {
                strErr += "用户不能为空！\\n";
            }
            if (this.bPassword.Text.Trim().Length == 0)
            {
                strErr += "密码不能为空！\\n";
            }
            if (strErr != "")
            {
                MessageBox.Alert(this, strErr);
                return;
            }
            PaducnSoft.Model.ay_admin model = new PaducnSoft.Model.ay_admin();
            model.bId = (int)StringPlus.ConvertNullToZero(this.bId.Value);
            model.bName = this.bName.Text;
            model.bRealName = this.bRealName.Text;
            model.bPassword = SecurityEncryption.DESEncrypt(this.bPassword.Text.ToString().Trim());
            model.bOrder = (int)StringPlus.ConvertNullToZero(this.bOrder.Value);
            model.bAddTime = DateTime.Now;
            model.bRemark = this.bRemark.Text;
            model.bAddUser = paducncms.Module.UserRights.AdminUserID;
            StringBuilder strWhere = new StringBuilder();
            strWhere.AppendFormat(" and bId<>{0}", this.bId.Value);
            strWhere.AppendFormat(" and bName='{0}'", model.bName);
            if (dal.Exists(strWhere.ToString()))
            {
                MessageBox.Alert(this, "名称已存在,请重新输入！");
                return;
            }
            bool result = dal.Update(model);
            if (result)
            {
                MessageBox.Alert(this, "更新成功！","default.aspx");
            }
            else
            {
                MessageBox.Alert(this, "更新失败！");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ShowInfo((int)PaducnSoft.Common.StringPlus.ConvertNullToZero(this.bId.Value));
        }
        private void ShowInfo(int bId)
        {
            PaducnSoft.Model.ay_admin model = dal.GetModel(bId);
            this.bId.Value = model.bId.ToString();
            this.bName.Text = model.bName;         
            this.bName.Enabled = false;
            this.bRealName.Text = model.bRealName;
            this.bPassword.Attributes.Add("Value", SecurityEncryption.DESDecrypt(model.bPassword));
            this.bOrder.Value = model.bOrder.ToString();
            this.bRemark.Text = model.bRemark;             
        }
    }
}