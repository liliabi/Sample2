using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ayzhuangxiu
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
                this.ltHeader.Text = ayzhuangxiu.common.NavClass.LoadHeader();
                this.ltFooter.Text = ayzhuangxiu.common.NavClass.LoadFooter();
                Page.Title = ayzhuangxiu.common.NavClass.SiteName + "-" + ayzhuangxiu.common.NavClass.SiteTitle;
                System.Web.UI.HtmlControls.HtmlMeta metaKeyWords = new System.Web.UI.HtmlControls.HtmlMeta();
                System.Web.UI.HtmlControls.HtmlMeta metaDescription = new System.Web.UI.HtmlControls.HtmlMeta();
                metaKeyWords.Name = "Keywords";
                metaKeyWords.Content = ayzhuangxiu.common.NavClass.Keywords;
                metaDescription.Name = "description";
                metaDescription.Content = ayzhuangxiu.common.NavClass.Descriptions;
                Header.Controls.Add(metaKeyWords);
                Header.Controls.Add(metaDescription); 

                LoadBannerList();
                LoadNewsList();
                this.LoadAboutUS();
                this.ltprod1.Text = this.LoadProductList(1,"1","products/faencc/");
                this.ltprod2.Text = this.LoadProductList(2, "17", "products/faencn/");
                this.ltprod3.Text = this.LoadProductList(3, "26", "products/arrcn/");
                this.ltprod4.Text = this.LoadProductList(4, "35", "products/arrcom/");
                this.ltprod5.Text = this.LoadProductList(5, "50", "products/wfcom/");
                this.ltprod6.Text = this.LoadProductList(6, "71", "products/jycom/");
           
        }

        protected void LoadAboutUS()
        {
            StringBuilder result = new StringBuilder();
            result.Clear();
            string tsql = "select t.* from ay_page t where bId=1";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql).Tables[0];
            if(dt.Rows.Count>0)
            {
                DataRow dr = dt.Rows[0];
                result.AppendLine(PaducnSoft.Common.Utils.CutString(PaducnSoft.Common.Utils.DeleteHtml(PaducnSoft.Common.Utils.HtmlDecode(PaducnSoft.Common.StringPlus.NullToString(dr["bContent"]))), 500));
              
            }
            this.ltaboutus.Text = result.ToString();
        }
        private void LoadBannerList()
        {           
            StringBuilder result = new StringBuilder();
            result.Clear();
            string tsql = "select t.bpic,t.burl from ay_flash t where 1=1 order by border";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql).Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                result.AppendLine("<li><img alt=\"\" src=\"upfile/" + PaducnSoft.Common.StringPlus.NullToString(dr["bPic"]) + "\" class=\"banner-slide\" width=\"100%\" height=\"100%\" /></li>");
            }
            this.ltBannerList.Text = result.ToString();
        }
        protected void LoadNewsList()
        {
            StringBuilder result = new StringBuilder();
            result.Clear();
            string tsql = "select top 4 t.* from ay_news_v t order by t.bAddTime desc,t.bId desc";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql).Tables[0];
            for(int r=0;r<dt.Rows.Count;r++)
            {               
                DataRow dr=dt.Rows[r];
                result.AppendLine("<div class=\"li" + ((r+1)%2==0?2:1) + "\">");
                    result.AppendLine("    <div class=\"num\">" + (r+1).ToString().PadLeft(2,'0') + "</div>");
                    result.AppendLine("    <div class=\"newsright\">");
                    result.AppendLine("        <h2><a target=\"_blank\" href=\"news/view/?id=" + PaducnSoft.Common.StringPlus.NullToString(dr["bId"])  + "\">" + PaducnSoft.Common.StringPlus.NullToString(dr["bTitle"]) + "</a></h2>");
                    result.AppendLine("        <p>" + PaducnSoft.Common.Utils.CutString(PaducnSoft.Common.Utils.DeleteHtml(PaducnSoft.Common.Utils.HtmlDecode(PaducnSoft.Common.StringPlus.NullToString(dr["bContent"]))), 100) + "</p>");
                    result.AppendLine("    </div>");
                    result.AppendLine("</div>");
            }
            this.ltNewsList.Text = result.ToString();
        }
        private string LoadProductList(int tabid,string classid,string url)
        {
            StringBuilder result = new StringBuilder();
            result.Clear();
            string tsql = "select top 6 t.* from ay_products_v t where (t.bClassID=" + classid + " or t.bParentID=" + classid + ") order by t.bAddTime desc,t.bId desc";
            DataTable dt = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql).Tables[0];
            result.AppendLine("<div class=\"blk_1\">");
            result.AppendLine("    <a class=\"LeftBotton\" onmousedown=\"ISL_GoUp_" + tabid + "()\" onmouseup=\"ISL_StopUp_" + tabid + "()\" onmouseout=\"ISL_StopUp_" + tabid + "()\" href=\"javascript:void(0);\" target=\"_self\"></a>");
            result.AppendLine("    <div class=\"pcont\" id=\"ISL_Cont_" + tabid + "\">");
            result.AppendLine("        <div class=\"ScrCont\">");
            result.AppendLine("            <div id=\"List" + (tabid*2-1) + "_1\">");
            result.AppendLine("                 <!-- piclist begin -->");  
            foreach (DataRow dr in dt.Rows)
            {
                result.AppendLine("<a class=\"pl\" href=\"" + url + "\"><img src=\"upfile/" + PaducnSoft.Common.StringPlus.NullToString(dr["bPic"]) + "\" width=\"220\" height=\"269\" />" + PaducnSoft.Common.StringPlus.NullToString(dr["bTitle"]) + "</a>");
            }
             result.AppendLine("   <!-- piclist end -->");
             result.AppendLine("           </div>");
             result.AppendLine("           <div id=\"List" + tabid*2 + "_1\"></div>");
             result.AppendLine("       </div>");
             result.AppendLine("   </div>");
             result.AppendLine("   <a class=\"RightBotton\" onmousedown=\"ISL_GoDown_" + tabid + "()\" onmouseup=\"ISL_StopDown_" + tabid + "()\" onmouseout=\"ISL_StopDown_" + tabid + "()\" href=\"javascript:void(0);\" target=\"_self\"></a>");
             result.AppendLine("</div>");
            return result.ToString();
        }
    }
}
