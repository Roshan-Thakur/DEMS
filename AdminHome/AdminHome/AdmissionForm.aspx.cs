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
    public partial class AdmissionForm : System.Web.UI.Page
    {
        
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection();
        StudentInfoBL st = new StudentInfoBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Image set
            string fil = ImageUpload.PostedFile.FileName;
            ImageUpload.PostedFile.SaveAs(Server.MapPath("/StudentImage/" + fil));
            st.ImageUr = ("/StudentImage/" + fil);
            st.StName = txtStudentname.Text;
            st.FormNo =Convert.ToInt32(txtAdmissionNo.Text);
            st.StClass = ddlClass.Text;
            st.Date1 = date1.Text;
            st.Religion = dlReligion.Text;
            st.Gender = ddlGender.Text;
            st.Group1 = ddlGroup.Text;
            st.Shift = dlShift.Text;
            st.Section = ddlSection.Text;
            st.RollNo = txtRoll.Text;
            st.Dob = txtDateOfBirth.Text;
            st.FMobile = txtmobile.Text;
            st.Section = ddlSession.Text;
            st.Batch = ddlBatch.Text;
            st.BloodGroup = dlBloodGroup.Text;
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
            st.GAddress = txtgurdadress.Text;
            st.GName = txt1.Text;
            st.GRelation = Select1.Text;
            st.GMobile = txtGurdianmobile.Text;
            st.HMobile = txtHomeMobile.Text;
            st.PrAddress = txtPAVillage.Text;
            st.Prdistrict = ddlPADistrict.Text;
            st.PrState = txtPAPostOffice.Text;
            st.ParAddress = txtTAVillage.Text;
            st.ParDistrict = ddlTADistrict.Text;
            st.ParState = txtTAPostOffice.Text;
            st.PreScholName = txtPreviousSchoolName.Text;
            st.PreRollNo = txtPSCRoll.Text;
            st.PreBoard = ddlBoard.Text;
            st.PassingYr = ddlPassingYear.Text;
            st.Preragistraion = txtRegistration.Text;
            st.AddYear = txtTrDate.Text;
            st.TranferCerti = txtTransferCNo.Text;
            st.TakeAddmision = ddlThatClass.Text;
            st.AdmissionInsert();
            lbladmission.Text = st.msg;
        }

    }
}