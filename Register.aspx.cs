using System;
using System.Collections.Generic;
using System.Configuration;
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

    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where UserName='" + txtEmail.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                Label1.Text = "Email already exist in our records";
            }

            else
            {
                conn.Open();
                string insertData = "insert into UserData(ID, UserName, Email, Password) values(@Id, @Username, @Email, @Password)";
                SqlCommand com2 = new SqlCommand(insertData, conn);
                com2.Parameters.AddWithValue("@Id", newGuid.ToString());
                com2.Parameters.AddWithValue("@Username", txtEmail.Text);
                com2.Parameters.AddWithValue("@Email", txtConfEmail.Text);
                com2.Parameters.AddWithValue("@Password", txtPassword.Text);

                com2.ExecuteNonQuery();

                Label1.Text = "You have successfully created your account !";
                conn.Close();
            }
        }
        catch(Exception ex)
        {
            Response.Write("Something went wrong!" +ex.ToString());
        }
    }
}