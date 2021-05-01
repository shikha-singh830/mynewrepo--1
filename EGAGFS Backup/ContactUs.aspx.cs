using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Text;


 namespace EGAGFS
 {
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //  string to = "contact@aretecon.com";     
        //  string from = "shikha@aretecon.com";     
        //  MailMessage message = new MailMessage(from, to);
        //  string mailbody = "Provide your email id";
        //  message.Subject = "mail send ";  
        //      message.Body = mailbody;  
        //      message.BodyEncoding = Encoding.UTF8;  
        //      message.IsBodyHtml = true;  
        //      SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        //              System.Net.NetworkCredential basicCredential1 = new
        //              System.Net.NetworkCredential("shikha@aretecon.com", "Shikha@123");
        //              client.EnableSsl = true;  
        //      client.UseDefaultCredentials = true;  
        //      client.Credentials = basicCredential1;  
        //      try   
        //      {  
        //          client.Send(message);  
        //      }   

        //      catch (Exception ex)   
        //      {  
        //          throw ex;  
        //      } 

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string strText;
            try
            {
                MailMessage msg = new MailMessage();
               
                msg.From = new MailAddress("info@aretecon.com");
                msg.To.Add(new MailAddress("contact@aretecon.com"));
                msg.Subject = "Aretecon Enquiry Form";
                msg.IsBodyHtml = true;
                msg.Priority = MailPriority.High;

                
                System.Net.NetworkCredential cred = new System.Net.NetworkCredential("info@aretecon.com", "r5Q6YR=a");
               
                strText = "<font face=\"Verdana\" size=\"2\"><br><br>";          
                strText = strText + "Name: " + txtname.Value + "<br><br>";
                strText = strText + "Email: " + txtemail.Value + "<br><br>";
                strText = strText + "Mobile: " + txtmobile.Value + "<br><br>";
                strText = strText + "Subject: " + txtsubject.Value + "<br><br>";
                strText = strText + "Message: " + txtmessage.Value + "<br><br>";
               // strText = strText + "Team<br>";

                strText = strText + "</font>";
                msg.Body = strText;

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Timeout = 40000;
                client.UseDefaultCredentials = false;
                client.Credentials = cred;

                try
                {
                    client.Send(msg);                
                }

                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

                txtname.Value = string.Empty;
                txtemail.Value = string.Empty;
                txtmobile.Value = string.Empty;
                txtsubject.Value = string.Empty;
                txtmessage.Value = string.Empty;
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
                //  Response.Redirect("ContactUs.aspx");
            }
            
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message.ToString());
            }
        }           
    }
 }
 