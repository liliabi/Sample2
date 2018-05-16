using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paducncms.Module;
using System.Data;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;

namespace paducncms.admin
{
    public partial class _main : System.Web.UI.Page
    {
        PaducnSoft.DAL.ay_layout dal = new PaducnSoft.DAL.ay_layout();
        protected void Page_Load(object sender, EventArgs e)
        {          
            if (Request.QueryString["go"] == "o")
            {            
                Session.Abandon();
                Response.Write("<script>parent.window.location.href= 'default.aspx';</script> ");
                Response.End();
            }
            if (!IsPostBack)
            {
                dal.mainbody(this.MainFrame);
            }
        }

        
    }
}