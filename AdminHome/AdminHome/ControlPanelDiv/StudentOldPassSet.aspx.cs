using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.ControlPanelDiv
{
    public partial class StudentOldPassSet : System.Web.UI.Page
    {
        StudentInfoBL st = new StudentInfoBL();
        public string formno,id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["arg"];
            if (id != null)
            {
                fetchitems();
            }
            else
            {
                Response.Redirect("~/ControlPanelDiv/StudentAccountList.aspx");
            }
        }
        private void fetchitems()
        {
            string id = Request.QueryString["arg"];
            string[] str = id.Split('_');
            string pass=str[1];
            formno=str[2];
            string username = str[0];
            //lblmsg.Text = pass + "," +formno+ "," +username;
            txtusername.Text = username;
            txtoldpass.Text = pass;
        }
        private void OldPassChange()
        {
            st.FormNo =Convert.ToInt32( formno);
            st.Password = txtcnpass.Text;
            st.ActiveStatus = chkactive.Checked ? "Activated" : "Deactivated";
            st.UserName = txtusername.Text;
            st.CreatedDate = System.DateTime.Now.ToShortDateString();
            st.InsertPassStatus();
            lblmsg.Text = st.msg;
            txtcnpass.Text = null;
            txtnewpass.Text = null;
            chkactive.Checked = false;
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            OldPassChange();
            Response.Redirect("~/ControlPanelDiv/StudentAccountList.aspx");
        }
       
    }
}