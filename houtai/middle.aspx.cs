using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aypingche2.houtai2
{
    public partial class middle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ltBody.Text = LoadDataList();
        }
        protected string LoadDataList()
        {
            string strHtmlString = string.Empty;            
            strHtmlString = @"<script language=""JavaScript"" type=""text/javascript"">";
            strHtmlString += @"    function framebutton() {";
            strHtmlString += @"        var frameswitch = document.getElementById('frameswitch');";
            strHtmlString += @"        if (parent.document.getElementById('BodyFrame').cols != ""0,7,*"") {";
            strHtmlString += @"            parent.document.getElementById('BodyFrame').cols = ""0,7,*"";";
            strHtmlString += @"            frameswitch.className = ""switchon"";";
            strHtmlString += @"        }";
            strHtmlString += @"        else {";
            strHtmlString += @"            parent.document.getElementById('BodyFrame').cols = ""205,7,*"";";
            strHtmlString += @"            frameswitch.className = ""switchoff"";";
            strHtmlString += @"        }";
            strHtmlString += @"    }";
            strHtmlString += @"</script>";
            strHtmlString += @"<table id=""switchbar"" border=""0"" style=""background:#E9E8EB;"" cellpadding=""0"" cellspacing=""0"" width=""100%"" height=""100%"">";
            strHtmlString += @"    <tr>";
            strHtmlString += @"        <td onclick=""framebutton()"">";
            strHtmlString += @"            <img id=""frameswitch"" class=""switchoff"" border=""0"" width=""7"" height=""60"" />";
            strHtmlString += @"        </td>";
            strHtmlString += @"    </tr>";
            strHtmlString += @"</table>";
            return (strHtmlString);
        }
    }
}