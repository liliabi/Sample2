using paducncms.Module;
using paducncms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace paducncms.admin
{
    public partial class left : System.Web.UI.Page
    {
        PaducnSoft.DAL.ay_layout dal = new PaducnSoft.DAL.ay_layout();
        protected void Page_Load(object sender, EventArgs e)
        {
            dal.leftmenu();
        }
    }
}