using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
namespace AdminHome
{
    public class StudentInfoBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;
        public string msg;
        public DataTable sourc = new DataTable();
        public DropDownList ddl = new DropDownList();
        private string _attandancDate; public string AttandanceDate { get { return _attandancDate; } set { _attandancDate = value; } }
        private string _attandancestaus; public string AttandanceStatus { get { return _attandancestaus; } set { _attandancestaus = value; } }
        private int _formno; public int FormNo{get{return _formno;}set{_formno=value;}}
        private string _stname; public string StName { get { return _stname; } set { _stname = value; } }
        private string _batch; public string Batch { get { return _batch; } set { _batch = value; } }
        private string _date; public string Date1 { get { return _date; } set { _date = value; } }
        private string _stclass; public string StClass { get { return _stclass; } set { _stclass = value; } }
        private string _shift; public string Shift { get { return _shift; } set { _shift = value; } }
        private string _dob; public string Dob { get { return _dob; } set { _dob = value; } }
        private string _rollno; public string RollNo { get { return _rollno; } set { _rollno = value; } }
        private string _bloodgroup; public string BloodGroup { get { return _bloodgroup; } set { _bloodgroup = value; } }
        private string _adyr; public string AddYear { get { return _adyr; } set { _adyr = value; } }
        private string _group; public string Group1{get{return _group;}set{ _group=value;}}
        private string _section; public string Section { get { return _section; } set { _section = value; } }
        private string _gender; public string Gender { get { return _gender; } set { _gender = value; } }
        private string _religion; public string Religion { get { return _religion; } set { _religion = value; } }
        private string _fname; public string Fname { get { return _fname; } set { _fname = value; } }
        private string _foccupation; public string Foccupation { get { return _foccupation; } set { _foccupation = value; } }
        private string _fincome; public string FIncome { get { return _fincome; } set { _fincome = value; } }
        private string _mname; public string Mname { get { return _mname; } set { _mname = value; } }
        private string _mincome; public string MIncome { get { return _mincome; } set { _mincome = value; } }
        private string _moccpation; public string Moccupation { get { return _moccpation; } set { _moccpation = value; } }
        private string _fmobile; public string FMobile { get { return _fmobile; } set { _fmobile = value; } }
        private string _mmobile; public string MMobile { get { return _mmobile; } set { _mmobile = value; } }
        private string _hmobile; public string HMobile{get{return _hmobile;}set{_hmobile=value;}}
        private string _femail; public string FEmail { get { return _femail; } set { _femail = value; } }
        private string _memail; public string MEmail { get { return _memail; } set { _memail = value; } }
        private string _grelation; public string GRelation { get { return _grelation; } set { _grelation = value; } }
        private string _gname; public string GName { get { return _gname; } set { _gname = value; } }
        private string _gmobile; public string GMobile { get { return _gmobile; } set { _gmobile = value; } }
        private string _gaddres; public string GAddress { get { return _gaddres; } set { _gaddres = value; } }
        private string _praddress; public string PrAddress { get { return _praddress; } set { _praddress = value; } }
        private string _prdistri; public string Prdistrict { get { return _prdistri; } set { _prdistri = value; } }
        private string _prstate; public string PrState { get { return _prstate; } set { _prstate = value; } }
        private string _paraddress; public string ParAddress { get { return _paraddress; } set { _paraddress = value; } }
        private string _pardistrict; public string ParDistrict { get { return _pardistrict; } set { _pardistrict = value; } }
        private string _parstate; public string ParState { get { return _parstate; } set { _parstate = value; } }
        private string _presclname; public string PreScholName { get { return _presclname; } set { _presclname = value; } }
        private string _prerollno; public string PreRollNo { get { return _prerollno; } set { _prerollno = value; } }
        private string _passingyr; public string PassingYr { get { return _passingyr; } set { _passingyr = value; } }
        private string _preboard; public string PreBoard { get { return _preboard; } set { _preboard = value; } }
        private string _preragistration; public string Preragistraion { get { return _preragistration; } set { _preragistration = value; } }
        private string _trnfercerti; public string TranferCerti { get { return _trnfercerti; } set { _trnfercerti = value; } }
        private string _takeaddmision; public string TakeAddmision { get { return _takeaddmision; } set { _takeaddmision = value; } }
        private string _imgurl; public string ImageUr { get { return _imgurl; } set { _imgurl = value; } }
        private string _username; public string UserName { get { return _username; } set { _username = value; } }
        private string _pasword; public string Password { get { return _pasword; } set { _pasword = value; } }
        private string _activestatus; public string ActiveStatus { get { return _activestatus; } set { _activestatus = value; } }
        private string _createdtime; public string CreatedDate { get { return _createdtime; } set { _createdtime = value; } }
        private string _attandanceSubject; public string AttandanceSub { get { return _attandanceSubject; } set { _attandanceSubject = value; } }
        private int _teacherid; public int TeacherId { get { return _teacherid; } set { _teacherid = value; } }
        public void updateStudentDetails()
        {
            try
            {
                cn.Open();
                string query = "update StudentInfoTable set StName=@StName,Shift=@shift,Rollno=@rollno,Dob=@dob, BloodGrp=@blood, Gender=@gender, Religion=@religion, AdmisionYear=@admissionyr,FatName=@fname, MothName=@mname, Fmobile=@fmobile, Mmobile=@mmobile, Hmobile=@hmobile, Femail=@femail, Memail=@memail,Gname=@gname, Gmobile=@gmobil, Gaddress=@gaddress,PresentAddress=@presentaddres, PrDistrict=@prdistrict, PrState=@prstate,TakeAdmision=@takeaddmision,img=@img where FormNo='" + FormNo + "'";
                SqlCommand com = new SqlCommand(query, cn);

                com.Parameters.AddWithValue("@StName", StName);
                com.Parameters.AddWithValue("@shift", Shift);
                com.Parameters.AddWithValue("@rollno", RollNo);
                com.Parameters.AddWithValue("@dob", Dob);
                com.Parameters.AddWithValue("@blood", BloodGroup);
                com.Parameters.AddWithValue("@gender", Gender);
                com.Parameters.AddWithValue("@religion", Religion);
                com.Parameters.AddWithValue("@admissionyr", AddYear);
                com.Parameters.AddWithValue("@fname", Fname);
                com.Parameters.AddWithValue("@mname", Mname);
                com.Parameters.AddWithValue("@fmobile", FMobile);
                com.Parameters.AddWithValue("@mmobile", MMobile);
                com.Parameters.AddWithValue("@hmobile", HMobile);
                com.Parameters.AddWithValue("@femail", FEmail);
                com.Parameters.AddWithValue("@memail", MEmail);
                com.Parameters.AddWithValue("@gname", GName);
                com.Parameters.AddWithValue("@gmobil", GMobile);
                com.Parameters.AddWithValue("@gaddress", GAddress);
                com.Parameters.AddWithValue("@presentaddres", PrAddress);
                com.Parameters.AddWithValue("@prdistrict", Prdistrict);
                com.Parameters.AddWithValue("@prstate", PrState);
                com.Parameters.AddWithValue("@takeaddmision", TakeAddmision);
                com.Parameters.AddWithValue("@img", ImageUr);                                                                                                                                                                                                                                                                                                                                                         
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Updation Sucessfully!";
                }
                else
                {
                    msg = "Check Required Field!";
                }

            }
            catch (Exception ex)
            {
                msg = "Sql Excepton : " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void AdmissionInsert()
        {
            try
            {
               // msg = "You have welcome. Admission sucessfully!";
                cn.Open();
                string query = "INSERT INTO StudentInfoTable(StName, Batch, Date1, Class, Shift, Rollno, Dob, BloodGrp, Group1, Section, Gender, Religion, AdmisionYear,FatName, Foccupation, Fincome, MothName, Moccupation, Minome, Fmobile, Mmobile, Hmobile, Femail, Memail, GRelation, Gname, Gmobile, Gaddress,PresentAddress, PrDistrict, PrState, ParmanantAddress, ParDistrict, ParState, PreviousSchoolName, RollNoPre, PassingYear, BoardPre,RagistrationPre, TranferCertificate, TakeAdmision,img) VALUES (@StName,@batch, @date1,@stclass,@shift, @rollno, @dob, @blood, @group, @section, @gender, @religion, @admissionyr, @fname, @foccupation, @fincome, @mname, @moccupation, @mincome,@fmobile, @mmobile, @hmobile, @femail, @memail, @grelation, @gname, @gmobil, @gaddress, @presentaddres, @prdistrict, @prstate, @paraddress,@pardistrict, @parstate, @preschool, @prerollno, @passingyr, @preboard, @preragistration, @trnfercerti, @takeaddmision,@img)";
                SqlCommand com=new SqlCommand(query,cn);
               // com.Parameters.AddWithValue("@formno", FormNo);
                com.Parameters.AddWithValue("@StName", StName);
                com.Parameters.AddWithValue("@batch",Batch);
                com.Parameters.AddWithValue("@date1",Date1);
                com.Parameters.AddWithValue("@stclass",StClass);
                com.Parameters.AddWithValue("@shift",Shift);
                com.Parameters.AddWithValue("@rollno",RollNo);
                com.Parameters.AddWithValue("@dob",Dob);
                com.Parameters.AddWithValue("@blood",BloodGroup);
                 com.Parameters.AddWithValue("@group",Group1);
                 com.Parameters.AddWithValue("@section",Section);
                 com.Parameters.AddWithValue("@gender", Gender);
                 com.Parameters.AddWithValue("@religion",Religion);
                 com.Parameters.AddWithValue("@admissionyr",AddYear);
                 com.Parameters.AddWithValue("@fname",Fname);
                 com.Parameters.AddWithValue("@foccupation",Foccupation);
                 com.Parameters.AddWithValue("@fincome",FIncome);
                 com.Parameters.AddWithValue("@mname",Mname);
                 com.Parameters.AddWithValue("@moccupation",Moccupation);
                 com.Parameters.AddWithValue("@mincome",MIncome);
                 com.Parameters.AddWithValue("@fmobile",FMobile);
                 com.Parameters.AddWithValue("@mmobile",MMobile);
                 com.Parameters.AddWithValue("@hmobile",HMobile);
                 com.Parameters.AddWithValue("@femail",FEmail);
                 com.Parameters.AddWithValue("@memail",MEmail);
                 com.Parameters.AddWithValue("@grelation",GRelation);
                com.Parameters.AddWithValue("@gname",GName);
                com.Parameters.AddWithValue("@gmobil",GMobile);
                com.Parameters.AddWithValue("@gaddress",GAddress);
                com.Parameters.AddWithValue("@presentaddres",PrAddress);
                com.Parameters.AddWithValue("@prdistrict",Prdistrict);
                com.Parameters.AddWithValue("@prstate",PrState);
                com.Parameters.AddWithValue("@paraddress",ParAddress);
                com.Parameters.AddWithValue("@pardistrict",ParDistrict);
                com.Parameters.AddWithValue("@parstate",ParState);
                com.Parameters.AddWithValue("@preschool",PreScholName);
                com.Parameters.AddWithValue("@prerollno",PreRollNo);
                com.Parameters.AddWithValue("@passingyr",PassingYr);
                com.Parameters.AddWithValue("@preboard",PreBoard);
                com.Parameters.AddWithValue("@preragistration",Preragistraion);
                com.Parameters.AddWithValue("@trnfercerti",TranferCerti);
                com.Parameters.AddWithValue("@takeaddmision",TakeAddmision);
                com.Parameters.AddWithValue("@img",ImageUr);
                int rd=com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Sucessfully!";
                }
                else
                {
                    msg = "Check Required Field!";
                }
                
            }
            catch (Exception ex)
            {
                msg = "Sql Excepton : " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void selectusername()
        {
            try 
            {
                cn.Open();
                string query = "select FormNo, StName from StudentInfoTable";
                SqlCommand com = new SqlCommand(query,cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if(dt.Rows.Count >0 )
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        id = dt.Rows[i]["FormNo"].ToString();
                        name = dt.Rows[i]["StName"].ToString();
                        newName = id+name;
                        ddl.Items.Add(new ListItem(newName, id));
                    }
                    cn.Close();
                }
            }catch(Exception ex)
            {
                msg = "Exception: " + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void InsertPassStatus()
        {
            try
            {
                cn.Open();
                string query = "update StudentInfoTable set password='" + Password + "', username='" + UserName + "',activestatus='" + ActiveStatus + "',createddate='" + CreatedDate + "' where FormNo=@fno";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@fno",FormNo);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg =UserName+ " have been "+ActiveStatus+". And Password is  "+Password;
                cn.Close();
                }
            }catch(Exception ex)
            {
                msg = "Exception: " + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void selectPassStatus()
        {
            try 
            {
                cn.Open();
                string query = "select FormNo, StName,username,password,activestatus,createddate from StudentInfoTable ";
                SqlCommand com = new SqlCommand(query,cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if(dt.Rows.Count >0)
                {
                    sourc = dt;

                    cn.Close();
                   
                }

            }catch(Exception ex)
            {
                msg = "Exception: " + ex.Message;
            }finally
            {
                cn.Close();
            }

        }
        public void AttandanceInsert()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbStuAttandance ( FKSTFormNo, attandancedate, attandancestatus,subject,teacherId,batch,shift) VALUES (@FKSTFormNo, @attandancedate, @attandancestatus, @subject,@teacherId,@batch,@shift)";
               // string query = "update StudentInfoTable set attandancestatus='" + AttandanceStatus + "', attandancedate='" + AttandanceDate + "' where FormNo=@fno";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@FKSTFormNo", FormNo);
                com.Parameters.AddWithValue("@attandancedate", AttandanceDate);
                com.Parameters.AddWithValue("@attandancestatus", AttandanceStatus);
                com.Parameters.AddWithValue("@subject",AttandanceSub);
                com.Parameters.AddWithValue("@teacherId",TeacherId);
                com.Parameters.AddWithValue("@batch", Batch);
                com.Parameters.AddWithValue("@shift", Shift);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Attandance Succesfully!";
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
        public void SelectStuAttandance()
        {
            try
            {
                cn.Open();
                string query = "select FKSTFormNo, attandancedate, attandancestatus,subject,teacherId,batch,shift from tbStuAttandance ORDER BY attandancedate DESC";
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