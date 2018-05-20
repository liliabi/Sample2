using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kuaizhuang;
using System.Data;
using System.Text;

namespace ayzhuangxiu.products
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ltHeader.Text = ayzhuangxiu.common.NavClass.LoadHeader();
                this.ltFooter.Text = ayzhuangxiu.common.NavClass.LoadFooter();
                LoadProdClass();
                BindDataList();
            }
        }
        protected void LoadProdClass()
        {
            StringBuilder result = new StringBuilder();
            result.Clear();
            string tsql = "select t.* from ay_prodclass t where bParent=1 or bParent in (select bId from ay_prodclass where bParent=1) order by t.bAddTime";
            DataSet ds = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql);
          
            DataRow[] drsRoot = ds.Tables[0].Select("bParent=1", "bOrder");
            foreach (DataRow drRoot in drsRoot)
            {          
                result.AppendLine("<li><a href=\"./?id=" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bId"]) + "\" title=\"" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bName"]) + "\">" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bName"]) + "</a>");
               
                DataRow[] drsChild = ds.Tables[0].Select("bParent=" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bId"]), "bOrder");
                if (drsChild.Length > 0)
                {
                    result.AppendLine("                <dl>");
                    foreach (DataRow drChild in drsChild)
                    {
                        result.AppendLine("                    <dt><a href=\"./?id=" + PaducnSoft.Common.StringPlus.NullToString(drChild["bId"]) + "\" title=\"" + PaducnSoft.Common.StringPlus.NullToString(drChild["bName"]) + "\">" + PaducnSoft.Common.StringPlus.NullToString(drChild["bName"]) + "</a></dt>");
                    }
                    result.AppendLine("                </dl>");
                }
                result.AppendLine("            </li>");
            }          
            this.ltProdClass.Text= result.ToString();
        }
        protected void MyPager_PageChanged(object src, EventArgs e)
        {
            BindDataList();

        }
        private void BindDataList()
        {
            string classid = string.Empty;
            if (Request.QueryString.Count > 0)
            {
                classid = PaducnSoft.Common.Utils.NullToString(Request.QueryString["id"]);
            }
            //classid=1 =>法恩莎瓷砖
            string sql = "select a.* from ay_products_v a where (a.bClassID in (select bId from ay_prodclass where bParent=1) or a.bParentID in (select bId from ay_prodclass where bParent=1)) ";
            if (classid != "")
            {
                sql += " and (a.bClassID=" + classid + " or a.bParentID=" + classid + ")";
            }
            sql += " order by a.bAddTime desc,a.bId";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(sql).Tables[0];
            this.MyPager.RecordCount = dt.Rows.Count;
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = dt.DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = this.MyPager.PageSize;
            pds.CurrentPageIndex = this.MyPager.CurrentPageIndex - 1;
            this.rpList.DataSource = pds;
            this.rpList.DataBind();
            dt = null;
        }
    }
}