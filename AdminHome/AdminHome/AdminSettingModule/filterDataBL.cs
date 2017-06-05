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
    public class filterDataBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        private int _stateId; public int StateId { get { return _stateId; } set { _stateId = value; } }
        public string msg;
        public DropDownList ddl=new DropDownList();
        // State
        public void RetrivState()
        {
            try
            {
                cn.Open();
                SqlDataAdapter ad = new SqlDataAdapter("select * from state", cn);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                ddl.DataSource = dt;
                ddl.DataBind();
                cn.Close();
            }catch(Exception ex)
            {
                msg = ""+ex.Message;
            }finally
            {
                cn.Close();
            }
        }

        // District 
         public void RetrivDistrict()
        {
            try
            {
                 cn.Open();
                 SqlDataAdapter ad = new SqlDataAdapter("select district from tbdistrict where StateId='"+StateId+"'", cn);
                 DataTable dt = new DataTable();
                 ad.Fill(dt);
                 ddl.DataSource = dt;
                 ddl.DataBind();
                 cn.Close();
            }catch(Exception ex)
            {
                msg = "" + ex.Message;
            }finally
            {
            }
        }
         public void Retrivedistrict()
         {
             try
             {
                 cn.Open();
                 SqlDataAdapter ad = new SqlDataAdapter("select district from tbdistrict", cn);
                 DataTable dt = new DataTable();
                 ad.Fill(dt);
                 ddl.DataSource = dt;
                 ddl.DataBind();
                 cn.Close();
             }
             catch (Exception ex)
             {
                 msg = "" + ex.Message;
             }
             finally
             {
             }
         }
    }
}