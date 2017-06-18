using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    private void SendMail()
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.From = new System.Net.Mail.MailAddress(txtEmail.Text);

            // The important part -- configuring the SMTP client
            SmtpClient smtp = new SmtpClient();
            smtp.Port = 25;   // [1] You can try with 465 also, I always used 587 and got success
            smtp.EnableSsl = false;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network; // [2] Added this
            smtp.UseDefaultCredentials = false; // [3] Changed this
            smtp.Credentials = new NetworkCredential("info@gocrazysoftwares.com", "Rahul@2727");  // [4] Added this. Note, first parameter is NOT string.
            smtp.Host = "gocrazysoftwares.com";

            //recipient address
            mail.To.Add(new MailAddress("info@gocrazysoftwares.com"));

            //Formatted mail body
            mail.IsBodyHtml = true;

            mail.Body = txtName.Text + " : " + txtComment.Text; ;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            string str = ex.Message;
        }


    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        this.SendMail();
    }
}