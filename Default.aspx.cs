using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Cat_ID = Request.QueryString["Cat_ID"];
            if (Cat_ID != null)
            {
                DataList1.DataSource = DataCon.selectQuery("SELECT * FROM Product WHERE Cat_ID=" + Cat_ID);
                DataList1.RepeatColumns = 3;
                DataList1.RepeatDirection = RepeatDirection.Horizontal;
                DataList1.DataBind();
            }
        }

    }
}