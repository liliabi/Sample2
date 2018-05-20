using System;
using System.Data;
using System.Text;

namespace ayzhuangxiu.products.wfcom
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ltHeader.Text = ayzhuangxiu.common.NavClass.LoadHeader();
            this.ltFooter.Text = ayzhuangxiu.common.NavClass.LoadFooter();
            LoadProdClass();
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
            this.ltProdClass.Text = result.ToString();
        }
    }
}