using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.usercontrolpage
{
    public partial class ControlMasterPage : System.Web.UI.MasterPage
    {
        string sessionvalue;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstname"] == null && Session["lastname"]==null)
            {
                Session.Abandon();
                Session.Clear();
                Response.Redirect("AdminLogIn.aspx");
            }
            else
            {
                sessionvalue = "Welcome " + Session["firstname"].ToString() + " " + Session["lastname"].ToString() + ":" + Session["EId"].ToString();
               
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/AdminLogIn.aspx");
        }

        protected void lnkmyaccount_Click(object sender, EventArgs e)
        {
            string sid = Session["EId"].ToString();
            Response.Redirect("../AdminControlPanel/AdminProfile.aspx?id="+sid);
        }

        protected void lnkeditaccount_Click(object sender, EventArgs e)
        {
            string sid = Session["EId"].ToString();
            Response.Redirect("../AdminControlPanel/AddSuperAdmin.aspx?id=" + sid);
        }
    }
}