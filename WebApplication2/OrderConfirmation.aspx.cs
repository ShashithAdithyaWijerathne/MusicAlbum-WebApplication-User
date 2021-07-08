using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class OrderConfirmation : System.Web.UI.Page
    {
        private List<AlbumStatus> OrderItems = new List<AlbumStatus>();
        protected void Page_Load(object sender, EventArgs e)
        {
            SpplierServiceReference.SupplierWebServiceSoap sup = new SpplierServiceReference.SupplierWebServiceSoapClient();

            if (Session["cart"] != null) {
                ShoppingCart cart = (ShoppingCart)Session["cart"];
                foreach (CartItems i in cart.Items) {
                    float pri = (float)sup.getPrice(i.AlbumID1, i.Quantity);
                    OrderItems.Add(new AlbumStatus
                    {
                        AlbumID1 = i.AlbumID1,
                        Quntity1 = i.Quantity,
                        Price = pri

                    }) ;
                }
            }
        }
    }
}