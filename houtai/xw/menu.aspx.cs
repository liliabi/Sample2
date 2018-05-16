using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using paducncms.Module;

namespace paducncms.admin.xw
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
            rootnode.Text = "新闻管理";
            rootnode.ImageUrl = "../images/base.gif";
            rootnode.SelectAction = TreeNodeSelectAction.None;
            rootnode.NavigateUrl = "javascript:void(0);";
            rootnode.Expanded = true;           
            this.trvMap.Nodes.Add(rootnode);

            node = new TreeNode();
            node.Text = "添加栏目";
            node.ImageUrl = "../images/ico-show-img.png";
            node.NavigateUrl = "cl/add.aspx";            
            rootnode.ChildNodes.Add(node);
            node = new TreeNode();
            node.Text = "栏目管理";
            node.NavigateUrl = "cl/";            
            node.Expanded = true;
            node.ImageUrl = "../images/ico-show-img.png";
            rootnode.ChildNodes.Add(node);
            node = new TreeNode();
            node.Text = "添加新闻";
            node.ImageUrl = "../images/ico-show-img.png";
            node.NavigateUrl = "./add.aspx";
            rootnode.ChildNodes.Add(node);
            node = new TreeNode();
            node.Text = "全部新闻";
            node.ImageUrl = "../images/ico-show-img.png";
            node.NavigateUrl = "./";
            rootnode.ChildNodes.Add(node);
        }
    }
}