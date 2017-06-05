using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.Notifications
{
    public partial class ChangeAPIEmail : System.Web.UI.Page
    {
        NotificationBL noti = new NotificationBL();
        public string lbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["username"] != null)
            {
                lbl = Request.QueryString["username"];
               
            }
            else
            {
                Response.Redirect("~/Notifications/Notificationform.aspx");
            }
            
        }

        protected void btnapi_Click(object sender, EventArgs e)
        {
            if (txtapi.Text != string.Empty)
            {
                noti.Username = lbl;
                noti.APIEMAIL = txtapi.Text;
                noti.TypeStatus = "API";
                noti.MailPassword = "null";
                noti.udateapiemail();
                lblinfo.Text = "User API: " + noti.msg;
                txtapi.Text = "";
            }
            else
            {
                lblinfo.Text = "Fill the Required Field!!";
            }
        }

        protected void btnemail_Click(object sender, EventArgs e)
        {
            if (txtpass.Text != string.Empty && txtsetemail.Text != string.Empty)
            {
                noti.Username = lbl;
                noti.APIEMAIL = txtsetemail.Text;
                noti.TypeStatus = "EMAIL";
                noti.MailPassword = txtpass.Text;
                noti.udateapiemail();
                lblinfo.Text = "User EMAIL & Password: " + noti.msg;
                txtsetemail.Text = "";
                txtpass.Text = "";
            }
            else
            {
                lblinfo.Text = "Fill the Required Field!!";
            }
        }
    }
}