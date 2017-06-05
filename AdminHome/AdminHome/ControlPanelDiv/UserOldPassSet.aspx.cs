using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.ControlPanelDiv
{
    public partial class UserOldPassSet : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL st = new FormUserRegistrationModule.EmployeeregBL();
        int  eid;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["index"];
            if(id!=null)
            {
            fetcheditems();
            }else
            {
                Response.Redirect("~/ControlPanelDiv/UserAccountList.aspx");
            }

        }
        protected void fetcheditems()
        { 
            string[] str = id.Split('_');
            eid = Convert.ToInt32(str[5]);
            txtoldpass.Text = str[4];
            txtusename.Text = str[0] + "__" + str[2];
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            st.UserName = txtusename.Text;
            st.Password = txtcnpass.Text;
            st.ActiveStatus = chkactive.Checked ? "Activated" : "Deactivated";
            st.CreatedDate = System.DateTime.Now.ToShortDateString();
            st.EID = eid;
            st.updatePassword();
            lblmsg.Text = st.msg + st.UserName + st.Password + st.CreatedDate;
            txtcnpass.Text = null;
            txtnewpass.Text = null;
            chkactive.Checked = false;
            Response.Redirect("~/ControlPanelDiv/UserAccountList.aspx");
        }

    }
}