using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class ShoppingCart
    {
        private List<CartItems> items;

        public List<CartItems> Items { get => items; set => items = value; }

        public ShoppingCart() {
            items = new List<CartItems>();
        }

        public void insertItem(int id, String name, int qun, float pri, String img) {
            var itm = (from i in items
                       where i.AlbumID1 == id
                       select i).SingleOrDefault();
            if (itm == null)
            {
                items.Add(new CartItems()
                {
                    AlbumID1 = id,
                    AlbumName1 = name,
                    Quantity = qun,
                    Price = pri,
                    Image = img
                });
            }
            else
                itm.Quantity += qun;
        }

        public float Total
        {
            get {
                var tot = (from i in items
                           select i.SubTotal).Sum();

                return tot;
            }
        }

        internal void delete(int rowIndex)
        {
            throw new NotImplementedException();
        }
    }
}