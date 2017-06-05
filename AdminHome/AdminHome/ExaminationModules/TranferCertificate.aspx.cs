using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class TranferCertificate : System.Web.UI.Page
    {
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        StudentInfoBL st = new StudentInfoBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectrollno();
            }
        }
        public void selectrollno()
        {
            ac.selectrollst();
            ddlroll.DataSource = ac.ddl.DataSource;
            ddlroll.DataTextField = "FormNo";
            ddlroll.DataBind();
            System.Web.UI.WebControls.ListItem tm = new System.Web.UI.WebControls.ListItem("Roll_No", "-1");
            ddlroll.Items.Insert(0, tm);
        }

        protected void btnroll_Click(object sender, EventArgs e)
        {
            ac.FormNo =Convert.ToInt32(ddlroll.SelectedValue);
            ac.selectstudentInfo();
            ExaminationBL ex = new ExaminationBL();
            ex.retriveCollectedmarksheet();
            DataView dv = new DataView(ex.sourc);
            dv.RowFilter = "formno='"+ddlroll.SelectedValue+"'";
            if(dv.Count>0)
            {
                DataTable dt=new DataTable();
                dt=dv.ToTable();
                lblstatus.Text =dt.Rows[0]["status"].ToString();
                lblgrade.Text = "Good";
            }else
                {
                    lblstatus.Text = "No have Status!";
                }
            lbladdress.Text = ac.PrAddress + "," + ac.Prdistrict;
            lblbatch.Text = ac.Batch;
            lblcontact.Text = ac.FMobile;
            lbldegree.Text = ac.StClass;
            lbldob.Text = ac.Dob;
            lblfname.Text = ac.Fname;
            lblpassyr.Text = System.DateTime.Now.Year.ToString();
            lblstname.Text = ac.StName;
            lblTCID.Text = "RD111" + ddlroll.SelectedValue + ac.Dob + System.DateTime.Now.ToShortTimeString();
            lblTD.Text = System.DateTime.Now.ToShortDateString();
            lblteacher.Text =ac.TeacherId.ToString();
        }
    }
}