using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AccademicManagement
{
    public partial class AdmissionUpdateForm : System.Web.UI.Page
    {
        StudentInfoBL st = new StudentInfoBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblid.InnerText="Student RollNo:"+Request.QueryString["id"].ToString();
            if(!IsPostBack)
            {
            blood();
            }
        }
        private void blood()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.funshowblood();
            ddlbld.DataSource = dd.ddl.DataSource;
            ddlbld.DataTextField = "bloodgrp";
            ddlbld.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlbld.Items.Insert(0, litem);
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string[] arg = lblid.InnerText.Split(':');
            st.FormNo =Convert.ToInt32(arg[1].Trim());
            st.StName = txtname.Value.ToString();
            st.HMobile = txtmobile.Value;
            st.BloodGroup = ddlbld.SelectedValue;
            st.FEmail = txtemail.Value.ToString();
            st.Gender = ddlgender.SelectedValue;
            st.Religion = txtreligion.Value.ToString();
            st.Fname = txtfname.Value;
            st.Dob = txtdob.Value;
            st.FMobile = txtfmobile.Value;
            st.Mname = txtmname.Value;
            st.MMobile = txtmmobile.Value;
            st.MEmail = txtmemail.Value;
            st.GName = txtgname.Value;
            st.GAddress = txtgaddress.Value;
            st.GMobile = txtmobile.Value;
            st.Shift = ddlshift.SelectedValue;
            st.AddYear = txtaddyr.Value;
            st.PrAddress = txtaddress.Value;
            st.PrState = txtstate.Value;
            st.TakeAddmision = System.DateTime.Now.ToShortDateString();
            st.Prdistrict = txtdistrict.Value;
            string fil = ImageUpload.PostedFile.FileName;
            ImageUpload.PostedFile.SaveAs(Server.MapPath("../StudentImage/" + fil));
            st.ImageUr = ("/StudentImage/" + fil);
            st.RollNo =arg[1].Trim();
            st.updateStudentDetails();
            lblmsg.InnerText = st.msg;
        }
    }
}