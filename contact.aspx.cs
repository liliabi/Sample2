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
            Page.Title = ayzhuangxiu.common.NavClass.SiteName;
            System.Web.UI.HtmlControls.HtmlMeta metaKeyWords = new System.Web.UI.HtmlControls.HtmlMeta();
            System.Web.UI.HtmlControls.HtmlMeta metaDescription = new System.Web.UI.HtmlControls.HtmlMeta();
            metaKeyWords.Name = "Keywords";
            metaKeyWords.Content = ayzhuangxiu.common.NavClass.Keywords;
            metaDescription.Name = "description";
            metaDescription.Content = ayzhuangxiu.common.NavClass.Descriptions;
            Header.Controls.Add(metaKeyWords);
            Header.Controls.Add(metaDescription);        
            Bdy.Text = initBody();
         
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
            sb.AppendLine("                            <div><img src=\"images/wx.png\" title=\"官方微信\" alt=\"官方微信\" style=\"width:200px;\" /></div>   ");
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
            sb.AppendLine("                            地址：" + dr["baddress"].ToString() + "");
            sb.AppendLine("                        </div>");
            sb.AppendLine("                        ");
            sb.AppendLine("                    </div>");

            sb.AppendLine("                </div>");
            sb.AppendLine("            </div>");
            return sb;
        }
    }
}
