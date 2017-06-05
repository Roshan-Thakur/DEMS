using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.AdminControlPanel
{
    public partial class AdminProfile : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL admin = new FormUserRegistrationModule.EmployeeregBL();
        public string user;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Request.QueryString["id"];
            SelectAdmin();
        }
        public void SelectAdmin()
        {
            admin.EID = Convert.ToInt32(user) ;
            user = admin.EID.ToString();
            if (user != string.Empty)
            {
                admin.SelectAdminProfile();
                lblname.Text =admin.Firstname+" "+admin.Lastname;
                lblage.Text = admin.DOB;
                lblfname.Text = admin.FName;
                lbladdress.Text = admin.Address;
                lblbld.Text = admin.Blood;
                lbldesig.Text = admin.Designation;
                lblcollege.Text = admin.College;
                lbldegree.Text = admin.Degree;
                lblschool.Text = admin.School;
                lblemail.Text= admin.Email;
                lblphone.Text = admin.Phone;
                lbladdress.Text = admin.Address;
                p1.InnerText= admin.P1;
                p2.InnerText= admin.P2;
                imgprofile.ImageUrl= admin.Profile;
            }
           
           
        }
        protected void lnksetting_Click(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if(user!=string.Empty)
            {
                Response.Redirect("~/AdminControlPanel/AddSuperAdmin.aspx?id="+user);
            }
        }

        protected void lnksetting_Click1(object sender, EventArgs e)
        {
            if(lblname.Text!=string.Empty)
            {
                Response.Redirect("~/AdminControlPanel/AddSuperAdmin.aspx?creatername=" + lblname.Text);
            }
        }

        protected void lnknotify_Click(object sender, EventArgs e)
        {
            divNotify.Visible = true;
        }

        public void selectNotification()
        {
            admin.EID = 10001;
            admin.SelectNotification();
            txtnotification.InnerText = admin.Notification;
        }
        protected void btnnotification_Click(object sender, EventArgs e)
        {
            divNotify.Visible = false;
            if(txtnotification.InnerText!=string.Empty)
            {
               admin.Type = "both";
               admin.SelectEMpStaff();
               dt = admin.source;
              
                if(dt.Rows.Count>0)
                {
                    for (int i = 0; i <= dt.Rows.Count-1; i++)
                    {
                       string EID = dt.Rows[i]["EId"].ToString();
                       admin.EID = Convert.ToInt32(EID);
                       admin.UpdateNotification();
                       admin.Notification = txtnotification.InnerText;
                       lblmsg.Text = admin.msg;
                       
                    }
                    selectNotification();
                }
            }

        }
    }
}