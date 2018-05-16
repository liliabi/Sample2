using PaducnSoft.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace Kuaizhuang
{
    public class pageFooter
    {
        public string initFooter(string copyright1)
        {
            string copyright = string.Empty;
            string tsql = "select t.* from ay_system t";
            DataSet ds = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                copyright = "Copyright &copy;" + DateTime.Today.ToString("yyyy") + "  " + StringPlus.NullToString(ds.Tables[0].Rows[0]["bName"]) + "  版权所有  " + StringPlus.NullToString(ds.Tables[0].Rows[0]["bMiibeian"]);
            }
            return loadingFooter(copyright).ToString();
        }
        private StringBuilder loadingFooter(string copyright)
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<div class=\"shj-footer\" style=\"margin-top: 0px;\">");
            sb.AppendLine("     <div class=\"shj-footer-top\">");
            sb.AppendLine("         <div class=\"shj-footer-top-center\">");
            sb.AppendLine("             <div class=\"shj-footer-help-link\">");
            sb.AppendLine("                 <div class=\"shj-footer-help-link-modal\">");
            sb.AppendLine("                     <a href=\"/about/\">公司简介");
            sb.AppendLine("                     </a>");
            sb.AppendLine("                     <a href=\"/about/\" target=\"_blank\">关于我们");
            sb.AppendLine("                    </a>");
            sb.AppendLine("                   <a href=\"/about/02/\" target=\"_blank\">最新动态");
            sb.AppendLine("                    </a>");
            sb.AppendLine("                   <a href=\"/about/03/\" target=\"_blank\">企业文化");
            sb.AppendLine("                    </a>");
            sb.AppendLine("               </div>");
            sb.AppendLine("               <div class=\"shj-footer-help-link-modal\">");
            sb.AppendLine("                    <a href=\"/case/\">案例作品");
            sb.AppendLine("                    </a>");
            sb.AppendLine("                   <a href=\"/case/01/\" target=\"_blank\">精品案例");
            sb.AppendLine("                   </a>");
            sb.AppendLine("                   <a href=\"/case/02/\" target=\"_blank\">全景案例");
            sb.AppendLine("                   </a>");
            sb.AppendLine("               </div>");
            sb.AppendLine("              <div class=\"shj-footer-help-link-modal\">");
            sb.AppendLine("                  <a href=\"/sggy/\">施工工艺");
            sb.AppendLine("                  </a>");
            sb.AppendLine("                  <a href=\"/sggy/03/\" target=\"_blank\">严苛验收");
            sb.AppendLine("                  </a>");
            sb.AppendLine("                   <a href=\"/sggy/01/\" target=\"_blank\">精湛工艺");
            sb.AppendLine("                   </a>");
            sb.AppendLine("              </div>");
            sb.AppendLine("              <div class=\"shj-footer-top-center-tel\">");
            sb.AppendLine("                  <img src=\"picture/footer_bottom_1.png\" />");
            sb.AppendLine("                  <p style=\"font-weight: bold; font-size: 30px; color: #fff; margin: 10px auto; text-align: center;\">");
            sb.AppendLine("                      400-7777-8888");
            sb.AppendLine("                  </p>");
            sb.AppendLine("                  <p style=\"font-weight: bold; font-size: 15px; color: #8f8f8f; text-align: center;\">");
            sb.AppendLine("                      全国工程投诉电话:400-7777-8888");
            sb.AppendLine("                 </p>");
            sb.AppendLine("                </div>");
            sb.AppendLine("          </div>");
            sb.AppendLine("     </div>");
            sb.AppendLine("  </div>");
            sb.AppendLine(" <div class=\"shj-footer-bottom\" id=\"ipgbpgzfzb\">");
            sb.AppendLine("     <div class=\"shj-footer-bottom-center\">");
            sb.AppendLine("          <div class=\"shj-footer-bottom-info\">");
            sb.AppendLine("              <p>");        
            sb.AppendLine("" + copyright + "");
            sb.AppendLine("               </p>");
            sb.AppendLine("           </div>");
            sb.AppendLine("       </div>");
            sb.AppendLine("   </div>");
            sb.AppendLine(" </div>");
            return sb;
        }
    }
}