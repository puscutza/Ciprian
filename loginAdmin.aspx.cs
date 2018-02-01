using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        if (Session["Admin"] != null)
        {
            Response.Redirect("Administrator.aspx");
        }
        else
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();

        cmd.CommandText = "select * from TableAdmin where AdminUser='" + txtUserId.Text + "' and AdminPassword='" + txtPassword.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "TableAdmin");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["Admin"] = txtUserId.Text;
            Response.Redirect("Administrator.aspx");
        }
        else
        {
            Label1.Text = "Wrong username or password";
        }
    }
}