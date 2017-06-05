using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AdminHome.AdminSettingModule
{
    public class AddSectionBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        public DataTable typ1;
        public string lblmsg;
        private string _section; public string Section { get { return _section; } set { _section = value; } }
        private int _id; public int ID { get { return _id; } set { _id = value; } }
        public void AddSectionInsert()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("insert into tbaddsection(section) values(@section) ", cn);
                com.Parameters.AddWithValue("@section", Section);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    lblmsg = "Now You have added Section :" + Section;
                }
                else
                {
                    lblmsg = "Sorry You Must be Fill Section Name Field..!";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                lblmsg = "Sorry You have Exception:" + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void fnshowSection()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbaddsection", cn);

                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt != null)
                {
                    lblmsg = "List Of Classes!";
                    typ1 = dt;
                }
                else
                {
                    lblmsg = "Sorry You have some Error..!";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                lblmsg = "Sorry You have Exception:" + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void DeleteSection()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbaddsection WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid", ID);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    lblmsg = "Sucessfully! ";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                lblmsg = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void UpdateSection()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbaddsection SET section=@class WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", ID);
                com.Parameters.AddWithValue("@class", Section);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    lblmsg = "Update Successfully!";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                lblmsg = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }

    }
}