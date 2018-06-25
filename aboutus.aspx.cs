using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kuaizhuang
{
    public partial class aboutus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
            LoadAboutUS();
        }

        protected void LoadAboutUS()
        {
            StringBuilder result = new StringBuilder();
            result.Clear();
            string tsql = "select t.* from ay_page t where bId=1";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                result.AppendLine(PaducnSoft.Common.Utils.HtmlDecode(PaducnSoft.Common.StringPlus.NullToString(dr["bContent"])));

            }
            this.ltaboutus.Text = result.ToString();
        }
    }
}