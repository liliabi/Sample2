using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

namespace Kuaizhuang
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pageTop index_top = new pageTop();
            Top.Text = index_top.initTop();

            pageNav contact_nav = new pageNav();
            Nav.Text = contact_nav.initNav();

            BannerImg.Text = initBannerImg();
            pageFooter index_footer = new pageFooter();
            Footer.Text = index_footer.initFooter("2002-2018 某某装饰公司 版权所有 ICP备XXXXXXXX号");

        }


        private string initBannerImg()
        {
            return loadingBannerImg().ToString();
        }

        private StringBuilder loadingBannerImg()
        {

            string tsql = "select t.bpic,t.burl from ay_flash t where 1=1 order by border";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql).Tables[0];

            StringBuilder sb = new StringBuilder();

            sb.AppendLine("<div class=\"bannerImg\">");
            sb.AppendLine("     <div class=\"pic_list swiper-container\" id=\"b04\">");
            sb.AppendLine("         <div class=\"swiper-wrapper\" style=\"height: 500px;\">");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.AppendLine("             <a class=\"swiper-slide banner-slide\" href=\"" + dt.Rows[i]["burl"] + "\" style=\"background: url(/upfile/" + dt.Rows[i]["bpic"] + "\"></a>");
            }
            sb.AppendLine("         </div>");
            sb.AppendLine("         <div class=\"swiper-pagination\">");
            sb.AppendLine("         </div>");
            sb.AppendLine("         <div class=\"swiper-button-prev swiper-button-white\" style=\"left: 20%\">");
            sb.AppendLine("         </div>");
            sb.AppendLine("         <div class=\"swiper-button-next swiper-button-white\" style=\"right: 20%\">");
            sb.AppendLine("         </div>");
            sb.AppendLine("     </div>");
            sb.AppendLine("</div>");
            return sb;
        }


    }
}
