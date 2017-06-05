using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AdminHome.AdminSettingModule
{
    
    public class AddSessionBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        public string ms;
        public  DropDownList dlsession=new DropDownList();
        public DataTable dt = new DataTable();
        private string _session; public string SessionYr { get { return _session; } set { _session = value; } }
        private int _id; public int ID { get { return _id; } set { _id = value; } }
        public void InsertSession()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("insert into tbSession(Session) values(@session)",cn);
                com.Parameters.AddWithValue("@session",SessionYr);
                int rd=com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    ms = "Sucessfully!";
                    cn.Close();
                }
               
            }catch(Exception ex)
            {
                ms="Exception: "+ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void grddisplaysession()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbSession", cn);
                SqlDataAdapter data = new SqlDataAdapter(com);
                DataTable locadt = new DataTable();
                data.Fill(locadt);
                dt = locadt;
                dlsession.DataSource = dt;
                dlsession.DataTextField = "Session";
                dlsession.DataBind();
                if(Convert.ToBoolean(dt))
                {
                cn.Close();
                }
            }
            catch (Exception ex)
            {
                ms = "Exception: "+ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void DeleteSession()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbSession WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid", ID);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    ms = "Sucessfully! ";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                ms = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void UpdateSession()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbSession SET Session=@class WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", ID);
                com.Parameters.AddWithValue("@class",SessionYr);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    ms = "Update Successfully!";
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                ms = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
    }
}