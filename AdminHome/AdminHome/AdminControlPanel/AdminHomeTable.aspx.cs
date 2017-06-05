using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminControlPanel
{
    public partial class AdminHomeTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sessionvalue;
            if (Session["firstname"] == null && Session["lastname"] == null)
            {
                Session.Abandon();
                Session.Clear();
                Response.Redirect("../AdminLogIn.aspx");
            }
            else
            {
                sessionvalue = "Welcome " + Session["firstname"].ToString() + " " + Session["lastname"].ToString() + ":" + Session["EId"].ToString();

            }
        }

        protected void lnkprofile_Click(object sender, EventArgs e)
        {
            string sid = Session["EId"].ToString();
            Response.Redirect("../AdminControlPanel/AdminProfile.aspx?id=" + sid);
        }

        protected void lnkAdd_Click(object sender, EventArgs e)
        {
            string sid = Session["EId"].ToString();
            Response.Redirect("../AdminControlPanel/AddSuperAdmin.aspx?id=" + sid);
        }

        protected void a1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/AdminLogIn.aspx");
        }
    }
}