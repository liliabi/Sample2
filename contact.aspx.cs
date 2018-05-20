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
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ltHeader.Text = ayzhuangxiu.common.NavClass.LoadHeader();
            this.ltFooter.Text = ayzhuangxiu.common.NavClass.LoadFooter();  

            //pageTop contact_top = new pageTop();
            //Top.Text = contact_top.initTop();

            //pageNav contact_nav = new pageNav();
            //Nav.Text = contact_nav.initNav();
            //loadingMenu();
            //loadingBanner();
            Bdy.Text = initBody();
            //pageFooter contact_footer = new pageFooter();
            //Footer.Text = contact_footer.initFooter("2002-2018 某某装饰公司 版权所有 ICP备XXXXXXXX号");
        }

        private string initBody()
        {
            return loadingBody().ToString();
        }

        private StringBuilder loadingBody()
        {

            string tsql = "select t.* from ay_system t where 1=1";
            DataSet ds = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql);
            DataRow dr = ds.Tables[0].Rows[0];

            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<div class=\"myzt\">");
            sb.AppendLine("                <div class=\"brand_banner\">");
            sb.AppendLine("                    <img alt=\"\" src=\"picture/contactimg.jpg\" />");
            sb.AppendLine("                </div>");
            sb.AppendLine("                <div class=\"conn_box\">");
            sb.AppendLine("                    <div class=\"conn_rr\">");
            sb.AppendLine("                        <div class=\"conn_code\">");
            sb.AppendLine("                            <div style=\"padding-left:15px;\"><span>");
            sb.AppendLine("                                微信公众号");
            sb.AppendLine("                            </span></div>");
            sb.AppendLine("                            <div><img src=\"picture/footer_erweima.jpg\" title=\"官方微信\" alt=\"官方微信\" style=\"width:200px;\" /></div>   ");
            sb.AppendLine("                        </div>                    ");
            sb.AppendLine("                    </div>");

            
            sb.AppendLine("                    <div class=\"conn_ll\">");
            sb.AppendLine("                        <h2>");
            sb.AppendLine("                            " + dr["bcompany"].ToString() + "");
            sb.AppendLine("                        </h2>");
            sb.AppendLine("                        <div class=\"conn_tel\">");
            sb.AppendLine("                            电话：" + dr["bphone"].ToString() + "");
            sb.AppendLine("                        </div>");
            sb.AppendLine("                        <div class=\"conn_email\">");
            sb.AppendLine("                            邮箱：" + dr["bemail"].ToString() + "");
            sb.AppendLine("                        </div>");
            sb.AppendLine("                        <div class=\"conn_fax\">");
            sb.AppendLine("                            客服QQ：" + dr["bcontact"].ToString() + "");
            sb.AppendLine("                        </div>");
            sb.AppendLine("                        <div class=\"conn_address\">");
            sb.AppendLine("                            地址：广东省xxxxxxx经济开发区xxxxx");
            sb.AppendLine("                        </div>");
            sb.AppendLine("                        ");
            sb.AppendLine("                    </div>");

            sb.AppendLine("                </div>");
            sb.AppendLine("            </div>");
            return sb;
        }
    }
}