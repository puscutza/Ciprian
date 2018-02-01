using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Bag
{
    public List<BagItems> Items { get; set; }
    public Bag()
    {
        Items = new List<BagItems>();
    }
    private int ItemIndexOf(int Prod_ID)
    {
        foreach(BagItems item in Items)
        {
            if(item.Prod_ID == Prod_ID)
            {
                return Items.IndexOf(item);
            }
        }
        return -1;
    }
    public void Insert(BagItems item)
    {
        int index = ItemIndexOf(item.Prod_ID);
        {
            if(index== -1)
            {
                Items.Add(item);
            }
            else
            {
                Items[index].Qty++;
            }
        }
    }
    public void Delete(int RowID)
    {
        Items.RemoveAt(RowID);
    }
    public void Update(int RowID, int Qty)

    {
        if (Qty > 0)
        {
            Items[RowID].Qty = Qty;
        }
        else
        {
            Delete(RowID);
        }
    }
    public double BagTotal
    {
        get
        {
            if (Items == null)
            {
                return 0;
            }
            else
            {
                double BagTotal = 0;
                foreach(BagItems item in Items)
                {
                    BagTotal += item.Qty * item.Prod_Price;
                }
                return BagTotal;
            }
        }
    }
}