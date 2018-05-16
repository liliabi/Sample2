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
    public partial class add : PaducnSoft.Module.BasePage
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
                InitControls();
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
            model.bName = this.bName.Text;
            model.bRealName = this.bRealName.Text;
            model.bPassword = SecurityEncryption.DESEncrypt(this.bPassword.Text.ToString().Trim());
            model.bOrder = (int)StringPlus.ConvertNullToZero(this.bOrder.Value);
            model.bRemark = this.bRemark.Text;
            model.bAddTime = DateTime.Now;
            model.bAddUser = paducncms.Module.UserRights.AdminUserID;
            StringBuilder strWhere = new StringBuilder();
            strWhere.AppendFormat(" and bName='{0}'", model.bName);
            if (dal.Exists(strWhere.ToString()))
            {
                MessageBox.Alert(this, "名称已存在,请重新输入！");
                return;
            }
            bool result = dal.Add(model);
            if (result)
            {
                MessageBox.Alert(this, "保存成功！", true, "btnReset");
            }
            else
            {
                MessageBox.Alert(this, "保存失败！");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            InitControls();
        }
        protected void InitControls()
        {      
            this.bName.Text = "";
            this.bRealName.Text = "";            
            this.bRemark.Text = "";
            this.bOrder.Value = StringPlus.NullToString(dal.GetRecordCount("") + 1);
            Page.SetFocus(this.bName);
        }  
    }
}