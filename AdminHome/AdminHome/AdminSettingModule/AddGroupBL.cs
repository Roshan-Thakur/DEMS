using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AdminHome.AdminSettingModule
{
    public class AddGroupBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        public string msg;
        private string _group;
        private int _id;
        public string Group { get { return _group; } set { _group = value; } }
        public int ID { get { return _id; } set { _id = value; } }
        public DataTable grptyp;

        public void FnaddGroup()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("insert into tbaddgroup(group1) values(@group) ", cn);
                com.Parameters.AddWithValue("@group", Group);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Now You have added class :" + Group;
                }
                else
                {
                    msg = "Sorry You Must be Fill Class Name Field..!";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                msg = "Sorry You have Exception:" + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void fngroupShow()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbaddgroup", cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt != null)
                {
                    msg = "List Of Group!";
                    grptyp = dt;
                }
                else
                {
                    msg = "Sorry You have some Error..!";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                msg = "Sorry You have Exception:" + ex.Message;
            }
            finally
            {
                cn.Close();
            }

        }
        public void DeleteGroup()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbaddgroup WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid",ID );
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Sucessfully! ";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                msg = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void UpdateGroup()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbaddgroup SET group1=@group WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid",ID);
                com.Parameters.AddWithValue("@group", Group);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Successfully!";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                msg = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }

    }
}