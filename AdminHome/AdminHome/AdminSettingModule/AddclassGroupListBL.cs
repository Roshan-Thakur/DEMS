using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AdminHome.AdminSettingModule
{
    public class AddclassGroupListBL
    {
        static string con=ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn=new SqlConnection(con);
        public string message;
        public DropDownList dl = new DropDownList();
        List<string> ar = new List<string>();
        public DataTable dt = new DataTable();
        public List<string> ar1 = new List<string>();
        private string _mndatrtysubj; public string Mandatry { get { return _mndatrtysubj; } set { _mndatrtysubj = value; } }
        private string _grp; public string Grop { get { return _grp; } set { _grp = value; } }
        private string _cls; public string Clas { get { return _cls; } set { _cls = value; } }
        private int _ID; public int ID { get { return _ID; } set { _ID =value; } }
        public List<string> ClassList
        {

            get
            {
                
                try
                {
                    cn.Open();
                    SqlCommand com = new SqlCommand("select ClassType from addclass ", cn);
                    SqlDataReader rd = com.ExecuteReader();
                    
                    while (rd.Read())
                    {
                        ar.Add(rd[0].ToString());
                    }
            
                }
                catch (Exception ex)
                {
                    message = "Sorry You have Exception" + ex.Message;
                }
                finally
                {
                    cn.Close();
                }
                return ar;
            }
        }
        public void fnclassshow()
        {
            List<string> list = new List<string>(ClassList);
            
            foreach(string st in list)
            {
                ar1.Add(st);
               // ar.Add(st);
            }
        }
        public void fnselectgroup()
        {
            try 
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select group1 from tbaddgroup", cn);
                SqlDataAdapter sda = new SqlDataAdapter(com);
                DataSet ddltype = new DataSet();
                sda.Fill(ddltype);
                dl.DataSource = ddltype;
                dl.DataTextField = "group1";
                dl.DataBind();
                cn.Close();
            }catch(Exception ex)
            {
                message = "sorry You Have Exception:" + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void fnmandatorysub()
        {
            try 
            {
               cn.Open();
                SqlCommand com=new SqlCommand("insert into tbMndSub(grp,cls,mndsub) values(@Grp,@Cls,@Mndsub) ",cn);
                com.Parameters.AddWithValue("@Grp",Grop);
                com.Parameters.AddWithValue("@Cls",Clas);
                com.Parameters.AddWithValue("@Mndsub",Mandatry);
                int rd=com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    message="Sucessfully!";
                }else
                {
                    message="Sorry You must fill required field!";
                }
                cn.Close();
            }
            catch(Exception ex)
            {
                message = "You have exception:" + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void grddisplay()
        {
            try 
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbMndSub ", cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable localdt = new DataTable();
                ad.Fill(localdt);
                dt = localdt;
                cn.Close();
            }catch(Exception ex)
            {
                message = "Exception" + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void DeleteClassgrplist()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbMndSub WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid", ID);
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
        public void UpdateClassgrplist()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbMndSub SET cls=@class,grp=@grp,mndsub=@mndsub WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", ID);
                com.Parameters.AddWithValue("@class", Clas);
                com.Parameters.AddWithValue("@grp",Grop);
                com.Parameters.AddWithValue("@mndsub",_mndatrtysubj);
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