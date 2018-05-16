using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.houtai.sy.adm
{
    public partial class _default : PaducnSoft.Module.BasePage
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
                BindDataList();
            }
        }

        protected void ddlbClassID_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDataList();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindDataList();
        }

        protected void chkSelectedAll_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < this.rpList.Items.Count; i++)
            {
                CheckBox CheBox = (CheckBox)rpList.Items[i].FindControl("chkbId");
                CheBox.Checked = this.chkSelectedAll.Checked;
            }
        }

        protected void MyPager_PageChanged(object sender, EventArgs e)
        {
            BindDataList();
        }

        protected void btnBatchDeleted_Click(object sender, EventArgs e)
        {
            string id_list = "";
            for (int i = 0; i < this.rpList.Items.Count; i++)
            {
                CheckBox CheBox = (CheckBox)this.rpList.Items[i].FindControl("chkbId");

                if (CheBox.Checked)
                {
                    HiddenField hf = (HiddenField)this.rpList.Items[i].FindControl("bId");
                    id_list = id_list + hf.Value.ToString().Trim() + ",";
                }
            }
            id_list = id_list.Length > 0 ? id_list.Substring(0, id_list.Length - 1) : string.Empty;
            if (id_list == "")
            {
                PaducnSoft.Common.MessageBox.Alert(this, "没有任何选择!");
                return;
            }
            bool result = dal.DeleteList(id_list);
            if (result)
            {
                PaducnSoft.Common.MessageBox.Alert(this, "批量删除成功", true, "btnSearch");
            }
            else
            {
                PaducnSoft.Common.MessageBox.Alert(this, "批量删除失败", true, "btnSearch");
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
        public void BindDataList()
        {
            DataSet ds = new DataSet();
            StringBuilder strWhere = new StringBuilder();
            if (this.txtKeywords.Text.Trim() != "")
            {
                strWhere.AppendFormat(" and a.bName like '%{0}%'", this.txtKeywords.Text.Trim());
            }
            ds = dal.GetListByPage(strWhere.ToString(), "a.bId desc,a.bAddTime desc", (this.MyPager.CurrentPageIndex - 1) * this.MyPager.PageSize, this.MyPager.CurrentPageIndex * this.MyPager.PageSize);
            this.MyPager.RecordCount = dal.GetRecordCount(strWhere.ToString());
            this.rpList.DataSource = ds;
            this.rpList.DataBind();
        }
    }
}