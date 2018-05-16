using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using paducncms.Module;

namespace paducncms.admin.sy
{
    public partial class menu : PaducnSoft.Module.BasePage
    {       
        protected void Page_PreInit(object sender, EventArgs e)
        {
            base.CurrentPath = "../";
        }
        protected void Page_Load(object sender, EventArgs e)
        {          
            this.trvMap.Nodes.Clear();
            TreeNode node;
            TreeNode rootnode = new TreeNode();
            rootnode.Text = "系统设置";
            rootnode.ImageUrl = "../images/base.gif";
            rootnode.SelectAction = TreeNodeSelectAction.Expand;
            rootnode.Expanded = true;
            this.trvMap.Nodes.Add(rootnode);
            
            node = new TreeNode();
            node.Text = "用户管理";
            node.NavigateUrl = "adm/";
            node.ImageUrl = "../images/list.gif";
            rootnode.ChildNodes.Add(node);

            node = new TreeNode();
            node.Text = "操作日志";
            node.NavigateUrl = "syslog.aspx";
            node.ImageUrl = "../images/list.gif";
            rootnode.ChildNodes.Add(node);

        }
    }
}