using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public static class DataCon
{
    private static string ConnectionString;
    static DataCon()
    {
        ConnectionString =
            WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    }
    public static DataTable selectQuery(string query)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(query, con);
        dt.Load(cmd.ExecuteReader());
        con.Close();
        return dt;
    }
}