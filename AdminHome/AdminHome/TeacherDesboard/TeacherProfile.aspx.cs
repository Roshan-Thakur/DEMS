using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.TeacherDesboard
{
    public partial class TeacherProfile : System.Web.UI.Page
    {
        public int userid;
        FormUserRegistrationModule.EmployeeregBL emp = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["EId"] != null)
            {
                userid = Convert.ToInt32(Session["EId"].ToString());
                selectinfo();
            }
            else
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }
        }
        public void selectinfo()
        {
            emp.EID = userid;
            emp.selectemp();
            lblname.Text = emp.Name;
            lbldob.Text = emp.DOB;
            lblbldgrp.Text = emp.Blood;
            lbladdress.Text = emp.Address;
            lblbasic.Text = emp.Basic;
            lbldegree.Text = emp.Degree;
            lbldept.Text = emp.DepartureTime;
            lbldesignation.Text = emp.Designation;
            lblemail.Text = emp.Email;
            lblfname.Text = emp.FName;
            lblgender.Text = emp.Gender;
            lblgrosspay.Text = emp.Gross;
            lbljdate.Text = emp.DOJ;
            lbllshift.Text = emp.Shift;
            lblmarrital.Text = emp.MeritStatus;
            lblmnane.Text = emp.MName;
            lblmobile.Text = emp.Phone;
            lblnationality.Text = emp.Nationality;
            lblstatus.Text = emp.Status;
            lbltotal.Text = emp.Total;
            lbltype.Text = emp.Type;
            lreligionlb.Text = emp.Religion;
            lblmsg.Text = emp.msg;
           
        }
    }
}