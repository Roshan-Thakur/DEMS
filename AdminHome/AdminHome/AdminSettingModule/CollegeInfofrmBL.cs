using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace AdminHome.AdminSettingModule
{
    public class CollegeInfofrmBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        public string msg;
        private string _instname; public string InstituName { get { return _instname; } set { _instname = value; } }
        private string _address; public string Address { get { return _address; } set { _address = value; } }
        private string _tel; public string Telephone { get { return _tel; } set { _tel = value; } }
        private string _fax; public string Fax { get { return _fax; } set { _fax = value; } }
        private string _email; public string Email { get { return _email; } set { _email = value; } }
        private string _country; public string Country { get { return _country; } set { _country = value; } }
        private string _reg; public string Registration { get { return _reg; } set { _reg = value; } }
        private string _imgurl; public string ImagUrl { get { return _imgurl; } set { _imgurl = value; } }
        private string _profileimg; public string ProfileImg { get { return _profileimg; } set { _profileimg = value; } }
        public void fnInfoInsert()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("UPDATE tbInstiClgInfo SET name=@name,address=@address,contact=@contact,fax=@fax,email=@email,country=@country,imgUrl=@ImgUrl WHERE (registration=@reg)",cn);
               // SqlCommand com = new SqlCommand("insert into tbInstiClgInfo(name,address,contact,fax,email,registration,country,ImgUrl) values(@name,@address,@contact,@fax,@email,@reg,@country,@ImgUrl)", cn);
                com.Parameters.AddWithValue("@name",InstituName);
                com.Parameters.AddWithValue("@address",Address);
                com.Parameters.AddWithValue("@contact",Telephone);
                com.Parameters.AddWithValue("@fax",Fax);
                com.Parameters.AddWithValue("@email",Email);
                com.Parameters.AddWithValue("@reg",Registration);
                com.Parameters.AddWithValue("@country",Country);
                com.Parameters.AddWithValue("@imgUrl",ImagUrl);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Sucessfully!";
                    ProfileImg= ImagUrl;
                    cn.Close();
                } 
            }catch(Exception ex)
            {
                msg = "Exception:" + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
    }
}