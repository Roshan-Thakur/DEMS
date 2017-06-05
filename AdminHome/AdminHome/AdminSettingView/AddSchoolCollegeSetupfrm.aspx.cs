using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddSchoolCollegeSetupfrm : System.Web.UI.Page
    {
        AdminSettingModule.CollegeInfofrmBL clg = new AdminSettingModule.CollegeInfofrmBL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsav_Click(object sender, EventArgs e)
        {
            //ProfileImage Upload
            string fil = ImageUpload.PostedFile.FileName;
            ImageUpload.PostedFile.SaveAs(Server.MapPath("/Uploads/" + fil));

            clg.ImagUrl = ("/Uploads/" + fil);
            clg.InstituName = txtname.Text;
            clg.Telephone = txttell.Text;
            clg.Address = txtxaddres.InnerText;
            clg.Country = txtcountry.Text;
            clg.Email = txtemail.Text;
            clg.Fax = txtxfax.Text;
            clg.Registration = txtxreg.Text;
            clg.fnInfoInsert();
            lblmsg.Text = clg.msg;
        }

       
    }
}