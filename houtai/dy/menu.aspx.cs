using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using paducncms.Module;

namespace paducncms.admin.dy
{
    public partial class menu : PaducnSoft.Module.BasePage
    {
        PaducnSoft.DAL.ay_page dal = new PaducnSoft.DAL.ay_page();
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
            rootnode.Text = "单页管理";
            rootnode.ImageUrl = "../images/base.gif";
            rootnode.SelectAction = TreeNodeSelectAction.None;
            rootnode.NavigateUrl = "javascript:void(0);";
            rootnode.Expanded = true;           
            this.trvMap.Nodes.Add(rootnode); 

            node = new TreeNode();
            node.Text = "添加单页";
            node.ImageUrl = "../images/ico-show-img.png";
            node.NavigateUrl = "add.aspx";
            rootnode.ChildNodes.Add(node);

            node = new TreeNode();
            node.Text = "全部单页";
            node.ImageUrl = "../images/ico-show-img.png";
            node.NavigateUrl = "./";
            rootnode.ChildNodes.Add(node);

            DataSet ds = dal.GetList("");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                TreeNode childnode = new TreeNode();
                childnode.Text = dr["bTitle"].ToString();
                childnode.NavigateUrl = "modify.aspx?id=" + dr["bID"].ToString();
                childnode.ImageUrl = "../images/list.gif";
                rootnode.ChildNodes.Add(childnode);
            }
        }
    }
}