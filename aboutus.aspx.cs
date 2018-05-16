using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kuaizhuang
{
    public partial class aboutus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pageTop contact_top = new pageTop();
            Top.Text = contact_top.initTop();

            pageNav contact_nav = new pageNav();
            Nav.Text = contact_nav.initNav();
            //loadingMenu();
            //loadingBanner();
            //loadingBody();
            pageFooter contact_footer = new pageFooter();
            Footer.Text = contact_footer.initFooter("2002-2018 某某装饰公司 版权所有 ICP备XXXXXXXX号");
        }
    }
}