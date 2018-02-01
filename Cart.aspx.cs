using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    Bag myBag;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["myBag"] == null)
        {
            Session["myBag"] = new Bag();
        }
        myBag = (Bag)Session["myBag"];
        if (!IsPostBack)
        {
            FillData();
        }
    }

    private void FillData()
    {
        GridView1.DataSource = myBag.Items;
        GridView1.DataBind();
        if (myBag.Items.Count == 0)
            {
            Label2.Visible = false;
        }
        else
        {
            Label2.Text = String.Format("BagTotal={0,19:C}", myBag.BagTotal);
            Label2.Visible = true;
        }
    }


    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillData();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        myBag.Delete(e.RowIndex);
        FillData();

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        FillData();

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQty = (TextBox)
            GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        int Qty = Int32.Parse(txtQty.Text);
        myBag.Update(e.RowIndex, Qty);
        GridView1.EditIndex = -1;
        FillData();

    }
}