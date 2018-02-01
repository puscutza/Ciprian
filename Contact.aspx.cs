using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {




    }
    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "ardeleanupaul2@gmail.com";
        // any address where the email will be sending
        var toAddress = "ardeleanupaul2@gmail.com";
        //Password of your gmail address
        const string fromPassword = "dutedraqu1987";
        // Passing the values and make a email formate to display
        string subject = txtSubject.Text.ToString();
        string body = "From: " + txtName.Text + "\n";
        body += "Email: " + txtEmail.Text + "\n";
        body += "Subject: " + txtSubject.Text + "\n";
        body += "Message: \n" + txtMessage.Text + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            //here on button click what will done 
            SendMail();
            lblDisplay.Text = "Your email has been successfully sent and we appreciate you contacting us <br> We'll be on touch soon!";
            lblDisplay.Visible = true;
            txtSubject.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            txtSurname.Text = "";
            txtMessage.Text = "";
        }
        catch (Exception) { }
    }

    protected void txtName_TextChanged(object sender, EventArgs e)
    {

    }
}