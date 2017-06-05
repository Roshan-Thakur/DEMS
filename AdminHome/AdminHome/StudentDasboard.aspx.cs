using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome
{
    public partial class StudentDasboard : System.Web.UI.Page
    {
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        public int formno;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FormNo"] == null)
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }
            else
            {
                lblroll.Text = Session["FormNo"].ToString();
                selectinfo();
            }
        }
        public void selectinfo()
        {
            ac.FormNo =Convert.ToInt32( lblroll.Text);
            ac.selectstudentInfo();
            lblname.Text = ac.StName;
            lblbatch.Text = ac.Batch;
            lblemail.Text = ac.FEmail;
            lblsection.Text = ac.Section;
            lblshift.Text = ac.Shift;
            profileimg.ImageUrl = ac.ImageUr;
        }
        protected void btnlogput_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("AdminLogIn.aspx");
        }

        protected void A3_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/StudentDesboard/StudentProfileform.aspx");
        }

        protected void lnkmark_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/ExaminationModules/ViewStudentMarksheets.aspx");
        }

        protected void lnlattandance_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/OriginalAttandenceSystem/ViewStudentAttandance.aspx");
        }

        protected void Unnamed_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("AdminLogIn.aspx");
        }

        
        
    }
}