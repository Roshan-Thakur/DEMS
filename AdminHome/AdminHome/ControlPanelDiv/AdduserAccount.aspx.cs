using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.ControlPanelDiv
{
    public partial class AdduserAccount : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL ad = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            username();
            }
        }
        protected void username()
        {
            ad.SelectUsername();
            ddlusername.DataSource = ad.ddl.Items;
            ddlusername.DataBind();
        }
        protected void btn_Click(object sender, EventArgs e)
        {
            ad.Password = txtcnpass.Text;
            ad.ActiveStatus = chkactive.Checked ? "Activated" : "Deactivated";
            string user = ad.UserName = ddlusername.SelectedValue;
            string[] str = user.Split('_');
            ad.EID = Convert.ToInt32(str[0]);
            ad.CreatedDate = System.DateTime.Now.ToShortDateString();
            ad.updatePassword();
            lblmsg.Text = ad.msg;
            txtcnpass.Text = string.Empty;
            txtnewpass.Text = string.Empty;
            chkactive.Checked = false;
            
        }
    }
}