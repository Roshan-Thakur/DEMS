using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.ControlPanelDiv
{
    public partial class AddStudentAccount : System.Web.UI.Page
    {
        StudentInfoBL st = new StudentInfoBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                UserNameSelect();
            }
        }
        protected void UserNameSelect()
        {
            st.selectusername();
            ddlstudent.DataSource = st.ddl.Items;
            ddlstudent.DataBind();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string user= st.UserName = ddlstudent.SelectedValue;
            string[] argu= user.Split('_');
            //int formno =Convert.ToInt32(argu[0]);
            st.FormNo =Convert.ToInt32(argu[0]);
            st.Password = txtcnpass.Text;
            st.ActiveStatus = chkactive.Checked ? "Actived" : "Deactivated";
            st.CreatedDate = System.DateTime.Now.ToShortDateString();
            st.InsertPassStatus();
            lblmsg.Text = st.msg;
            txtcnpass.Text = string.Empty;
            txtnewpass.Text = string.Empty;
            chkactive.Checked = false;
            
        }


    }
}