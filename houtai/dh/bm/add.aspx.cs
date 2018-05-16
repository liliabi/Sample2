using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.dh.bm
{
    public partial class add : PaducnSoft.Module.BasePage
    {
        PaducnSoft.DAL.ay_menu dal = new PaducnSoft.DAL.ay_menu();
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
                strErr += "名称不能为空！\\n";
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
            PaducnSoft.Model.ay_menu model = new PaducnSoft.Model.ay_menu();
            model.bName = this.bName.Text;           
            model.bUrl = this.bUrl.Text;
            model.bParent = (int)StringPlus.ConvertNullToZero(this.bParent.SelectedValue);
            model.bOpenMode = this.bOpenMode.SelectedValue;
            model.bLocation = this.bLocation.Value;
            model.bIsShow = (int)StringPlus.ConvertNullToZero(this.bIsShow.SelectedValue);
            model.bOrder = (int)StringPlus.ConvertNullToZero(this.bOrder.Text);           
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
            this.bName.Text = "";
            PaducnSoft.DAL.ay_menu dal_class = new PaducnSoft.DAL.ay_menu();
            DataSet dsClass = dal_class.GetList(" and bLocation='-2'");
            this.bParent.DataTextField = "bName";
            this.bParent.DataValueField = "bId";
            this.bParent.DataSource = dsClass;
            this.bParent.DataBind();          
            this.bParent.Items.Insert(0, new ListItem("无（作为一级菜单）", "0"));
            this.bUrl.Text = "";
            this.bOpenMode.SelectedValue = "_self";
            this.bLocation.Value = "-2";
            this.bIsShow.SelectedValue = "1";
            this.bOrder.Text = StringPlus.NullToString(dal.GetRecordCount("") + 1);
            Page.SetFocus(this.bName);
        }  
    }
}