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
    public class AddBatchYr
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        public string ms;
        public string classname, batch, newbatch;
        public DataTable dtable = new DataTable();
        public DropDownList ddlbatch = new DropDownList();
        private string _cls; public string ClassBatch{get{return _cls;}set{_cls=value;}}
        private int _id; public int ID { get { return _id; } set { _id = value; } }
        public string _session; public string SessionBatch { get { return _session; } set { _session = value; } }
        public void BatchInser1()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("insert into tbBatch(ClassType,Session) values(@clas,@session) ", cn);
                com.Parameters.AddWithValue("@clas",ClassBatch);
                com.Parameters.AddWithValue("@session",SessionBatch);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    ms = "Sucessfully!";
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
        public void grdBatchDisplay()
        {
            cn.Open();
            SqlCommand com = new SqlCommand("select * from tbBatch", cn);
            SqlDataAdapter data = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            data.Fill(dt);
            dtable = dt;
            if(dt.Rows.Count>0)
            {
                for (int i = 0; i < dt.Rows.Count;i++ )
                {
                   string  id=dt.Rows[i]["Id"].ToString();
                   classname=dt.Rows[i]["ClassType"].ToString();
                   batch=dt.Rows[i]["Session"].ToString();
                   newbatch=classname+"_"+batch;
                   ddlbatch.Items.Add(new ListItem(newbatch,id));
                }
            }
            cn.Close();
        }
        public void DeleteBatch()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbBatch WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid",ID);
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
        public void UpdateBatch()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbBatch SET ClassType=@class,Session=@session WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid",ID);
                com.Parameters.AddWithValue("@class", classname);
                com.Parameters.AddWithValue("@session", SessionBatch);
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