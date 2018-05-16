using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.IO;

public partial class inc_ay_upload : System.Web.UI.Page
{
    string fd = string.Empty;
    string db = string.Empty;  
    paducncms.Module.UpLoad myupload;

    protected void Page_Load(object sender, EventArgs e)
    {
        myupload = new paducncms.Module.UpLoad(this);
        fd =Request.QueryString["fd"]; 
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {                        
        string filename;
        bool rec = myupload.FileSaveAs(this.file1.PostedFile, 1, out filename);
        if (rec)
        {
            Response.Write("<script type='text/javascript'>");
            Response.Write("parent.document.getElementById('" + fd + "').value='" + filename.Replace("../", "") + "';");           	       
            Response.Write("</script>");
        }
    }
}

