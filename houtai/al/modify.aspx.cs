using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.al
{
    public partial class modify : PaducnSoft.Module.BasePage
    {
        PaducnSoft.DAL.ay_case dal = new PaducnSoft.DAL.ay_case();
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
            if (this.bClick.Text.Trim().Length == 0)
            {
                strErr += "点击量不能为空！\\n";
            }
            if (!PageValidate.IsNumber(this.bClick.Text))
            {
                strErr += "点击量格式错误！\\n";
            }
            if (strErr != "")
            {
                MessageBox.Alert(this, strErr);
                return;
            }
            PaducnSoft.Model.ay_case model = new PaducnSoft.Model.ay_case();
            model.bId = (int)StringPlus.ConvertNullToZero(this.bId.Value);
            model.bTitle = this.bTitle.Text;
            model.bClassID = (int)StringPlus.ConvertNullToZero(this.bClassID.SelectedValue);
            model.bKeywords = this.bKeywords.Text;
            model.bPic = this.bPic.Text;
            model.bIsTop = (this.bIsTop.Checked ? 1 : 0);
            model.bIsBest = (this.bIsBest.Checked ? 1 : 0);
            model.bIsPass = (this.bIsPass.Checked ? 1 : 0);
            model.bClick = (int)StringPlus.ConvertNullToZero(this.bClick.Text);
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
            this.bClassID.Items.Clear();
            PaducnSoft.DAL.ay_caseclass dal_class = new PaducnSoft.DAL.ay_caseclass();
            DataSet dsClass = dal_class.GetList("");
            this.bClassID.DataTextField = "bName";
            this.bClassID.DataValueField = "bId";
            this.bClassID.DataSource = dsClass;
            this.bClassID.DataBind();
            this.bClassID.Items.Insert(0, new ListItem("----选择分类----", "0"));

            PaducnSoft.Model.ay_case model = dal.GetModel(bId);
            this.bId.Value = model.bId.ToString();
            this.bTitle.Text = model.bTitle;
            this.bClassID.SelectedValue = model.bClassID.ToString();
            this.bKeywords.Text = model.bKeywords;
            this.bPic.Text = model.bPic;        
            this.bClick.Text = model.bClick.ToString();
            this.bContent.Text = Server.HtmlDecode(model.bContent);
            this.bIsTop.Checked = model.bIsTop.ToString() == "1" ? true : false;
            this.bIsBest.Checked = model.bIsBest.ToString() == "1" ? true : false;
            this.bIsPass.Checked = model.bIsPass.ToString() == "1" ? true : false;

        }
    }
}