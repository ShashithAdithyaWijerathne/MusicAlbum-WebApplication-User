using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Session["cart"] != null) {
                ShoppingCart cart = (ShoppingCart)Session["cart"];
                Label id = (Label)DataList1.Controls[0].FindControl("AlbumIDLable");
                Label name = (Label)DataList1.Controls[0].FindControl("AlbumNameLable");
                TextBox Quntity = (TextBox)DataList1.Controls[0].FindControl("TextBox1");
                Label pri = (Label)DataList1.Controls[0].FindControl("PriceLable");
                Image img = (Image)DataList1.Controls[0].FindControl("Image1");

                cart.insertItem(int.Parse(id.Text), name.Text, int.Parse(Quntity.Text),
                    float.Parse(pri.Text), img.ImageUrl);
            }
        }
    }
}