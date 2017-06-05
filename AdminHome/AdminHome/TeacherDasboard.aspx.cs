using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome
{
    public partial class TeacherDasboard : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL ex = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["EId"]==null)
            {
                Response.Redirect("AdminLogIn.aspx");
            }else
            {
            lblEid.Text=Session["EId"].ToString();
            details();
            }
        }

        public void details()
        {
            ex.EID =Convert.ToInt32(lblEid.Text);
            ex.selectemp();
            lblname.Text = ex.Name;
            lblcode.Text = ex.Email;
            lbldept.Text = ex.DepartureTime;
            lbldesignation.Text = ex.Designation;
            imgprofile.ImageUrl = ex.Profile;
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("AdminLogIn.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("AdminLogIn.aspx");
        }
    }
}