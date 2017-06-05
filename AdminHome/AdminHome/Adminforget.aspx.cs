using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome
{
    public partial class Adminforget : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL admin = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ResetPassword_Click(object sender, EventArgs e)
        {

            if (NewPassword.Text.Trim() == conpassword.Text.Trim() && email.Text != string.Empty && username.Text != string.Empty)
            {
                admin.Email = email.Text;
                admin.Password = NewPassword.Text.Trim();
                admin.UpdateAdminPassword();
                lblmsg.Text = admin.msg;
            }
            else
            {
                lblmsg.Text = "Your Password or Email does not match with database!";
            }

        }

    }
}