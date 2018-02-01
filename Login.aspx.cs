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

        if (Session["New"] != null)
        {
            Response.Redirect("User.aspx");
        }
        else
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
      
        cmd.CommandText = "select * from UserData where UserName='" + txtUserId.Text + "' and password='" + txtPassword.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "UserData");
        if(ds.Tables[0].Rows.Count > 0)
        {
            Session["New"] = txtUserId.Text;
            Response.Redirect("User.aspx");
        }
        else
        {
            Label1.Text = "Wrong email or password";
        }

    }
}