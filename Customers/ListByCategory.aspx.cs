using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECOMMERCEDEMPSNIM.Customers
{
    public partial class ListByCategory : System.Web.UI.Page
    {
        string[] categories = { "Furniture", "Electronics", "Camera", "Home Needs" };
        string[] furniture = { "Sofa 12000 rs", "Chair 999 rs", "Two Chair 1999" };
        string[] eletronics = { "Sony LED 45000 rs", "Intex LCD 22000 rs", "LG Washing Machine 45000" };
        string[] camera = { "Sony 56000", "Nikon 45000" };
        string[] HomeNeeds = { "TElevision", "Washing Machine" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlCategories.DataSource = categories;

            }
            Page.DataBind();

        }

        protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            CheckBoxList1.Items.Clear();

            string category = ddlCategories.SelectedItem.ToString();

            if (category == "Furniture")
            {
                CheckBoxList1.DataSource = furniture;
            }
            else if (category == "Electronics")
            {
                CheckBoxList1.DataSource = eletronics;
            }
            else if (category == "Camera")
            {
                CheckBoxList1.DataSource = camera;
            }
            else if (category == "Home Needs")
            {
                CheckBoxList1.DataSource = HomeNeeds;
            }
            CheckBoxList1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            /* code for cookies
            int counter = 0;
            string data = "Selected products ";
            HttpCookie cookie = new HttpCookie("productlist");

            foreach (ListItem item in CheckBoxList1.Items)
            {
                string str = "p";
                if (item.Selected)
                {
                    counter++;
                   ViewState["pcount"] = counter;
                   data += item.Text + "  ";
                   str = str + counter.ToString();
                  cookie.Values.Add(str, item.Text);
               }
            }*/
            ///set the cookie
           // Response.Cookies.Add(cookie);
           // Response.Redirect("~/Customers/ViewCart.aspx");
            //lblMsg.Text = data;
            //lblProductCount.Text = "Total number of products " + ViewState["pcount"];
            // code for session
            ArrayList list = new ArrayList();
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    list.Add(item.Text);
                }
            }
            Session["plist"] = list;
           
            
            
            // data caching
            Cache.Add("plist", list, null, DateTime.Now.AddMinutes(20), TimeSpan.FromSeconds(0),
                System.Web.Caching.CacheItemPriority.High, null);
            // Insert- > same key cache will be override
            //Cache.Insert("plist", list, null, DateTime.Now.AddMinutes(20), TimeSpan.FromSeconds(120),
            //   System.Web.Caching.CacheItemPriority.High, null);



            Response.Redirect("~/Customers/ViewCart.aspx");

            /*int counter;
            string data;
            counter = 0;
            data = "selected product";
            foreach (ListItem obj in CheckBoxList1.Items)
            {
                if (obj.Selected)
                {
                    counter++;
                    ViewState["pcount"] = counter;
                    data += obj.Text + "  ";

                }
            }
            lblProducts.Text= data;
            ProductCouunts.Text = "Total selected Products" + ViewState["pcount"];*/
        }
    }
}