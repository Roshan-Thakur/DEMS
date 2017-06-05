using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.FormUserRagistration
{
    public partial class EmpRegiForm : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL ad = new FormUserRegistrationModule.EmployeeregBL();
        public double cardno=01111;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            group();
            degree();
            rel();
            blood();
            dept();
            }
            ++cardno;
        }
       
        protected void rdchange_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblmsg.Text = rdchange.SelectedItem.Text;
        }
        protected void employeeregis()
        {
            string fil = ImageUpload.PostedFile.FileName;
            ImageUpload.PostedFile.SaveAs(Server.MapPath("/Imgempstaff/" + fil));
            ad.Profile = ("/Imgempstaff/" + fil);            
            ad.Address = txtxaddres.InnerText;
            ad.Blood = ddlblood.Text;
            ad.Degree = ddldegree.Text;
            ad.DepartureTime = ddldept.Text;
            ad.Designation = ddldesig.Text;
            ad.DOB = txtdob.Text;
            ad.DOJ = txt.Text;
            ad.Email = txtemail.Text;
            ad.FName = txtfname.Text;
            ad.Gender = ddlgender.Text;
            ad.MeritStatus = TextBox1.Text;
            ad.MName = txtmotname.Text;
            ad.Name = txtname.Text;
            ad.Nationality = ddlnation.Text;
            ad.Phone = txttell.Text;
            ad.Religion = ddlreligion.Text;
            ad.Shift = ddlshift.Text;
            ad.Status = ddlstatus.Text;
            ad.Type = rdchange.SelectedValue;
            //ad.Type = rdchange.SelectedItem.Text;
            ad.CardNo = "EMP" + txtname.Text.Substring(0, 1) + txtemail.Text.Substring(0, 2) + cardno;
            ad.InserEmp();
            lblmsg.Text = ad.msg;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            employeeregis();
        }
        private void group()
        {
            AdminSettingModule.AddclassGroupListBL grp = new AdminSettingModule.AddclassGroupListBL();
            grp.fnselectgroup();
            ddldesig.DataSource = grp.dl.DataSource;
            ddldesig.DataTextField = grp.dl.DataTextField;
            ddldesig.DataBind();
            ListItem litem = new ListItem("--Select Designation--", "-1");
            ddldesig.Items.Insert(0, litem);
        }
        private void degree()
        {
            AdminSettingModule.AddclassGroupListBL adm = new AdminSettingModule.AddclassGroupListBL();
            adm.fnclassshow();
            ddldegree.DataSource = adm.ar1;
            ddldegree.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddldegree.Items.Insert(0, litem);
        }
        private void blood()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.funshowblood();
            ddlblood.DataSource = dd.ddl.DataSource;
            ddlblood.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlblood.Items.Insert(0, litem);
        }
        protected void dept()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowdept();
            ddldept.DataSource = dd.ddl.DataSource;
            ddldept.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddldept.Items.Insert(0, litem);
        }
        protected void rel()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowreligion();
            ddlreligion.DataSource = dd.ddl.DataSource;
            ddlreligion.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlreligion.Items.Insert(0, litem);
        }
    }
}