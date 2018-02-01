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
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Admin"]== null)
        {
            Response.Redirect("loginAdmin.aspx");
        }
        else
        {
            cnn.Open();
            cnn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./Image/" + FileUpload1.FileName.ToString());
        cnn.Open();
        SqlCommand cmm = cnn.CreateCommand();
        cmm.CommandType = CommandType.Text;
        cmm.CommandText = "Insert into Product values ('" + TextBox1.Text + "' ,  '" + FileUpload1.FileName.ToString() + "', '" + TextBox2.Text + "' , '" + TextBox3.Text + "' , '" + DropDownList1.SelectedItem.Value + "' )";
        cmm.ExecuteNonQuery();
        cnn.Close();


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("loginAdmin.aspx");
    }
}