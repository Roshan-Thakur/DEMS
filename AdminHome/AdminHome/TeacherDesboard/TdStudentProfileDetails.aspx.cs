using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.TeacherDesboard
{
    public partial class TdStudentProfileDetails : System.Web.UI.Page
    {
        public string stid ;
        AccademicManagement.AcadimicModulBL.AcademicBL ac=new AccademicManagement.AcadimicModulBL.AcademicBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EId"] != null)
            {
                stid = Request.QueryString["St"];
                selectinfo();
            }
            else
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }
            
        }
        public void selectinfo()
        {
            ac.FormNo = Convert.ToInt32(stid);
            ac.selectstudentInfo();
            lblname.Text = ac.StName;
            lblbatch.Text = ac.Batch;
            lblemail.Text = ac.FEmail;
            lbladdyr.Text = ac.AddYear;
            lblbldgrp.Text = ac.BloodGroup;
            lblclass.Text = ac.StClass;
            lbldob.Text = ac.Dob;
            lblgender.Text = ac.Gender;
            lreligionlb.Text = ac.Religion;
            lblgaddress.Text = ac.GAddress;
            lblgmobile.Text = ac.GMobile;
            lblgname.Text = ac.GName;
            lblfname.Text = ac.Fname;
            lblfmobile.Text = ac.FMobile;
            lblshift.Text = ac.Shift;
            lblparaddreds.Text = ac.PrAddress;
            lbldistric.Text = ac.ParDistrict;
            lblstate.Text = ac.ParState;
            lblmname.Text = ac.Mname;
            lblmemail.Text = ac.MEmail;
            lblmmobile.Text = ac.MMobile;
            //profileimg.ImageUrl = ac.ImageUr;
        }
    }
}