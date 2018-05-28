using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.news
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ltHeader.Text = ayzhuangxiu.common.NavClass.LoadHeader();
            this.ltFooter.Text = ayzhuangxiu.common.NavClass.LoadFooter();
            BindDataList();
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

            string sql = "select a.* from ay_news_v a where 1=1  ";
            if (classid != "")
            {
                sql += " and (a.bClassID=" + classid + ")";
            }
            sql += " order by a.bAddTime desc,a.bId";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(sql).Tables[0];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                dt.Rows[i]["bContent"] = Server.HtmlDecode(dt.Rows[i]["bContent"].ToString());
            }
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
