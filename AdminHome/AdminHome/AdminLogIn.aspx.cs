using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AdminHome
{
    public partial class AdminLogIn : System.Web.UI.Page
    {
        static string con = System.Configuration.ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        FormUserRegistrationModule.EmployeeregBL emp = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstname"] != null)
            {
                Session.Abandon();
                Session.Clear();
                Response.Redirect("AdminLogIn.aspx");
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (rdadmin.Selected)
            {
                AdminLog_In();
            }
            else if (rdstudent.Selected)
            {
                StudentLogIn();
            }
            else
            {
                TeacherlogIn();
            }
           // AdminLog_In();
            
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            
        }

        protected void forget_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminforget.aspx");
        }
        private void StudentLogIn()
        {
            if(username.Text!=string.Empty && Password.Text!=string.Empty)
            {
                ac.Password = Password.Text.Trim();
                ac.StName = username.Text.Trim();
                ac.StudentLogin();
                if (ac.ActiveStatus == "Activated")
                {
                    Session["FormNo"]=ac.RollNo;
                    Session["StName"]=ac.StName;
                    Response.Redirect("~/StudentDasboard.aspx");
                }
                else if (ac.ActiveStatus == "Deactivated")
                {
                    lblnotify.Text = "Id is Deactivated,Please Contact With Admin!";
                }
                else
                {
                    lblnotify.Text = ac.msg;
                }
            }
        }
        private void TeacherlogIn()
        {
            if (username.Text != string.Empty && Password.Text != string.Empty)
            {
                emp.Password = Password.Text.Trim();
                emp.Name = username.Text.Trim();
                emp.LoginTeacher();
                if (emp.ActiveStatus == "Activated")
                {
                    Session["EId"]=emp.EID.ToString();
                    Session["email"]=emp.Email.ToString();
                    Session["name"]=emp.Name;
                    Response.Redirect("~/TeacherDasboard.aspx");
                }
                else if (emp.ActiveStatus == "Deactivated")
                {
                    lblnotify.Text = "Id is Deactivated,Please Contact With Admin!";
                }
                else
                {
                    lblnotify.Text = emp.msg;
                }
            }
            
        }

        private void AdminLog_In()
        {
            try
            {
                cn.Open();
                string query = "select * from AdminProfile where email='" + username.Text + "'";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd = com.ExecuteReader();
                if (rd.Read())
                {
                    string s = Password.Text;
                    var s1 = rd[7].ToString().Trim();
                    if (s.CompareTo(s1) == 0)
                    {
                        Session["firstname"] = rd["firstname"].ToString();
                        Session["lastname"] = rd["lastname"].ToString();
                        Session["EId"]=rd["uid"].ToString();
                        Response.Redirect("AdminControlPanel/AdminHomeTable.aspx");
                        lblnotify.Text = "LogIn Sucessfully!";
                    }
                    else
                    {
                        lblnotify.Text = "Sorry Invalid Password!";
                    }
                }
                else
                {
                    lblnotify.Text = "Sorry You Have Readability Problem!";
                }
            }
            catch (Exception ex)
            {
                lblnotify.Text = "Sorry You Have Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }

        protected void radio1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDasboard.Text = radio1.SelectedItem.Text;
        }
    }
}