using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AdminHome.AccademicManagement
{
    public partial class AdmissionForm : System.Web.UI.Page
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection();
        StudentInfoBL st = new StudentInfoBL();
        AdminSettingModule.AddBatchYr batch = new AdminSettingModule.AddBatchYr();
        AdminSettingModule.filterDataBL ft = new AdminSettingModule.filterDataBL();
        AdminSettingModule.AddSectionBL sec = new AdminSettingModule.AddSectionBL();
        public string msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                state();
                group();
                degree();
                rel();
                blood();
                district();
            }
        }


        protected void btnsave_Click(object sender, EventArgs e)
        {
            //Image set
            string fil = ImageUpload.PostedFile.FileName;
            ImageUpload.PostedFile.SaveAs(Server.MapPath("../StudentImage/" + fil));
            st.ImageUr = ("/StudentImage/" + fil);
            st.StName = txtStudentname.Text;
           // st.FormNo =Convert.ToInt32(txtAdmissionNo.Text);
            st.StClass = ddlClass.SelectedValue;
            st.Date1 = txtdate.Text;
            st.Religion = ddlreligion.SelectedValue;
            st.Gender = ddlGender.SelectedValue;
            st.Group1 = ddlGroup.SelectedValue;
            st.Shift = dlShift.SelectedValue;
            st.Section = ddlSection.SelectedValue;
            st.RollNo = txtRoll.Text;
            st.Dob = txtdob.Text;
            st.FMobile = txtMobile.Text;
            st.Section = ddlSection.SelectedValue;
            st.Batch = ddlBatch.Text;
            st.BloodGroup = ddlblood.SelectedValue;
            st.Fname = txtfatherName.Text;
            st.Foccupation = txtFatherOccupation.Text;
            st.FIncome = txtFatherYearlyIncome.Text;
            st.MMobile = txtMotherMobile.Text;
            st.Moccupation = txtMotherOccupation.Text;
            st.Mname = txtMotherName.Text;
            st.MIncome = txtMotherYearlyincome.Text;
            st.FMobile = txtFatherMobile.Text;
            st.FEmail = txtFatherEmail.Text;
            st.MEmail = txtMotherEmail.Text;
            st.GAddress = txtgurdianAdd.Text;
            st.GName = txtgurdianName.Text;
            st.GRelation = ddlgrelation.SelectedValue;
            st.GMobile = txtgudianmobile.Text;
            st.HMobile = txtHomeMobile.Text;
            st.PrAddress = txtvillage.Text;
            st.Prdistrict = ddlthana.SelectedValue;
            st.PrState = txtpostoff.Text;
            st.ParAddress = ddlprthana.Text;
            st.ParDistrict = ddlprdistr.SelectedValue;
            st.ParState = txtprpo.Text;
            st.PreScholName = txtPreviousSchoolName.Text;
            st.PreRollNo = txtPSCRoll.Text;
            st.PreBoard = ddlboard.SelectedValue;
            st.PassingYr = txtpassingyr.Text;
            st.Preragistraion = txtRegistra.Text;
            st.AddYear = txtTrDate.Text;
            st.TranferCerti = txtTransferCNo.Text;
            st.TakeAddmision = ddlThatClass.Text;
            st.AdmissionInsert();
            lbladmission.Text = st.msg;
        }
        private void group()
        {
            AdminSettingModule.AddclassGroupListBL grp = new AdminSettingModule.AddclassGroupListBL();
            grp.fnselectgroup();
            ddlGroup.DataSource = grp.dl.DataSource;
            ddlGroup.DataTextField = grp.dl.DataTextField;
            ddlGroup.DataBind();
            ListItem litem = new ListItem("--Select Designation--", "-1");
            ddlGroup.Items.Insert(0, litem);
            sec.fnshowSection();
            ddlSection.DataSource = sec.typ1;
            ddlSection.DataTextField = "section";
            ddlSection.DataBind();
        }
        private void degree()
        {
            AdminSettingModule.AddclassGroupListBL adm = new AdminSettingModule.AddclassGroupListBL();
            adm.fnclassshow();
            ddlClass.DataSource = adm.ar1;
            ddlClass.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlClass.Items.Insert(0, litem);
        }
        private void blood()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.funshowblood();
            ddlblood.DataSource = dd.ddl.DataSource;
            ddlblood.DataTextField = "bloodgrp";
            ddlblood.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlblood.Items.Insert(0, litem);
        }
        protected void rel()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowreligion();
            ddlreligion.DataSource = dd.ddl.DataSource;
            ddlreligion.DataTextField = "religion";
            ddlreligion.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlreligion.Items.Insert(0, litem);
            batch.grdBatchDisplay();
            ddlBatch.DataSource = batch.ddlbatch.Items;
            ddlBatch.DataBind();
            ListItem litem1 = new ListItem("--Select State--", "-1");
            ddlBatch.Items.Insert(0, litem1);
        }
        protected void state()
        {
            ft.RetrivState();
            ddlthana.DataSource = ft.ddl.DataSource;
            ddlthana.DataTextField = "state";
            ddlthana.DataBind();
            ddlprthana.DataSource = ft.ddl.DataSource;
            ddlprthana.DataTextField = "state";
            ddlprthana.DataBind();
            ListItem litem = new ListItem("--Select State--", "-1");
            ddlthana.Items.Insert(0, litem);
            ddlprthana.Items.Insert(0,litem);

        }
        protected void district()
        {
            ft.Retrivedistrict();
            ddldistrict.DataSource = ft.ddl.DataSource;
            ddldistrict.DataTextField = "district";
            ddldistrict.DataBind();
            ddlprdistr.DataSource = ft.ddl.DataSource;
            ddlprdistr.DataTextField = "district";
            ddlprdistr.DataBind();
            ListItem litem = new ListItem("--Select District--", "-1");
            ddldistrict.Items.Insert(0, litem);
            ddlprdistr.Items.Insert(0, litem);
        }
    }
}