using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminControlPanel
{
    public partial class AddSuperAdmin : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL admin = new FormUserRegistrationModule.EmployeeregBL();
        string Userid=string.Empty,creatername=string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!=null)
            {

                btnsubmit.Visible = false;
                btnUpdate.Visible = true;
                Userid =Request.QueryString["id"];
                SelectAdmin();
            }
            else if (Request.QueryString["creatername"]!=null)
            {
                creatername = Request.QueryString["creatername"];
                btnsubmit.Visible = true;
                btnUpdate.Visible = false;
                lblmsg.Text = Request.QueryString["creatername"] + "," + "Welcome to new user Ragistration!";
            }
        }
        public void SelectAdmin()
        {
                        admin.EID = Convert.ToInt32(Userid);
                        admin.SelectAdminProfile();
                        btnsubmit.Visible = false;
                        txtlastname.Value = admin.Lastname;
                        txtfirstname.Value = admin.Firstname;
                        txtdob.Value = admin.DOB;
                        txtfname.Value = admin.FName;
                        txtaddress.Value = admin.Address;
                        txtbld.Value = admin.Blood;
                        dddesignation.SelectedValue = admin.Designation;
                        txtcollege.Value = admin.College;
                        txtdegree.Value = admin.Degree;
                        txtschool.Value = admin.School;
                        txtemail.Value = admin.Email;
                        txtphone.Value = admin.Phone;
                        txtaddress.Value = admin.Address;
                        txtarea1.Value = admin.P1;
                        txtarea2.Value = admin.P2;
                        txtusername.Value = admin.UserName;
                        txtpassword.Value = admin.Password;
                        ddlgender.SelectedValue = admin.Gender;
                        ddstatus.SelectedValue = admin.Status;
                        impPrev.ImageUrl = admin.Profile;
  
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if(txtemail.Value!=string.Empty && txtpassword.Value!=string.Empty && ddstatus.SelectedValue!="-1" )
            {
                admin.Lastname = txtlastname.Value;
                admin.Firstname = txtfirstname.Value;
                admin.DOB = txtdob.Value;
                admin.FName = txtfname.Value;
                admin.Address = txtaddress.Value;
                admin.Blood = txtbld.Value;
                admin.Designation = dddesignation.SelectedValue;
                admin.College = txtcollege.Value;
                admin.Degree = txtdegree.Value;
                admin.School = txtschool.Value;
                admin.Email = txtemail.Value;
                admin.Phone = txtphone.Value;
                admin.Address = txtaddress.Value;
                admin.P1 =txtarea1.Value;
                admin.P2 = txtarea2.Value;
                admin.UserName = txtusername.Value;
                admin.Password = txtpassword.Value;
                admin.CreateByUser = creatername.ToString();
                admin.Gender = ddlgender.SelectedValue;
                admin.Status = ddstatus.SelectedValue;
                string fil = imageupload.PostedFile.FileName;
                imageupload.PostedFile.SaveAs(Server.MapPath("/Imgempstaff/" + fil));
                admin.Profile = ("/Imgempstaff/" + fil);
                admin.AdminInsert();
                lblmsg.Text = admin.msg;
                txtemail.Value = "";
                txtpassword.Value = "";
                ddstatus.ClearSelection();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            if (txtemail.Value != string.Empty && txtpassword.Value != string.Empty && ddstatus.SelectedValue != "-1")
            {
                admin.Lastname = txtlastname.Value;
                admin.Firstname = txtfirstname.Value;
                admin.DOB = txtdob.Value;
                admin.FName = txtfname.Value;
                admin.Address = txtaddress.Value;
                admin.Blood = txtbld.Value;
                admin.Designation = dddesignation.SelectedValue;
                admin.College = txtcollege.Value;
                admin.Degree = txtdegree.Value;
                admin.School = txtschool.Value;
                admin.Email = txtemail.Value;
                admin.Phone = txtphone.Value;
                admin.Address = txtaddress.Value;
                admin.P1 = txtarea1.Value;
                admin.P2 = txtarea2.Value;
                admin.UserName = txtusername.Value;
                admin.Password = txtpassword.Value;
                admin.Gender = ddlgender.SelectedValue;
                admin.Status = ddstatus.SelectedValue;
                string fil = imageupload.PostedFile.FileName;
                imageupload.PostedFile.SaveAs(Server.MapPath("/Imgempstaff/" + fil));
                admin.Profile = ("/Imgempstaff/" + fil);
                admin.UpdateAdminProfile();
                lblmsg.Text = admin.msg;
                txtemail.Value = "";
                txtpassword.Value = "";
                ddstatus.ClearSelection();
            }
        }
    }
}