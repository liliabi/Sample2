using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paducncms.Module;
using System.Data;
using System.Collections;
using PaducnSoft.Common;

namespace paducncms.admin.wz
{
    public partial class conf : PaducnSoft.Module.BasePage
    {
        PaducnSoft.DAL.ay_system dal = new PaducnSoft.DAL.ay_system();
        protected void Page_PreInit(object sender, EventArgs e)
        {
            base.CurrentPath = "../";
        }       
        protected void Page_Load(object sender, EventArgs e)
        {          
            if (!IsPostBack)
            {
                InitControls();
                EditItem();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {   
            UpdateItem();          
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            InitControls();          
            EditItem();          
        }
     
        //函数  
        private void UpdateItem()
        {
            PaducnSoft.Model.ay_system model = new PaducnSoft.Model.ay_system();
            model.bName = this.bName.Text;
            model.bTitle = this.bTitle.Text;
            model.bUrl = this.bUrl.Text;
            model.bPic = this.bPic.Text;
            model.bMiibeian = this.bMiibeian.Text;
            model.bKeywords = this.bKeywords.Text;
            model.bDescriptions = this.bDescriptions.Text;
            model.bCounter = this.bCounter.Text;
            bool result = dal.Update(model);
            if (result)
            {
                MessageBox.Alert(this, "网站配置成功！");
            }
            else
            {
                MessageBox.Alert(this, "网站配置失败,请检查数据是否正确!");
            }
        }
        private void EditItem()
        {
            PaducnSoft.Model.ay_system model = dal.GetModel();
            this.bName.Text = model.bName;
            this.bTitle.Text = model.bTitle;
            this.bUrl.Text = model.bUrl;
            this.bPic.Text = model.bPic;
            this.bMiibeian.Text = model.bMiibeian;
            this.bKeywords.Text = model.bKeywords;
            this.bDescriptions.Text = model.bDescriptions;
            this.bCounter.Text = model.bCounter;            
        }

        private void InitControls()
        {
            this.bName.Text = "";
            this.bTitle.Text = "";          
            this.bUrl.Text = "";
            this.bMiibeian.Text = "";           
            this.bPic.Text = "";
            this.bKeywords.Text = "";
            this.bDescriptions.Text = "";
            Page.SetFocus(this.bName);
        }       
    }
}