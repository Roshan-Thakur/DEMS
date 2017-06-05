using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace AdminHome.AdminSettingModule
{
    public class AddBoardBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        public string msg;
        public DropDownList ddlbatchBL = new DropDownList();
        public DataTable dt1;
        private string _board; public string Board { get { return _board; } set { _board = value; } }
        private int _Id; public int ID { get { return _Id; } set { _Id = value; } }
        public void fnBoardInsert()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("insert into tbBoard(board) values(@board)",cn);
                com.Parameters.AddWithValue("@board",Board);
                int rd=com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    cn.Close();
                    msg = "Sucessfully!";
                }
            }
            catch (Exception ex)
            {
                msg = "Exception:"+ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void fngrdshow()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbBoard", cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                ddlbatchBL.DataSource = dt;
                ddlbatchBL.DataTextField = "board";
                ddlbatchBL.DataBind();
                if(dt!=null)
                {
                dt1 = dt;
                cn.Close();
                }
            }
            catch (Exception ex)
            {
                msg = "Exception:" + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void DeleteBoard()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbBoard WHERE Id=@ID", cn);
                com.Parameters.AddWithValue("@ID", ID);
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
        public void UpdateBoard()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbBoard SET board=@board WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", ID);
                com.Parameters.AddWithValue("@board",Board);
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