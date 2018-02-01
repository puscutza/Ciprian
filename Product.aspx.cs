using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    Bag myBag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Cat_ID = Request.QueryString["Prod_ID"];
            if (Cat_ID != null)
            {
                DataList1.DataSource = DataCon.selectQuery("SELECT * FROM Product WHERE Prod_ID=" + Cat_ID);
                DataList1.DataBind();
            }
        }

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["myBag"] == null)
        {
            myBag = new Bag();
            Session["myBag"] = myBag;
        }
        string Cat_ID = Request.QueryString["Prod_ID"];
        myBag = (Bag)Session["myBag"];
        DataTable dt = DataCon.selectQuery("SELECT * FROM Product WHERE Prod_ID=" + Cat_ID);
        DataRow row = dt.Rows[0];
        myBag.Insert(new BagItems(Int32.Parse(Cat_ID), row["Prod_Name"].ToString(), row["Prod_Img"].ToString(), row["Prod_Desc"].ToString(), Double.Parse(row["Prod_Price"].ToString()), 1));
        Response.Redirect("Cart.aspx");
    }
}