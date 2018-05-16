using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using paducncms.Module;
using System.Text;

namespace paducncms.sy
{
    public partial class syslog : PaducnSoft.Module.BasePage
    {
        PaducnSoft.DAL.ay_syslog dal = new PaducnSoft.DAL.ay_syslog();      
        protected void Page_Load(object sender, EventArgs e)
        {           
            if (!IsPostBack)
            {
                this.dtpStartDate.Text = DateTime.Today.AddMonths(-1).ToString("yyyy-MM-dd");
                this.dtpEndDate.Text = DateTime.Today.ToString("yyyy-MM-dd");

                BindDataList();
            }
        }
        protected void MyPager_PageChanged(object src, EventArgs e)
        {
            BindDataList();

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindDataList();
        }      

      
        //函数       
        private void BindDataList()
        {
            DataSet ds = new DataSet();
            StringBuilder strWhere = new StringBuilder();
           
            if (this.txtKeywords.Text.Trim() != "")
            {
                strWhere.AppendFormat(" and a.bMessage like '%{0}%'", this.txtKeywords.Text.Trim());
            }
            if (!this.dtpStartDate.Text.Equals(""))
            {
                strWhere.Append(" and a.bAddTime>=#" + Convert.ToDateTime(this.dtpStartDate.Text).ToString("yyyy/MM/dd") + "#");
            }
            if (!this.dtpEndDate.Text.Equals(""))
            {
                strWhere.Append(" and a.bAddTime<=#" + Convert.ToDateTime(this.dtpEndDate.Text).AddDays(1).ToString("yyyy/MM/dd") + "#");
            }
            ds = dal.GetListByPage(strWhere.ToString(), "a.bId desc,a.bAddTime desc", (this.MyPager.CurrentPageIndex - 1) * this.MyPager.PageSize, this.MyPager.CurrentPageIndex * this.MyPager.PageSize);
            this.MyPager.RecordCount = dal.GetRecordCount(strWhere.ToString());
            this.rpList.DataSource = ds;
            this.rpList.DataBind();
        }

    }
}