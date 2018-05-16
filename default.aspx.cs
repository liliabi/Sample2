using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tsql = "select t.* from ay_menu t";
            DataSet ds = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql);
            StringBuilder html = new StringBuilder();
            html.AppendLine(@"<table class=""tbl"">");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                html.AppendLine(@"<tr>");
                for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
                {
                    html.AppendLine(@"<td>");
                    html.AppendLine(dr[i].ToString());
                    html.AppendLine(@"</td>");
                }
                html.AppendLine(@"</tr>");
            }
            html.AppendLine(@"</table>");
            this.Literal1.Text = html.ToString();
        }
    }
}