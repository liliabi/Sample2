using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using paducncms.Module;

namespace paducncms.admin.wz
{
    public partial class menu : PaducnSoft.Module.BasePage
    {
        string msql = string.Empty;
        protected void Page_PreInit(object sender, EventArgs e)
        {
            base.CurrentPath = "../";         
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                LoadTreeList();
            }

        }
        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadTreeList();
        }
        private void LoadTreeList()
        {
            this.trvMap.Nodes.Clear();
            TreeNode node;
            TreeNode rootnode = new TreeNode();
            rootnode.Text = "网站信息";
            rootnode.ImageUrl = "../images/base.gif";
            rootnode.SelectAction = TreeNodeSelectAction.None;
            rootnode.NavigateUrl = "javascript:void(0);";
            rootnode.Expanded = true;           
            this.trvMap.Nodes.Add(rootnode);

            node = new TreeNode();
            node.Text = "网站参数";
            node.NavigateUrl = "conf.aspx";
            node.ImageUrl = "../images/list.gif";
            rootnode.ChildNodes.Add(node);

            node = new TreeNode();
            node.Text = "联系信息";
            node.NavigateUrl = "info.aspx";
            node.ImageUrl = "../images/list.gif";
            rootnode.ChildNodes.Add(node);

            node = new TreeNode();
            node.Text = "幻灯片管理";
            node.ImageUrl = "../images/ico-show-img.png";
            node.NavigateUrl = "fla/";
            rootnode.ChildNodes.Add(node);
            
            node = new TreeNode();
            node.Text = "友情链接";
            node.ImageUrl = "../images/ico-show-img.png";
            node.NavigateUrl = "links/";
            rootnode.ChildNodes.Add(node);

        }
    }
}