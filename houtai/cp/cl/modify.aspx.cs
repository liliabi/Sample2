using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.cp.cl
{
    public partial class modify : PaducnSoft.Module.BasePage
    {
        PaducnSoft.DAL.ay_prodclass dal = new PaducnSoft.DAL.ay_prodclass();
        protected void Page_PreInit(object sender, EventArgs e)
        {
            base.CurrentPath = "../../";
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
            PaducnSoft.Model.ay_prodclass model = new PaducnSoft.Model.ay_prodclass();
            model.bId = (int)StringPlus.ConvertNullToZero(this.bId.Value);
            model.bName = this.bName.Text;
            model.bOrder = (int)StringPlus.ConvertNullToZero(this.bOrder.Text);
            model.bRemark = this.bRemark.Text;
            model.bAddTime = DateTime.Now;
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
                MessageBox.Alert(this, "更新成功！");
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
            DataSet ds = dal.GetList("");
            DropDownListHelp ddlHelper = new DropDownListHelp();
            this.bParent.Items.Clear();
            ddlHelper.createDropDownTree(ds.Tables[0], "bParent", "0", "bId", "bName", "bId", this.bParent);
            this.bParent.Items.Insert(0, new ListItem("----作为一级栏目----", "0"));

            PaducnSoft.Model.ay_prodclass model = dal.GetModel(bId);
            this.bId.Value = model.bId.ToString();
            this.bName.Text = model.bName;
            this.bParent.SelectedValue = model.bParent.ToString();
            this.bOrder.Text = model.bOrder.ToString();
            this.bRemark.Text = model.bRemark;
        }
    }
}