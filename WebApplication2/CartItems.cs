using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class CartItems
    {
        private int AlbumID;
        private String AlbumName;
        private float price;
        private int quantity;
        private String image;

        public int AlbumID1 { get => AlbumID; set => AlbumID = value; }
        public string AlbumName1 { get => AlbumName; set => AlbumName = value; }
        public float Price { get => price; set => price = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        public string Image { get => image; set => image = value; }

        public float SubTotal { get { return price * quantity; } }
    }
}