using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.case1.view
{
	public partial class _default : System.Web.UI.Page
	{
        public string bContent;
        public string bTitle;
        public string bPic;

		protected void Page_Load(object sender, EventArgs e)
		{
            try
            {
                this.ltHeader.Text = ayzhuangxiu.common.NavClass.LoadHeader();
                this.ltFooter.Text = ayzhuangxiu.common.NavClass.LoadFooter();
                Page.Title = ayzhuangxiu.common.NavClass.SiteName;
                System.Web.UI.HtmlControls.HtmlMeta metaKeyWords = new System.Web.UI.HtmlControls.HtmlMeta();
                System.Web.UI.HtmlControls.HtmlMeta metaDescription = new System.Web.UI.HtmlControls.HtmlMeta();
                metaKeyWords.Name = "Keywords";
                metaKeyWords.Content = ayzhuangxiu.common.NavClass.Keywords;
                metaDescription.Name = "description";
                metaDescription.Content = ayzhuangxiu.common.NavClass.Descriptions;
                Header.Controls.Add(metaKeyWords);
                Header.Controls.Add(metaDescription);
                BindDataList();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "onekey", "alert('" + ex.Message + "')", true);
            }
		}

        private void BindDataList()
        {
            string id = string.Empty;
            if (Request.QueryString.Count > 0)
            {
                id = PaducnSoft.Common.Utils.NullToString(Request.QueryString["id"]);
            }

            string sql = "select a.* from ay_case_v a where 1=1  ";
            if (id != "")
            {
                sql += " and (a.bId=" + id + ")";
            }
            //sql += " order by a.bAddTime desc,a.bId";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(sql).Tables[0];
            bContent = Server.HtmlDecode(dt.Rows[0]["bContent"].ToString());
            bTitle = dt.Rows[0]["bTitle"].ToString();
            bPic = dt.Rows[0]["bPic"].ToString();
        }
	}
}
