using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu.products.faencc
{
    public partial class about : System.Web.UI.Page
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
        }
    }
}