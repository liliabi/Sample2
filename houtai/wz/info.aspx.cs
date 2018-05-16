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
    public partial class info : PaducnSoft.Module.BasePage
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
            model.bCompany = this.bCompany.Text;
            model.bContact = this.bContact.Text;
            model.bPhone = this.bPhone.Text;
            model.bEmail = this.bEmail.Text;
            bool result = dal.Update(model);
            if (result)
            {
                MessageBox.Alert(this, "联系信息配置成功！");
            }
            else
            {
                MessageBox.Alert(this, "联系信息配置失败,请检查数据是否正确!");
            }
        }
        private void EditItem()
        {
            PaducnSoft.Model.ay_system model = dal.GetModel();
            this.bCompany.Text = model.bCompany;
            this.bContact.Text = model.bContact;
            this.bPhone.Text = model.bPhone;
            this.bEmail.Text = model.bEmail;
        }

        private void InitControls()
        {
            this.bCompany.Text = "";
            this.bContact.Text = "";
            this.bPhone.Text = "";
            this.bEmail.Text = "";
            Page.SetFocus(this.bCompany);
        }

    }
}