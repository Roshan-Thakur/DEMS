using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace AdminHome.Notifications
{
    public class NotificationBL
    {
        static string conquery = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString.ToString();
        SqlConnection cn = new SqlConnection(conquery);
        public string msg;
        private string _username; public string Username { get { return _username; } set { _username = value; } }
        private string _api; public string APIEMAIL { get { return _api; } set { _api = value; } }
        private string _mailpass; public string MailPassword { get { return _mailpass; } set { _mailpass = value; } }
        private string _typestatus; public string TypeStatus { get { return _typestatus; } set { _typestatus = value; } }
        public void udateapiemail()
        {
            try
            {
                cn.Open();
                string query = "update tbchangeapi set apiemail=@apiemail, username=@username,mailpass=@mailpass Where statustype='" + TypeStatus + "'";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@apiemail", APIEMAIL);
                com.Parameters.AddWithValue("@username", Username);
                com.Parameters.AddWithValue("@mailpass",MailPassword);
                int rd = com.ExecuteNonQuery();
                {
                    msg = "Sucessfully!";
                    cn.Close();
                }

            }
            catch(Exception ex)
            {
                msg = "Exceptio: "+ex.Message;  
            }finally
            {
                cn.Close();
            }
           

        }
        public void selectAPIEMAIL()
        {
            try
            {
                cn.Open();
                string query = "select * from tbchangeapi where statustype='"+TypeStatus+"'";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd=com.ExecuteReader();
                if (rd.Read())
                {
                    APIEMAIL = rd[1].ToString();
                    MailPassword = rd[4].ToString();

                }
                else
                {
                    msg = "Data Not Found!";
                }
               

            }
            catch (Exception ex)
            {
                msg = "Exceptio: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
           
        }
    }
}