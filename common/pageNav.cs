using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace Kuaizhuang
{
    public class pageNav
    {
        public string initNav()
        {
            return loadingNav().ToString();
        }

        private StringBuilder loadingNav()
        {

            string tsql = "select t.bname,t.burl from ay_menu t where bisshow=1 and bparent=0 order by border";
            DataSet ds = PaducnSoft.DBUtility.DbHelperOleDb.Query(tsql);


            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<div id=\"index_nav\">");
            sb.AppendLine("                <div class='menu_nav'>");
            sb.AppendLine("                    <div class='menu_content'>");
            sb.AppendLine("                        <ul class=\"nav\" style='width: auto; margin: auto;'>");
            sb.AppendLine("                            <li class=\"nav-green-title\">产品中心");
            sb.AppendLine("                                <span class=\"iconfont\" style='-moz-transform: rotate(90deg); -webkit-transform: rotate(90deg); transform: rotate(90deg); display: inline-block; margin-left: 10px; font-weight: normal; font-size: 13px;'>");
            sb.AppendLine("                                </span>");
            sb.AppendLine("                            </li>");

            if (ds.Tables[0].Rows.Count == 0)
            {
                sb.AppendLine("                            <li>");
                sb.AppendLine("                                <h3>");
                sb.AppendLine("                                      <a href=\"index.aspx\">首页");    
                sb.AppendLine("                                    </a>");
                sb.AppendLine("                                </h3>");
                sb.AppendLine("                            </li>");  
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    sb.AppendLine("                            <li>");
                    sb.AppendLine("                                <h3>");
                    sb.AppendLine("                                 <a href=\"" + dr["burl"].ToString() + "\">" + dr["bname"].ToString() + "");
                    sb.AppendLine("                                    </a>");
                    sb.AppendLine("                                </h3>");
                    sb.AppendLine("                            </li>");
                }
            }

            sb.AppendLine("                        </ul>");
            sb.AppendLine("                    </div>");
            sb.AppendLine("                </div>");
            sb.AppendLine("            </div>");

            sb.AppendLine("<div class=\"index_content\">");
            sb.AppendLine("                <!--banner左边信息栏-->");
            sb.AppendLine("                <div class=\"left_info\" style=\"display: none;\">");
            sb.AppendLine("                    <ul class=\"li_hover\">");
            sb.AppendLine("                        <!-- 关联的产品目录二级分类 -->");
            sb.AppendLine("                        <!-- 关联的产品目录 -->");
            sb.AppendLine("                        <li data-submenu=\"0\" class=\"border_B\">");
            sb.AppendLine("                            <div class=\"border_gray\">");
            sb.AppendLine("                                <div>");
            sb.AppendLine("                                    <span class=\"before\">");
            sb.AppendLine("                                        <img src=\"picture/c61d66407f7148bab22e54af65c7eb0a.png\" style=\"width: 22px; height: 22px\" />");
            sb.AppendLine("                                    </span>");
            sb.AppendLine("                                    <span class=\"left_info_title\">");
            sb.AppendLine("                                        <a>所属套系");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                    </span>");
            sb.AppendLine("                                </div>");
            sb.AppendLine("                                <div class=\"menu-item\" style=\"margin-top: 10px\">");
            sb.AppendLine("                                    <p>");
            sb.AppendLine("                                        <span>不限");
            sb.AppendLine("                                        </span>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"现代简约\" href=\"/plus/list.php?tid=&jz=%E7%8E%B0%E4%BB%A3%E7%AE%80%E7%BA%A6\">现代简约");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"低调奢华\" href=\"/plus/list.php?tid=&jz=%E4%BD%8E%E8%B0%83%E5%A5%A2%E5%8D%8E\">低调奢华");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"尊贵典雅\" href=\"/plus/list.php?tid=&jz=%E5%B0%8A%E8%B4%B5%E5%85%B8%E9%9B%85\">尊贵典雅");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <br />");
            sb.AppendLine("                                    </p>");
            sb.AppendLine("                                </div>");
            sb.AppendLine("                            </div>");
            sb.AppendLine("                        </li>");
            sb.AppendLine("                        <!-- 关联的案例选项 -->");
            sb.AppendLine("                        <li class=\"border_B\">");
            sb.AppendLine("                            <div class=\"border_gray\">");
            sb.AppendLine("                                <div>");
            sb.AppendLine("                                    <span class=\"before\">");
            sb.AppendLine("                                        <img src=\"picture/c61d66407f7148bab22e54af65c7eb0b.png\" style=\"width: 22px; height: 22px\" />");
            sb.AppendLine("                                    </span>");
            sb.AppendLine("                                    <span class=\"left_info_title\">");
            sb.AppendLine("                                        <a>面积范围");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                    </span>");
            sb.AppendLine("                                </div>");
            sb.AppendLine("                                <div class=\"menu-item\" style=\"margin-top: 10px\">");
            sb.AppendLine("                                    <p>");
            sb.AppendLine("                                        <span>不限");
            sb.AppendLine("                                        </span>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"100㎡以下\" href=\"/plus/list.php?tid=&mj=100%E3%8E%A1%E4%BB%A5%E4%B8%8B\">100㎡以下");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"100-140㎡\" href=\"/plus/list.php?tid=&mj=100-140%E3%8E%A1\">100-140㎡");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"140-200㎡\" href=\"/plus/list.php?tid=&mj=140-200%E3%8E%A1\">140-200㎡");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"200-300㎡\" href=\"/plus/list.php?tid=&mj=200-300%E3%8E%A1\">200-300㎡");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"300㎡以上\" href=\"/plus/list.php?tid=&mj=300%E3%8E%A1%E4%BB%A5%E4%B8%8A\">300㎡以上");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <br />");
            sb.AppendLine("                                    </p>");
            sb.AppendLine("                                </div>");
            sb.AppendLine("                            </div>");
            sb.AppendLine("                        </li>");
            sb.AppendLine("                        <li class=\"border_B\">");
            sb.AppendLine("                            <div class=\"border_gray\">");
            sb.AppendLine("                                <div>");
            sb.AppendLine("                                    <span class=\"before\">");
            sb.AppendLine("                                        <img src=\"picture/c61d66407f7148bab22e54af65c7eb0c.png\" style=\"width: 22px; height: 22px\" />");
            sb.AppendLine("                                    </span>");
            sb.AppendLine("                                    <span class=\"left_info_title\">");
            sb.AppendLine("                                        <a>户型");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                    </span>");
            sb.AppendLine("                                </div>");
            sb.AppendLine("                                <div class=\"menu-item\" style=\"margin-top: 10px\">");
            sb.AppendLine("                                    <p>");
            sb.AppendLine("                                        <span>不限");
            sb.AppendLine("                                        </span>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"普通住宅\" href=\"/plus/list.php?tid=&hx=%E6%99%AE%E9%80%9A%E4%BD%8F%E5%AE%85\">普通住宅");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"跃层\" href=\"/plus/list.php?tid=&hx=%E8%B7%83%E5%B1%82\">跃层");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"公寓\" href=\"/plus/list.php?tid=&hx=%E5%85%AC%E5%AF%93\">公寓");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"别墅\" href=\"/plus/list.php?tid=&hx=%E5%88%AB%E5%A2%85\">别墅");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"其他\" href=\"/plus/list.php?tid=&hx=%E5%85%B6%E4%BB%96\">其他");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <br />");
            sb.AppendLine("                                    </p>");
            sb.AppendLine("                                </div>");
            sb.AppendLine("                            </div>");
            sb.AppendLine("                        </li>");
            sb.AppendLine("                        <li class=\"border_B\">");
            sb.AppendLine("                            <div class=\"border_gray\">");
            sb.AppendLine("                                <div>");
            sb.AppendLine("                                    <span class=\"before\">");
            sb.AppendLine("                                        <img src=\"picture/c61d66407f7148bab22e54af65c7eb0d.png\" style=\"width: 22px; height: 22px\" />");
            sb.AppendLine("                                    </span>");
            sb.AppendLine("                                    <span class=\"left_info_title\">");
            sb.AppendLine("                                        <a>装修风格");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                    </span>");
            sb.AppendLine("                                </div>");
            sb.AppendLine("                                <div class=\"menu-item\" style=\"margin-top: 10px\">");
            sb.AppendLine("                                    <p>");
            sb.AppendLine("                                        <span>不限");
            sb.AppendLine("                                        </span>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"北欧\" href=\"/plus/list.php?tid=&fg=%E5%8C%97%E6%AC%A7\">北欧");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"简欧\" href=\"/plus/list.php?tid=&fg=%E7%AE%80%E6%AC%A7\">简欧");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"新中式\" href=\"/plus/list.php?tid=&fg=%E6%96%B0%E4%B8%AD%E5%BC%8F\">新中式");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"美式\" href=\"/plus/list.php?tid=&fg=%E7%BE%8E%E5%BC%8F\">美式");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"现代简约\" href=\"/plus/list.php?tid=&fg=%E7%8E%B0%E4%BB%A3%E7%AE%80%E7%BA%A6\">现代简约");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"田园\" href=\"/plus/list.php?tid=&fg=%E7%94%B0%E5%9B%AD\">田园");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"欧式\" href=\"/plus/list.php?tid=&fg=%E6%AC%A7%E5%BC%8F\">欧式");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"美式乡村\" href=\"/plus/list.php?tid=&fg=%E7%BE%8E%E5%BC%8F%E4%B9%A1%E6%9D%91\">美式乡村");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"中式\" href=\"/plus/list.php?tid=&fg=%E4%B8%AD%E5%BC%8F\">中式");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <a title=\"地中海\" href=\"/plus/list.php?tid=&fg=%E5%9C%B0%E4%B8%AD%E6%B5%B7\">地中海");
            sb.AppendLine("                                        </a>");
            sb.AppendLine("                                        &nbsp;");
            sb.AppendLine("                                        <br />");
            sb.AppendLine("                                    </p>");
            sb.AppendLine("                                </div>");
            sb.AppendLine("                            </div>");
            sb.AppendLine("                        </li>");
            sb.AppendLine("                    </ul>");
            sb.AppendLine("                    <!--banner子菜单信息栏-->");
            sb.AppendLine("                </div>");
            sb.AppendLine("                <div style=\"clear: both\">");
            sb.AppendLine("                </div>");
            sb.AppendLine("            </div>");

            return sb;
        }
    }
}