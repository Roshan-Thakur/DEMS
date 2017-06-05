using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.StudentDesboard
{
    public partial class StudentMasterPage : System.Web.UI.MasterPage
    {
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                    if(Session["FormNo"]==null)
                    {
                        Session.Clear();
                        Session.Abandon();
                        Response.Redirect("~/AdminLogIn.aspx");
                        
                    }else
                    {
                        sessionvalue.InnerText="Welcome "+Session["StName"].ToString()+" : "+Session["FormNo"].ToString();
                        selectnotification();
                    }
            }
        }
        public void selectnotification()
        {
            ac.FormNo = Convert.ToInt16(Session["FormNo"]);
            ac.selectstudentInfo();
            pp.InnerText = ac.Notification;
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/AdminLogIn.aspx");
        }
    }
}