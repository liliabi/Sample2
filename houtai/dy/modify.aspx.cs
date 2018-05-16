using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.dy
{
    public partial class modify : PaducnSoft.Module.BasePage
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
                if (Request.Params["id"] != null && Request.Params["id"].Trim() != "")
                {
                    ShowInfo((int)PaducnSoft.Common.StringPlus.ConvertNullToZero(Request.Params["id"]));
                }
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
            model.bId = (int)StringPlus.ConvertNullToZero(this.bId.Value);
            model.bTitle = this.bTitle.Text;
            model.bOrder = (int)StringPlus.ConvertNullToZero(this.bOrder.Text);
            model.bContent = StringPlus.SafeSQL(Server.HtmlEncode(this.bContent.Text));
            model.bAddTime = DateTime.Now;
            model.bAddUser = paducncms.Module.UserRights.AdminUserID;            
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
            PaducnSoft.Model.ay_page model = dal.GetModel(bId);
            this.bId.Value = model.bId.ToString();
            this.bTitle.Text = model.bTitle;
            this.bOrder.Text = model.bOrder.ToString();
            this.bContent.Text = Server.HtmlDecode(model.bContent);        

        }
    }
}