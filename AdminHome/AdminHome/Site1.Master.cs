using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstname"] == null)
            {
                Response.Redirect("AdminLogIn.aspx");
            }
            else
            {
                username.Text = Session["firstname"].ToString()+" "+ Session["lastname"].ToString(); 
                name.Text = Application["visit"].ToString();
                
            }
        }
        
    }
}