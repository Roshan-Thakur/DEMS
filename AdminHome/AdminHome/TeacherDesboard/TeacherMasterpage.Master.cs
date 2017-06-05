using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.TeacherDesboard
{
    public partial class TeacherMasterpage : System.Web.UI.MasterPage
    {
        FormUserRegistrationModule.EmployeeregBL admin = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EId"] == null)
            {
                Session.Abandon();
                Session.Clear();
                Response.Redirect("AdminLogIn.aspx");
            }
            else
            {
                sessionvalue.InnerText ="Welcome "+Session["name"].ToString()+":"+ Session["EId"].ToString();
                selectNotification();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/AdminLogIn.aspx");
        }
        public void selectNotification()
        {
            string id = Session["EId"].ToString();
            admin.EID = Convert.ToInt32(id);
            admin.SelectNotification();
            p1notification.InnerText = admin.Notification;
        }
    }
}