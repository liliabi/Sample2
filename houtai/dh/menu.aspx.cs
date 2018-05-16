using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using paducncms.Module;

namespace paducncms.admin.dh
{
    public partial class menu : PaducnSoft.Module.BasePage
    {
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
            rootnode.Text = "导航管理";
            rootnode.ImageUrl = "../images/base.gif";
            rootnode.SelectAction = TreeNodeSelectAction.Expand;
            rootnode.Expanded = true;
            this.trvMap.Nodes.Add(rootnode);

            node = new TreeNode();
            node.Text = "头部导航";
            node.NavigateUrl = "hd/";
            node.ImageUrl = "../images/list.gif";
            rootnode.ChildNodes.Add(node);

            node = new TreeNode();
            node.Text = "底部导航";
            node.NavigateUrl = "bm/";
            node.ImageUrl = "../images/list.gif";
            rootnode.ChildNodes.Add(node);
        }
    }
}