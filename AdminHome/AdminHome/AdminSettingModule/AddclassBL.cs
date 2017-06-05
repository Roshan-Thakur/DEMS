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
    public class AddclassBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        public string lblmsg;
        public DropDownList ddl = new DropDownList();
        public DataTable type;
        private int _order; public int Order { get { return _order; } set { _order = value; } }
        private string _classtype; public string ClassType { get { return _classtype; } set { _classtype = value; } }
        private string _bloodgrp; public string BloodGrp { get { return _bloodgrp; } set { _bloodgrp = value; } }
        private string _religion; public string Religion { get { return _religion; } set { _religion = value; } }
        private string _depart; public string Department { get { return _depart; } set { _depart = value; } }
        private string _starttime; public string StartTime { get { return _starttime; } set { _starttime = value; } }
        private string _closetime; public string CloseTime { get { return _closetime; } set { _closetime = value; } }
        private string _lateTime; public string LateTime { get { return _lateTime; } set { _lateTime = value; } }
        private string _shift; public string Shift { get { return _shift; } set { _shift = value; } }

        public void fnAddBloodgrp()
        {

            if (BloodGrp.ToString() != string.Empty)
            {
                try
                {
                    cn.Open();
                    SqlCommand com = new SqlCommand("insert into tbbldgrp(bloodgrp) values(@bld) ", cn);
                    com.Parameters.AddWithValue("@bld", BloodGrp);
                    int rd = com.ExecuteNonQuery();
                    if (Convert.ToBoolean(rd))
                    {
                        lblmsg = "Now You have added Blood Group :" + BloodGrp;
                    }
                    else
                    {
                        lblmsg = "Sorry You Must be Fill Class Name Field..!";
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
            else
            {
                lblmsg = "Sorry You should enter Blood Group";
            }
        }
        public void funshowblood()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbbldgrp", cn);

                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt != null)
                {
                    lblmsg = "List Of Blood Group!";
                    type = dt;
                    ddl.DataSource = dt;
                    ddl.DataBind();
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
        public void DeleteBllod()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbbldgrp WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid", Order);
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
        public void UpdateBlood()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbbldgrp SET bloodgrp=@bloodgrp WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", Order);
                com.Parameters.AddWithValue("@bloodgrp",BloodGrp);
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

        public void fnAddDepartment()
        {
            if(Department.ToString()!=string.Empty)
            {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("insert into tbdepartment(department) values(@dept) ", cn);
                com.Parameters.AddWithValue("@dept", Department);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    lblmsg = "Now You have added Departmrnt :" + Department;
                }
                else
                {
                    lblmsg = "Sorry You Must be Fill Class Name Field..!";
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
            }else
            {
                lblmsg="Sorry You should enter the Departmrnt!";
            }
        }
        public void fnshowdept()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbdepartment", cn);

                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt != null)
                {
                    lblmsg = "List Of Departmrnt!";
                    type = dt;
                    ddl.DataSource = dt;
                    ddl.DataBind();
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
        public void DeleteDept()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbdepartment WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid", Order);
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
        public void UpdateDept()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbdepartment SET department=@department WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", Order);
                com.Parameters.AddWithValue("@department", Department);
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
       
        public void fnshowreligion()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbreligion", cn);

                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt != null)
                {
                    lblmsg = "List Of Religion!";
                    type = dt;
                    ddl.DataSource = dt;
                    ddl.DataTextField = "religion";
                    ddl.DataBind();
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
        public void fnReligionAdd()
        {

            if (Religion.ToString() != string.Empty)
            {
                try
                {
                    cn.Open();
                    SqlCommand com = new SqlCommand("insert into tbreligion(religion) values(@reli); ", cn);
                    com.Parameters.AddWithValue("@reli", Religion);
                    int rd = com.ExecuteNonQuery();
                    if (Convert.ToBoolean(rd))
                    {
                        lblmsg = "Now You have added Religion :" + Religion;
                    }
                    else
                    {
                        lblmsg = "Sorry You Must be Fill Class Name Field..!";
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
            else
            {
                lblmsg = "Sorry You should enter Religion!";
            }
        }
        public void Deletereligion()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbreligion WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid", Order);
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
        public void UpdateReligion()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbreligion SET religion=@religion WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", Order);
                com.Parameters.AddWithValue("@religion",Religion);
                com.Parameters.AddWithValue("@starttime", StartTime);
                com.Parameters.AddWithValue("@closetime", CloseTime);
                com.Parameters.AddWithValue("@latetime", LateTime);
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



        public void DeleteClass()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM addclass WHERE orderid=@orderid", cn);
                com.Parameters.AddWithValue("@orderid", Order);
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
        public void UpdateClass()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  addclass SET ClassType=@class WHERE orderid=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", Order);
                com.Parameters.AddWithValue("@class", ClassType);
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
        public void FnAddClass()
        {
            if (ClassType.ToString() != string.Empty)
            {
                try
                {
                    cn.Open();
                    SqlCommand com = new SqlCommand("insert into addclass(ClassType) values(@classtype) ", cn);
                    com.Parameters.AddWithValue("@classtype", ClassType);
                    int rd = com.ExecuteNonQuery();
                    if (Convert.ToBoolean(rd))
                    {
                        lblmsg = "Now You have added class :" + ClassType;
                    }
                    else
                    {
                        lblmsg = "Sorry You Must be Fill Class Name Field..!";
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
            else
            {
                lblmsg = "Sorry You Should enter Class!";
            }
        }
        public void fnshowClass()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from addclass", cn);

                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt!=null)
                {
                    lblmsg = "List Of Classes!";
                    type = dt;
                    ddl.DataSource =dt;
                    ddl.DataBind();
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

        public void FnAddShift()
        {
                try
                {
                    cn.Open();
                    SqlCommand com = new SqlCommand("insert into tbshift(shift,starttime,closetime,latetime) values(@shift,@starttime,@closetime,@latetime) ", cn);
                    com.Parameters.AddWithValue("@shift", Shift);
                    com.Parameters.AddWithValue("@starttime",StartTime);
                    com.Parameters.AddWithValue("@closetime", CloseTime);
                    com.Parameters.AddWithValue("@latetime", LateTime);
                    int rd = com.ExecuteNonQuery();
                    if (Convert.ToBoolean(rd))
                    {
                        lblmsg = "Sucessfully!";
                    }
                    else
                    {
                        lblmsg = "Sorry You Must be Fill Class Name Field..!";
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
        public void fnshowShift()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("select * from tbshift", cn);

                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt != null)
                {
                    type = dt;
                    ddl.DataSource = dt;
                    ddl.DataBind();
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
        public void DeleteShift()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbshift WHERE Id=@orderid", cn);
                com.Parameters.AddWithValue("@orderid",Order);
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
        public void UpdateShift()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  addclass SET shift=@shift,starttime=@starttime,closetime=@closetime,latetime=@latetime WHERE Id=@orderid ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@orderid", Order);
                com.Parameters.AddWithValue("@shift", Shift);
                com.Parameters.AddWithValue("@starttime", StartTime);
                com.Parameters.AddWithValue("@closetime", CloseTime);
                com.Parameters.AddWithValue("@latetime", LateTime);
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