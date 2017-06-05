using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.FormUserRagistration
{
    public partial class viewformemp : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL upd = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageUpload.Attributes.Add("onchange", "javascript:ShowPreview(input)");
            if(!IsPostBack)
            {
            selectemp();
            blood();
            dept();
            group();
            ClassName();
            religion();
            }

        }
        private void blood()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.funshowblood();

            ddlblood.DataSource = dd.ddl.DataSource;
            ddlblood.DataBind();
            ListItem litem = new ListItem("--Select--", "0");
            ddlblood.Items.Insert(0, litem);
        }
        protected void dept()
            {
                AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
                dd.fnshowdept();

                ddldept.DataSource = dd.ddl.DataSource;
                ddldept.DataBind();
                ListItem litem = new ListItem("--Select--", "0");
                ddldept.Items.Insert(0, litem);
            }
        private void group()
        {
            AdminSettingModule.AddclassGroupListBL grp = new AdminSettingModule.AddclassGroupListBL();
            grp.fnselectgroup();
            ddldesig.DataSource = grp.dl.DataSource;
            ddldesig.DataTextField = grp.dl.DataTextField;
            ddldesig.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddldesig.Items.Insert(0, litem);
        }
        private void ClassName()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowClass();
            ddldegree.DataSource = dd.ddl.DataSource;
            ddldegree.DataTextField = "ClassType";
            ddldegree.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddldegree.Items.Insert(0, litem);
        }
        private void religion()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowreligion();
            ddlreligion.DataSource = dd.ddl.DataSource;
            ddlreligion.DataTextField = dd.ddl.DataTextField;
            ddlreligion.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlreligion.Items.Insert(0, litem);
        }
        private void selectemp()
        {
            string id = Request.QueryString["id"];
            upd.EID = Int32.Parse(id);
            upd.selectemp();
            txtnumber.Text = id;
            txtname.Text = upd.Name;
            txtxaddres.InnerText = upd.Address;
            txt.Text = upd.DOJ;
            txtdob.Text = upd.DOB;
            txtemail.Text = upd.Email;
            txtmotname.Text = upd.MName;
            txtfname.Text = upd.FName;
            txttell.Text = upd.Phone;
            TextBox1.Text = upd.MeritStatus;
            ddlblood.SelectedValue = upd.Blood;
            ddldegree.SelectedValue = upd.Degree;
            ddldept.SelectedValue = upd.DepartureTime;
            ddldesig.SelectedValue = upd.Designation;
            ddlgender.SelectedValue = upd.Gender;
            ddlnation.SelectedValue = upd.Nationality;
            ddlreligion.SelectedValue = upd.Religion;
            ddlshift.SelectedValue = upd.Shift;
            ddlstatus.SelectedValue = upd.Status;
            ddltype.SelectedValue = upd.Type;
            impPrev.ImageUrl = upd.Profile;
           // ImageUpload.Value = upd.Profile.ToString(); 
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            upd.EID =Int32.Parse(txtnumber.Text);
            upd.Name = txtname.Text;
            upd.Address = txtxaddres.InnerText;
            upd.DOJ = txt.Text;
            upd.DOB = txtdob.Text;
            upd.Email = txtemail.Text;
            upd.MName = txtmotname.Text;
            upd.FName = txtfname.Text;
            upd.Phone = txttell.Text;
            upd.MeritStatus = TextBox1.Text;
            upd.Blood = ddlblood.SelectedValue;
            upd.Degree = ddldegree.SelectedValue;
            upd.DepartureTime = ddldept.SelectedValue;
            upd.Designation = ddldesig.SelectedValue;
            upd.Gender = ddlgender.SelectedValue;
            upd.Nationality = ddlnation.SelectedValue;
            upd.Religion = ddlreligion.SelectedValue;
            upd.Shift = ddlshift.SelectedValue;
            upd.Status = ddlstatus.SelectedValue;
            upd.Type = ddltype.SelectedValue;
            //Image update
            string fil = ImageUpload.PostedFile.FileName;
            ImageUpload.PostedFile.SaveAs(Server.MapPath("/Imgempstaff/" + fil));
            upd.Profile = ("/Imgempstaff/" + fil);
            //
            upd.updateemp();
            lblmsg.Text = upd.msg+upd.Profile;
            
        }
    }
}