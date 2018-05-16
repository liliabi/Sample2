using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace Kuaizhuang
{
    public class pageTop
    {
        public string logo_pic { get; set; } //picture/logo.png
        public string title_text { get; set; }//别墅定制家装
        public string subtitle_text { get; set; }//打/造/精/品/别/墅/家/装
        public string logo_pic_right_tel { get; set; }//picture/phone-number.png
        public string logo_pic_right_tel_first { get; set; }//400-XXXX-XXXX
        public string logo_pic_right_tel_second { get; set; }//售后热线：0769-XXXXXXX
        public string logo_pic_right_erweima { get; set; }//picture/erweima_header.png
        
        public string initTop()
        {
            pageTop index_top = new pageTop();
            string tsql = "select t.* from ay_system t";
            DataSet ds = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                index_top.logo_pic = "/upfile/" + StringPlus.NullToString(ds.Tables[0].Rows[0]["bPic"]);                
            }

            index_top.title_text = "别墅定制家装";
            index_top.subtitle_text = "打/造/精/品/别/墅/家/装";
            index_top.logo_pic_right_tel = "picture/phone-number.png";
            index_top.logo_pic_right_tel_first = "400-XXXX-XXXX";
            index_top.logo_pic_right_tel_second = "售后热线：0769-XXXXXXX";
            index_top.logo_pic_right_erweima = "picture/erweima_header.png";
            return loadingTop(index_top).ToString();
        }

        private StringBuilder loadingTop(pageTop index_top)
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<div id=\"index_top\">");
            sb.AppendLine("<div class=\"index_logo\">");
            sb.AppendLine("<div class=\"logo_pic fl\">");
            sb.AppendLine(" <a href=\"/\">");
            sb.AppendLine("    <img src=\"" + index_top.logo_pic + "\" />");
            sb.AppendLine("   </a>");
            sb.AppendLine("  </div>");
            sb.AppendLine("   <div class=\"logo_info\">");
            sb.AppendLine("        <h3>" + index_top.title_text);
            sb.AppendLine("         </h3>");
            sb.AppendLine("         <p>");
            sb.AppendLine("           " + index_top.subtitle_text);
            sb.AppendLine("        </p>");
            sb.AppendLine("    </div>");
            sb.AppendLine("     <div class=\"logo_pic_right_tel\">");
            sb.AppendLine("       <img src=\"" + index_top.logo_pic_right_tel + "\" />");
            sb.AppendLine("       <p class=\"logo_pic_right_tel_first\">");
            sb.AppendLine("          " + index_top.logo_pic_right_tel_first + "");
            sb.AppendLine("      </p>");
            sb.AppendLine("     <p class=\"logo_pic_right_tel_second\">");
            sb.AppendLine("          " + index_top.logo_pic_right_tel_second + "");
            sb.AppendLine("      </p>");
            sb.AppendLine("   </div>");
            sb.AppendLine("   <div class=\"logo_pic_right_erweima\">");
            sb.AppendLine("      <img src=\"" + index_top.logo_pic_right_erweima + "\" />");
            sb.AppendLine("  </div>");
            sb.AppendLine("  </div>");
            sb.AppendLine("  </div>");
            return sb;
        }
    }
}
