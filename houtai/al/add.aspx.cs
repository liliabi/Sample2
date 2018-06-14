using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.al
{
    public partial class add : PaducnSoft.Module.BasePage
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
            model.bTitle = this.bTitle.Text;
            model.bClassID = (int)StringPlus.ConvertNullToZero(this.bClassID.SelectedValue);
            model.bTypeID = (int)StringPlus.ConvertNullToZero(this.bTypeID.SelectedValue);
            model.bUrl = this.bUrl.Text;
            model.bKeywords = this.bKeywords.Text;
            model.bPic = this.bPic.Text;
            model.bIsTop = (this.bIsTop.Checked?1:0);
            model.bIsBest = (this.bIsBest.Checked ? 1 : 0);
            model.bIsPass = (this.bIsPass.Checked ? 1 : 0);
            model.bClick = (int)StringPlus.ConvertNullToZero(this.bClick.Text);
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
            this.bClassID.Items.Clear();
            PaducnSoft.DAL.ay_caseclass dal_class = new PaducnSoft.DAL.ay_caseclass();
            DataSet dsClass = dal_class.GetList("");
            this.bClassID.DataTextField = "bName";
            this.bClassID.DataValueField = "bId";
            this.bClassID.DataSource = dsClass;
            this.bClassID.DataBind();
            this.bClassID.Items.Insert(0, new ListItem("----选择分类----", "0"));
            this.bTypeID.SelectedValue = "0";
            this.bUrl.Text = "";
            this.bKeywords.Text = "";
            this.bPic.Text = "";
            this.bIsTop.Checked = false;
            this.bIsBest.Checked = false;
            this.bIsPass.Checked = true;
            this.bClick.Text = "0";
            this.bContent.Text = "";
            ScriptManager1.SetFocus(this.bTitle);
        }

        protected void bTypeID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.bTypeID.SelectedValue == "0")
            {
                this.pnlTypeID0.Visible = false;
                this.pnlTypeID1.Visible = true;
            }
            else
            {
                this.pnlTypeID0.Visible = true;
                this.pnlTypeID1.Visible = false;
            }
        }  
    }
}