using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paducncms.Module;
using System.Data;
using System.Text;
using System.IO;

namespace paducncms.admin
{
    public partial class mainpage : System.Web.UI.Page
    {
        string msql = "";
        public string strLabelList = string.Empty;
        public string strDataList = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Expires = 0;
            Response.Cache.SetNoStore();
            Response.AppendHeader("Pragma", "no-cache");
            if (!UserRights.CheckUserSession())
            {
                Response.Write("<script language=JavaScript>;parent.location.href='default.aspx';</script>");
                Response.End();
            }

            if (!Page.IsPostBack)            
            {                            
                this.lbLogin.Text =PaducnSoft.Common.StringPlus.NullToString( Session["pdcms_lasttime"]);

                TimeSpan stime = DateTime.Now.TimeOfDay;
                serverip.Text = Request.ServerVariables["LOCAL_ADDR"];
                server_name.Text = Request.ServerVariables["http_host"];
                serversoft.Text = Request.ServerVariables["server_software"];
                //servernet.Text = Environment.Version.Major + "." + Environment.Version.Minor + "." + Environment.Version.Build + "." + Environment.Version.Revision;
                //serverout.Text = Server.ScriptTimeout.ToString();
                //servertime.Text = DateTime.Now.ToString();
                //serverarea.Text = (DateTime.Now - DateTime.UtcNow).TotalHours > 0 ? "+" + (DateTime.Now - DateTime.UtcNow).TotalHours.ToString() : (DateTime.Now - DateTime.UtcNow).TotalHours.ToString();
                //try
                //{
                //    aspnetn.Text = (System.Diagnostics.Process.GetCurrentProcess().WorkingSet / 1048576).ToString("N2") + " MB";
                //}
                //catch
                //{
                //    aspnetn.Text = "系统拒绝提供。";
                //}
                //try
                //{
                //    aspnetcpu.Text = (System.Diagnostics.Process.GetCurrentProcess().TotalProcessorTime).TotalSeconds.ToString("N0") + " 秒";
                //}
                //catch
                //{
                //    aspnetcpu.Text = "系统拒绝提供。";
                //}
                serverstart.Text = (System.Environment.TickCount / 3600000).ToString("N2");
                //try
                //{
                //    prstart.Text = System.Diagnostics.Process.GetCurrentProcess().StartTime.ToString();
                //}
                //catch
                //{
                //    prstart.Text = "系统拒绝提供。";
                //}
                //cpuc.Text = Environment.GetEnvironmentVariable("NUMBER_OF_PROCESSORS");
                //cputype.Text = Environment.GetEnvironmentVariable("PROCESSOR_IDENTIFIER");

                servers.Text = Session.Contents.Count.ToString();
                servera.Text = Application.Contents.Count.ToString();

                DataSet objDataSet = new DataSet();
                if (File.Exists(HttpContext.Current.Server.MapPath("/config.xml")))
                {
                    objDataSet.ReadXml(HttpContext.Current.Server.MapPath("/config.xml"));
                    if (objDataSet.Tables[0].Rows.Count > 0)
                    {
                        this.serveraccess.Text = objDataSet.Tables[0].Rows[0]["v0"].ToString();                      
                    }
                    objDataSet = null;
                }

            }           
        }
       
          

    }
}