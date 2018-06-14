using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace ayzhuangxiu.common
{
    public class NavClass
    {
        public static string SiteName = string.Empty;
        public static string SiteTitle = string.Empty;
        public static string Keywords = string.Empty;
        public static string Descriptions = string.Empty;
        public static string LoadHeader()
        {
            StringBuilder result=new StringBuilder ();
            result.Clear();
            string tsql = "select t.* from ay_menu t where bisshow=1  order by border";
            DataSet ds = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql);

            result.AppendLine("<div class=\"navbg\">");
            result.AppendLine("    <div class=\"col960\">");
            result.AppendLine("        <div class=\"logo\">");        
            result.AppendLine("                <img src=\"/images/logo.png\" />");
            result.AppendLine("        </div>");
            result.AppendLine("        <ul id=\"navul\" class=\"cl\">");
            DataRow[] drsRoot = ds.Tables[0].Select("bParent=0", "bOrder");
            foreach (DataRow drRoot in drsRoot)
            {
                if (PaducnSoft.Common.StringPlus.NullToString(drRoot["bUrl"]) != "")
                {
                    result.AppendLine("            <li><a href=\"" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bUrl"]) + "\" title=\"" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bName"]) + "\"><span class=\"cn\">" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bName"]) + "</span><span class=\"en\">" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bSubName"]) + "</span></a>");
                }
                else
                {
                    result.AppendLine("            <li><a href=\"javascript:void(0);\" title=\"" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bName"]) + "\"><span class=\"cn\">" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bName"]) + "</span><span class=\"en\">" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bSubName"]) + "</span></a>");
                }
                DataRow[] drsChild = ds.Tables[0].Select("bParent=" + PaducnSoft.Common.StringPlus.NullToString(drRoot["bId"]), "bOrder");
                if (drsChild.Length > 0)
                {
                    result.AppendLine("                <ul>");
                    foreach (DataRow drChild in drsChild)
                    {
                        result.AppendLine("                    <li><a target=\"" + PaducnSoft.Common.StringPlus.NullToString(drChild["bOpenMode"]) + "\" href=\"" + PaducnSoft.Common.StringPlus.NullToString(drChild["bUrl"]) + "\" title=\"" + PaducnSoft.Common.StringPlus.NullToString(drChild["bName"]) + "\">" + PaducnSoft.Common.StringPlus.NullToString(drChild["bName"]) + "</a></li>");
                    }                  
                    result.AppendLine("                </ul>");
                }
                result.AppendLine("            </li>");
            }          
            result.AppendLine("        </ul>");
            result.AppendLine("    </div>");
            result.AppendLine("</div>");
            //result.AppendLine("<script type=\"text/javascript\">");
            //result.AppendLine("    $(\".navbg\").capacityFixed();");
            //result.AppendLine("</script>");
            return result.ToString();
        }
        public static string LoadFooter()
        {
            StringBuilder result=new StringBuilder ();
            result.Clear();
            string _title = string.Empty;
            string _sitename = string.Empty;
            string _company = string.Empty;
            string _miibeian = string.Empty;
            string tsql = "select t.* from ay_system t";
            DataSet ds = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                _title = PaducnSoft.Common.StringPlus.NullToString(ds.Tables[0].Rows[0]["bTitle"]);
                _sitename = PaducnSoft.Common.StringPlus.NullToString(ds.Tables[0].Rows[0]["bName"]);
                _company = PaducnSoft.Common.StringPlus.NullToString(ds.Tables[0].Rows[0]["bCompany"]);
                _miibeian = PaducnSoft.Common.StringPlus.NullToString(ds.Tables[0].Rows[0]["bMiibeian"]);
                SiteName = _sitename;
                SiteTitle = _title;
                Keywords = PaducnSoft.Common.StringPlus.NullToString(ds.Tables[0].Rows[0]["bKeywords"]);
                Descriptions = PaducnSoft.Common.StringPlus.NullToString(ds.Tables[0].Rows[0]["bDescriptions"]); 

            }

            result.AppendLine("<div id=\"footer\">");
            result.AppendLine("    <div class=\"footer\">");
            result.AppendLine("        <div class=\"footerleft\">");
            result.AppendLine("            <img src=\"/images/logob.png\" /></div>");
            result.AppendLine("        <div class=\"footercenter\">");
            result.AppendLine("            <img src=\"/images/wx.png\" width=\"90\" height=\"90\" /></div>");
            result.AppendLine("        <div class=\"footerright\">");
            result.AppendLine("            <p>" + _sitename + "</p>");
            result.AppendLine("            <span>" + _title + "</span>");
            result.AppendLine("            <div class=\"copyRight\">Copyright &copy; " + DateTime.Today.ToString("yyyy") + " " + _company + " 版权所有  " + _miibeian + "</div>");
            result.AppendLine("        </div>");
            result.AppendLine("    </div>");
            result.AppendLine("</div>");
            return result.ToString();
        }
    }
}