using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kuaizhuang;
using System.Text;
using System.Data;

namespace ayzhuangxiu.products.faencn
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ltHeader.Text = ayzhuangxiu.common.NavClass.LoadHeader();
            this.ltFooter.Text = ayzhuangxiu.common.NavClass.LoadFooter();
            //pageTop contact_top = new pageTop();
            //Top.Text = contact_top.initTop();

            //pageNav contact_nav = new pageNav();
            //Nav.Text = contact_nav.initNav();
            ////loadingMenu();
            ////loadingBanner();
            ////loadingBody();
            //pageFooter contact_footer = new pageFooter();
            //Footer.Text = contact_footer.initFooter("2002-2018 某某装饰公司 版权所有 ICP备XXXXXXXX号");
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