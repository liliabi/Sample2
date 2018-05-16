using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.cp
{
    public partial class pic : System.Web.UI.Page
    {
        PaducnSoft.DAL.ay_prodimage dal = new PaducnSoft.DAL.ay_prodimage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.bId.Value = Request.Params["id"];
                BindDataList();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string strErr = "";
            if (this.bPic.Text.Trim().Length == 0)
            {
                strErr += "图片不能为空！\\n";
            }

            if (strErr != "")
            {
                MessageBox.Alert(this, strErr);
                return;
            }
            PaducnSoft.Model.ay_prodimage model = new PaducnSoft.Model.ay_prodimage();
            model.bProdID = (int)StringPlus.ConvertNullToInt(this.bId.Value);
            model.bPic = this.bPic.Text;
            model.bOrder = dal.GetRecordCount(" and a.bProdID=" + this.bId.Value) + 1;
            model.bIsDefault = 0;
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
        protected void rpList_DeleteButton(object sender, EventArgs e)
        {
            string id = ((LinkButton)sender).CommandArgument;
            bool result = dal.Delete(PaducnSoft.Common.StringPlus.ConvertNullToInt(id));
            if (result)
            {
                PaducnSoft.Common.MessageBox.Alert(this, "删除成功", true, "btnSearch");
            }
            else
            {
                PaducnSoft.Common.MessageBox.Alert(this, "删除失败", true, "btnSearch");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindDataList();
        }
        public void BindDataList()
        {
            DataSet ds = new DataSet();
            StringBuilder strWhere = new StringBuilder();
            strWhere.AppendFormat(" and a.bProdID={0}", this.bId.Value);
            ds = dal.GetList(strWhere.ToString());
            this.rpList.DataSource = ds;
            this.rpList.DataBind();
        }
    }
}