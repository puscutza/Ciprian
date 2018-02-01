using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class BagItems
{
    public int Prod_ID { get; set; }
    public string Prod_Name { get; set; }
    public string Prod_Img { get; set; }
    public string Prod_Desc { get; set; }
    public double Prod_Price { get; set; }
    public int Qty { get; set; }
    public BagItems(int Prod_ID, string Prod_Name, string Prod_Img, string Prod_Desc, double Prod_Price, int Qty)
    {
        this.Prod_ID = Prod_ID;
        this.Prod_Name = Prod_Name;
        this.Prod_Img = Prod_Img;
        this.Prod_Desc = Prod_Desc;
        this.Prod_Price = Prod_Price;
        this.Qty = Qty;
       
    }
}