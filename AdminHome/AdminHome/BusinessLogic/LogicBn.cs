using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace AdminHome.BusinessLogic
{
    public class LogicBn
    {
        public String shift;
        public String batch;
        public String group;
        public String section;
        public String rollno;
        public String gender;
        public string msg;
        static SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString);
        public DropDownList dpl = new DropDownList();
        public void Shift()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Shift", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                dpl.DataSource = ds;
                dpl.DataTextField = "shift";
                dpl.DataBind();
            }
            catch (Exception e)
            {
                msg = "exception" + e.Message;
            }
            finally
            {
                conn.Close();
               // conn.Dispose();
            }
        }
        public void Batch() {
            try
            {
                
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM batch", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                dpl.DataSource = ds;
                dpl.DataTextField ="batch";
                dpl.DataBind();
            }
            catch (Exception e) {
                msg = "exception" + e.Message;
            }
            finally
            {
                conn.Close();
                //conn.Dispose();
            }
        }
        public void Group()
        {

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM BloodGroup", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                dpl.DataSource = ds;
                dpl.DataTextField = "Bgroup";
                dpl.DataBind();
            }
            catch (Exception e) {
                msg = "exception" + e.Message;
            }
            finally
            {
                conn.Close();
                //conn.Dispose();
            }
        }
        public void Section()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Section", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                dpl.DataSource = ds;
                dpl.DataTextField = "section";
                dpl.DataBind();
            }
            catch (Exception e) { 
                msg = "exception" + e.Message; 
            
            }
            finally
            {
                conn.Close();
                //conn.Dispose();
            }
        }
        public void RollNo()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Student", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                dpl.DataSource = ds;
                dpl.DataTextField = "RollNo";
                dpl.DataBind();
            }
            catch (Exception e) {
                msg = "exception" + e.Message;
            }
            finally
            {
                conn.Close();
                //conn.Dispose();
            }
        }
        public void Gender(){
        try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Gender", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                dpl.DataSource = ds;
                dpl.DataTextField = "gender";
                dpl.DataBind();
            }
            catch (Exception e) {
                msg = "exception" + e.Message;
            }
            finally
            {
                conn.Close();
                //conn.Dispose();
            }
        }
        public void Exam() 
        {
              
        try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Exam", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                dpl.DataSource = ds;
                dpl.DataTextField = "exam";
                dpl.DataBind();
            }
            catch (Exception e) {
                msg = "exception" + e.Message;
            }
            finally
            {
                conn.Close();
                //conn.Dispose();
            }
        }


        public void btnSearch(){
            try
            {
                conn.Open();
                String comand = "select * from Student where Shift= '" + shift.ToString() +
                     "'and Batch='" + batch.ToString() +
                     "'and BloodGroup='" + group.ToString() +
                     "'and Section='" + section.ToString() +
                     "'and RollNo='" + rollno.ToString() + "'";
                //string comand = "select * from Student where Shift='Morning' AND BloodGroup='o' AND Section='a' AND RollNo='123'";
              //string comand="select*from Student where Shift='Morning' or Batch='six2015' or BloodGroup='o'or Section='a'or RollNo='123'";
                SqlCommand cmd = new SqlCommand(comand, conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dpl.DataSource = dt;
            }
            catch (Exception e)
            {
                msg = "exception" + e.Message;
            }
            finally
            {
                conn.Close();
            }
        }
        public void btnStuConSearchList(){
            try
            {
                conn.Open();
                String comand = "select * from Student where Shift= '" + shift.ToString() +
                    "'OR Batch='" + batch.ToString() +
                    "'OR BloodGroup='" + group.ToString() +
                    "'OR Section='" + section.ToString() +
                    "'OR Gender='" + gender.ToString() + "'";
               //string comand = "select * from StudentInfo where Shift='evening' AND BloodGroup='b+' AND Section='B' AND RollNo='1234567890';";
                SqlCommand cmd = new SqlCommand(comand, conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dpl.DataSource = dt;
            }
            catch (Exception e)
            {
                msg = "exception" + e.Message;
            }
            finally
            {
                conn.Close();
            }
        }
        

    }

}
