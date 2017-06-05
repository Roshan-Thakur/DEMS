using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AdminHome.AdminSettingModule
{
    public class AddclassSectionBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        private string _section; public string Section { get { return _section; } set { _section = value; } }
        private string _grp; public string Grop { get { return _grp; } set { _grp = value; } }
        private string _cls; public string Clas { get { return _cls; } set { _cls = value; } }
        private int _id; public int ID { get { return _id; } set { _id = value; } }
        public DataTable dt = new DataTable();
        public string message;

        public void fnInsertSection()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("insert into tbaddClasSec(cls,Grop,section) values(@Cls,@Grp,@section) ", cn);
                com.Parameters.AddWithValue("@Grp", Grop);
                com.Parameters.AddWithValue("@Cls", Clas);
                com.Parameters.AddWithValue("@section", Section);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    message = "Sucessfully!";
                }
                else
                {
                    message = "Sorry You must fill required field!";
                }
                cn.Close();
            }
            catch (Exception ex)
            {
                message = "You have exception:" + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void grddisplay()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbaddClasSec ", cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable localdt = new DataTable();
                ad.Fill(localdt);
                dt = localdt;
                cn.Close();
            }
            catch (Exception ex)
            {
                message = "Exception" + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void DeleteClassSec()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbaddClasSec WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid",ID);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    message = "Sucessfully! ";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                message = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void UpdateClassSection()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbaddClasSec SET cls=@class,Grop=@grp,section=@section WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid",ID);
                com.Parameters.AddWithValue("@class", Clas);
                com.Parameters.AddWithValue("@grp", Grop);
                com.Parameters.AddWithValue("@section", Section);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    message = "Update Successfully!";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                message = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        
    }
}