using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                ShoppingCart cart = (ShoppingCart)Session["cart"];
                GridView1.DataSource = cart.Items;
                GridView1.DataBind();
                if (cart.Items.Count > 0) {
                    Label1.Text = String.Format("Total = {0:0.00}", cart.Total);
                    Label1.Visible = true;
                }
                Label1.Visible = false;
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (Session["cart"] != null)
            {
                ShoppingCart cart = (ShoppingCart)Session["cart"];
                cart.delete(e.RowIndex);

                GridView1.DataSource = cart.Items;
                GridView1.DataBind();
                if (cart.Items.Count > 0)
                {
                    Label1.Text = String.Format("Total = {0:0.00}", cart.Total);
                    Label1.Visible = true;
                }
                Label1.Visible = false;
            }
        }
    }
}