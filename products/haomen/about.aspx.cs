using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.products.haomen
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ltHeader.Text = ayzhuangxiu.common.NavClass.LoadHeader();
            this.ltFooter.Text = ayzhuangxiu.common.NavClass.LoadFooter();
        }
    }
}