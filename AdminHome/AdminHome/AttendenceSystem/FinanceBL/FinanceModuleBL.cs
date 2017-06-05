using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace AdminHome.AttendenceSystem.FinanceBL
{
    public class FinanceModuleBL
    {
        static string connectionstring = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(connectionstring);
        public  string msg;
        public DataTable sourc = new DataTable();
        private string _batchyr; public string Batchyr { get { return _batchyr; } set { _batchyr = value; } }
        private string _feefin; public string FeeFine { get { return _feefin; } set { _feefin = value; } }
        private int _fgid; public int FGID { get { return _fgid; } set { _fgid = value; } }
        private string _classname; public string ClassName { get { return _classname; } set { _classname = value; } }
        private string _feecat; public string FeeCate { get { return _feecat; } set { _feecat = value; } }
        private string _fgstdate; public string StartDate { get { return _fgstdate; } set { _fgstdate = value; } }
        private string _ensdate; public string EndDate { get { return _ensdate; } set { _ensdate = value; } }
        private string _createdon; public string CreatedOn { get { return _createdon; } set { _createdon = value; } }
        public void insertFeeCategory()
        {
            try
            {
                cn.Open();
                string query = "insert into tbFinance(classname, fgstartdate, fgenddate, fgcreateddate, feecategory)values(@classname,@startdate,@enddate,@creaton,@feecat)";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@classname",ClassName);
                com.Parameters.AddWithValue("@feecat",FeeCate);
                com.Parameters.AddWithValue("@startdate",StartDate);
                com.Parameters.AddWithValue("@enddate",EndDate);
                com.Parameters.AddWithValue("@creaton",CreatedOn);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                msg = "Sucessfully!";
                cn.Close();
                }
            }
            catch(Exception ex)
            {
                msg = "Exception: "+ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void SelectFGData()
        {
            try
            {
                cn.Open();
                string query = "select FId,classname, fgstartdate, fgenddate, fgcreateddate, feecategory from tbFinance";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if(dt.Rows.Count>0)
                {
                    sourc = dt;
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
        public void UpdateFGDatas()
        {
            try
            {
                cn.Open();
                string query = "update tbFinance set classname='"+ClassName+"', fgstartdate='"+StartDate+"', fgenddate='"+EndDate+"', fgcreateddate='"+CreatedOn+"', feecategory='"+FeeCate+"' where FId=@fid ";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@fid",FGID);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Update Sucessfully!";
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
        public void updatebatchdetails()
        {
            try
            {
                cn.Open();
                string query = "update tbFinance set feefine='"+FeeFine+"', batch='" + Batchyr + "', fgstartdate='" + StartDate + "', fgenddate='" + EndDate + "', fgcreateddate='" + CreatedOn + "', feecategory='" + FeeCate + "' where FId=@fid ";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@fid", FGID);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Sucessfully!";
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
        public void selectBatch()
        {
            try
            {
                cn.Open();
                string query = "select FId,batch, fgstartdate, fgenddate, fgcreateddate, feecategory,feefine from tbFinance";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    sourc = dt;
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
        public void selectFeeCate()
        {
            try
            {
                cn.Open();
                string query = "select feecategory from tbFinance";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    sourc = dt;
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