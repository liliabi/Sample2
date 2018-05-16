using paducncms.Module;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PaducnSoft.Module
{
    public class BasePage: System.Web.UI.Page, System.Web.SessionState.IRequiresSessionState
    {
        public string CurrentPath { get; set; }
        protected override void OnLoad(EventArgs e)
        {
            //if (!UserRights.CheckUserSession())
            //{
            //    Response.Write("<script>parent.window.location.href= '" + CurrentPath + "default.aspx';</script> ");
            //    Response.End();
            //}            
            base.OnLoad(e);
        } 
        
    }
}