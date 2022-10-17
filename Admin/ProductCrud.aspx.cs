using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECOMMERCEDEMPSNIM.Admin.DAL;
using ECOMMERCEDEMPSNIM.Admin.Models;



namespace ECOMMERCEDEMPSNIM.Admin
{
    public partial class ProductCrud : System.Web.UI.Page
    {
        DAL.ProductDAL productdb = new ProductDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            Models.Product prod = new Models.Product();
            prod.Name = txtName.Text;
            prod.Price = Convert.ToDouble(txtPrice.Text);
            prod.CategoryId = Convert.ToInt32(ddlCategories.SelectedValue);
            int res = productdb.AddProduct(prod);
            if (res == 1)
            {
                lblMsg.Text = "Record inserted successfully";
                lblMsg.ForeColor = Color.Green;
                txtId.Text = String.Empty;
                txtName.Text = string.Empty;
                txtPrice.Text = string.Empty;
                ddlCategories.SelectedValue = "1";
            }
            else
            {
                lblMsg.Text = "Something went wrong";
                lblMsg.ForeColor = Color.Red;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Models.Product prod = new Models.Product();
            prod.Id = Convert.ToInt32(txtId.Text);
            prod.Name = txtName.Text;
            prod.Price = Convert.ToDouble(txtPrice.Text);
            prod.CategoryId = Convert.ToInt32(ddlCategories.SelectedValue);
            int res = productdb.ModifyProduct(prod);
            if (res == 1)
            {
                lblMsg.Text = "Record modified successfully";
                lblMsg.ForeColor = Color.Green;
            }
            else
            {
                lblMsg.Text = "Something went wrong";
                lblMsg.ForeColor = Color.Red;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Models.Product prod = new Models.Product();
            prod = productdb.GetProductById(Convert.ToInt32(txtId.Text));
            if (prod != null)
            {
                txtName.Text = prod.Name;
                txtPrice.Text = prod.Price.ToString();
                ddlCategories.SelectedValue = prod.CategoryId.ToString();
            }
            else
            {
                lblMsg.Text = "Record not found";
                lblMsg.ForeColor = Color.Red;
            }
        }

        protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}