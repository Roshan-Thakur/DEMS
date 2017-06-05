using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.IO;

namespace AdminHome
{
    
    public partial class AdminProfile : System.Web.UI.Page
    {
        //private string First;
        //public string Last;
        //public string Id;
        //public string Mail;
        //public string Mobile;
         // public var Dob;
        //public string Gender;
        //public string Password;
        //public string Url;

        static string con = System.Configuration.ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        
        protected void Page_Load(object sender, EventArgs e)
        {
           //create appliaction state variable and assign the variable
            //Application["visit"] = ((Convert.ToInt16(Application["visit"])+ 1)).ToString();
            //visitor.Text = Application["visit"].ToString();
            if(!IsPostBack)
            {
            gallary();
            BindDDL("Year");
            BindDDL("Month");
            BindDDL("Date");
            current.Text = Convert.ToString(DateTime.Now);
            }
        }
        private void gallary()
        {
            string[] fileindirectory = Directory.GetFiles(Server.MapPath("~/ProfileImage/"));
            List<string> image = new List<string>(fileindirectory.Count());
            foreach(string item in fileindirectory)
            {
                image.Add(String.Format("~/ProfileImage/{0}",Path.GetFileName(item)));
            }
            RepeterImage.DataSource = image;
            RepeterImage.DataBind();
            
        }

        protected void first_TextChanged(object sender, EventArgs e)
        {

        }
        private void BindDDL(string ddl)
        {
            switch (ddl)
            {
                case "Year":
                    lyear.DataSource = GetYear();
                    lyear.DataBind();
                    lyear.Items.Insert(0, new ListItem("Year"));
                    break;
                case "Date":
                    day.DataSource = GetDate();
                    day.DataBind();
                    day.Items.Insert(0, new ListItem("Date"));
                    break;
                case "Month":
                    mont.DataSource = GetMonth();
                    mont.DataBind();
                    mont.Items.Insert(0, new ListItem("Month"));
                    break;
            }
        }
        private List<int> GetYear()
        {
            List<int> year = new List<int>();
            for (int i = (DateTime.Now.Year) - 40; i != (DateTime.Now.Year) - 18; i++)
            {
                year.Add(i);
            }
            return year;

        }
        private List<int> GetDate()
        {
            List<int> date = new List<int>();
            for (int i = 1; i <= 31; i++)
            {

                date.Add(i);
            }
            return date;
        }
        private List<string> GetMonth()
        {
            List<string> month = new List<string>();
            for (int i = 1; i <= 12; i++)
            {
                // DateTimeFormatInfo t = new DateTimeFormatInfo();
                string m = CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i);
                month.Add(m);
            }
            return month;
        }

        protected void upload(object sender, EventArgs e)
        {
            if (uploadimage.HasFile)
            {
                uploadimage.SaveAs(Server.MapPath("~/ProfileImage/" + this.uploadimage.FileName));
                string fileName = Path.GetFileName(this.uploadimage.PostedFile.FileName);
                this.Image1.ImageUrl = "ProfileImage/" + fileName.ToString();
                lblimage.Text ="Image_Name : "+ fileName;
            }
            else
            {
                lblimage.Text = "Plz Select Image From FileUpoader!";
            }
        }
       
        protected void submit_Click(object sender, EventArgs e)
        {
            string filepath = ImageUpload.PostedFile.FileName;
            ImageUpload.PostedFile.SaveAs(Server.MapPath("/images/" + filepath));
            string filname = Path.GetFileName(filepath);
             profileRagistation();
        }
        public void profileRagistation()
        {
            try
            {
                cn.Open();
        //        First = first.Text;
        //        Last = last.Text;
        //        Id = uid.Text;
        //        Mail = email.Text;
        //        Mobile = mobile.Text;
               //   Dob = day.Text + "/" + mont.Text + "/" + lyear.Text;
        //        Gender = gender1.Text;
        //        Password = txtpaswd.Text;
        //        Url = "~/ProfileImage" + uploadimage.FileName.ToString();
                  SqlCommand com = new SqlCommand("insert into AdminProfile(uid, email, mobile, gender, firstname, lastname, password)values('" + uid.Text + "','" + email.Text + "','" + mobile.Text + "','" + gender1.Text + "','" + first.Text + "','" + last.Text + "','" + txtpaswd.Text + "')", cn);
                  
                int ad = com.ExecuteNonQuery();
                if (Convert.ToString(ad) == "1")
                {
                    success.Text = "Ragistation Succesfully!";
                }
                else
                {
                    success.Text = "Sorry Plz Check all Required Field!";
                }
            }
            catch (Exception ex)
            {
                success.Text = "You have Exception : " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
    }
}