using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.dy
{
    public partial class add : PaducnSoft.Module.BasePage
    {
        PaducnSoft.DAL.ay_page dal = new PaducnSoft.DAL.ay_page();
        protected void Page_PreInit(object sender, EventArgs e)
        {
            base.CurrentPath = "../";
            this.Page.ClientScript.RegisterClientScriptResource(typeof(add), "ayzhuangxiu.editor.js");            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "loadeditor", @"LoadEditor(""#bContent"");", true);
            if (!IsPostBack)
            {                
                InitControls();               
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string strErr = "";
            if (this.bTitle.Text.Trim().Length == 0)
            {
                strErr += "标题不能为空！\\n";
            }
            if (this.bContent.Text.Trim().Length == 0)
            {
                strErr += "内容不能为空！\\n";
            }
            if (this.bOrder.Text.Trim().Length == 0)
            {
                strErr += "排序不能为空！\\n";
            }
            if (!PageValidate.IsNumber(this.bOrder.Text))
            {
                strErr += "排序格式错误！\\n";
            }
            if (strErr != "")
            {
                MessageBox.Alert(this, strErr);
                return;
            }
            PaducnSoft.Model.ay_page model = new PaducnSoft.Model.ay_page();
            model.bTitle = this.bTitle.Text;
            model.bOrder = (int)StringPlus.ConvertNullToZero(this.bOrder.Text);
            model.bContent = StringPlus.SafeSQL(Server.HtmlEncode(this.bContent.Text));
            model.bAddTime = DateTime.Now;
            model.bAddUser = paducncms.Module.UserRights.AdminUserID;         
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
            this.bTitle.Text = "";
            this.bOrder.Text = StringPlus.NullToString(dal.GetRecordCount("") + 1);
            this.bContent.Text = "";
            ScriptManager1.SetFocus(this.bTitle);
        }  
    }
}