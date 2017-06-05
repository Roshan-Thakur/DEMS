using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

namespace AdminHome.AccademicManagement.AcadimicModulBL
{

    public class AcademicBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);

        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;
        public string msg;
        public DataTable sourc = new DataTable();
        public DropDownList ddl = new DropDownList();
        private string _marksbatch; public string MarksBatch { get { return _marksbatch; } set { _marksbatch = value; } }
        private int _teacherid; public int TeacherId { get { return _teacherid; } set { _teacherid = value; } }
        private int _formno; public int FormNo { get { return _formno; } set { _formno = value; } }
        private string _stname; public string StName { get { return _stname; } set { _stname = value; } }
        private string _batch; public string Batch { get { return _batch; } set { _batch = value; } }
        private string _date; public string Date1 { get { return _date; } set { _date = value; } }
        private string _stclass; public string StClass { get { return _stclass; } set { _stclass = value; } }
        private string _shift; public string Shift { get { return _shift; } set { _shift = value; } }
        private string _dob; public string Dob { get { return _dob; } set { _dob = value; } }
        private string _rollno; public string RollNo { get { return _rollno; } set { _rollno = value; } }
        private string _bloodgroup; public string BloodGroup { get { return _bloodgroup; } set { _bloodgroup = value; } }
        private string _adyr; public string AddYear { get { return _adyr; } set { _adyr = value; } }
        private string _group; public string Group1 { get { return _group; } set { _group = value; } }
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
        private string _hmobile; public string HMobile { get { return _hmobile; } set { _hmobile = value; } }
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
        private string _notification; public string Notification { get { return _notification; } set { _notification = value; } }
        public void StuFetchQuery()
        {
            try
            {
                cn.Open();
                string query = "select * from StudentInfoTable";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();

                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                      sourc = dt;
                      FormNo =Convert.ToInt32( dt.Rows[0]["FormNo"]);
                      StName = dt.Rows[1]["StName"].ToString();
                      Batch = dt.Rows[2]["Batch"].ToString();
                      Date1 = dt.Rows[3]["Date1"].ToString();
                      StClass = dt.Rows[4]["Class"].ToString();
                      Shift = dt.Rows[5]["Shift"].ToString();
                      RollNo = dt.Rows[6]["Rollno"].ToString();
                      Dob = dt.Rows[7]["Dob"].ToString();
                      BloodGroup = dt.Rows[8]["BloodGrp"].ToString();
                      Group1 = dt.Rows[9]["Group1"].ToString();
                      Section = dt.Rows[10]["Section"].ToString();
                      Gender = dt.Rows[11]["Gender"].ToString();
                      Religion = dt.Rows[12]["Religion"].ToString();
                      AddYear = dt.Rows[13]["AdmisionYear"].ToString();
                      Fname = dt.Rows[14]["FatName"].ToString();
                      Foccupation = dt.Rows[15]["Foccupation"].ToString();
                      FIncome = dt.Rows[16]["Fincome"].ToString();
                      Mname = dt.Rows[17]["MothName"].ToString();
                      Moccupation = dt.Rows[18]["Moccupation"].ToString();
                      MIncome = dt.Rows[19]["Minome"].ToString();
                      FMobile = dt.Rows[20]["Fmobile"].ToString();
                      MMobile = dt.Rows[21]["Mmobile"].ToString();
                      HMobile = dt.Rows[22]["Hmobile"].ToString();
                      FEmail = dt.Rows[23]["Femail"].ToString(); 
                      MEmail = dt.Rows[24]["Memail"].ToString();
                      GRelation = dt.Rows[25]["GRelation"].ToString();
                      GName = dt.Rows[26]["Gname"].ToString();
                      GMobile = dt.Rows[27]["Gmobile"].ToString();
                      GAddress = dt.Rows[28]["Gaddress"].ToString();
                      PrAddress = dt.Rows[29]["PresentAddress"].ToString();
                      Prdistrict = dt.Rows[30]["PrDistrict"].ToString();
                      PrState = dt.Rows[31]["PrState"].ToString();
                      ParAddress = dt.Rows[32]["ParmanantAddress"].ToString();
                      ParDistrict = dt.Rows[33]["ParDistrict"].ToString();
                      ParState = dt.Rows[34]["ParState"].ToString();
                      PreScholName = dt.Rows[35]["PreviousSchoolName"].ToString();
                      PreRollNo = dt.Rows[36]["RollNoPre"].ToString();
                      PassingYr = dt.Rows[37]["PassingYear"].ToString();
                      PreBoard = dt.Rows[38]["BoardPre"].ToString();
                      Preragistraion = dt.Rows[39]["RagistrationPre"].ToString();
                      TranferCerti = dt.Rows[40]["TranferCertificate"].ToString();
                      TakeAddmision = dt.Rows[41]["TakeAdmision"].ToString();
                      ImageUr = dt.Rows[42]["img"].ToString();
                      Password = dt.Rows[43]["password"].ToString();
                      UserName = dt.Rows[44]["username"].ToString();
                      CreatedDate = dt.Rows[45]["createddate"].ToString();
                      TeacherId=Convert.ToInt32( dt.Rows[48]["assignteacherId"]);
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
        public void UpdateNotificationBoard()
        {
            try 
            {
                cn.Open();
                string query = "update StudentInfoTable set teachermsg=@noti where FormNo=@sid  ";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@noti",Notification);
                com.Parameters.AddWithValue("@sid", FormNo);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Notification Send Sucessfully!";
                    cn.Close();
                }
            }catch(Exception ex)
            {
                msg ="Exception: "+ ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void searchbyclass()
        {
            try
            {
                cn.Open();
                string query = "select * from StudentInfoTable where Shift='" + Shift + "' AND Class='" + StClass + "'";
                SqlCommand com = new SqlCommand(query ,cn);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
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
        public void updatebatch()
        {
            try
            {
                cn.Open();
                string query = "update StudentInfoTable set Batch='"+Batch+"',Section='"+Section+"' where Shift='" + Shift + "' AND Class='" + StClass + "' ";
                SqlCommand com = new SqlCommand(query,cn);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Update sucessfully! " + Batch + "," + Section; ;
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
        public void UpdateAssignedTeacher()
        {
            try
            {
                cn.Open();
                string query = "update StudentInfoTable set assignteacherId='"+TeacherId+"' where FormNo='"+FormNo+"'";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@assignteacherId",TeacherId);
                com.Parameters.AddWithValue("@FormNo",FormNo);
                int rd=com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Updation Sucessfullu!";
                    cn.Close();
                }
            }catch(Exception ex)
            {
                msg = "Exception: " + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void StudentAsigndTeacherDelete()
        {
            try
            {
                cn.Open();
                string query = "update StudentInfoTable set assignteacherId='"+null+"' where FormNo='" + FormNo + "'";
                SqlCommand com = new SqlCommand(query, cn);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Deletion Sucessfully!"+ FormNo;
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
        public void selectrollst()
        {

            try
            {
                cn.Open();
                string query = "select * from StudentInfoTable";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();

                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ddl.DataSource = dt;
                    ddl.DataTextField = "FormNo";
                    ddl.DataBind();
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
        public void selectstudentInfo()
        {
            try
            {
                cn.Open();
                string query = "select * from StudentInfoTable where FormNo='"+FormNo+"' ";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    FormNo =Convert.ToInt32( rd[0].ToString());
                    StName =rd[1].ToString();
                    Batch=rd[2].ToString();
                    StClass=rd[4].ToString();
                    Shift=rd[5].ToString();
                    Dob=rd[7].ToString();
                    BloodGroup=rd[8].ToString();
                    Section=rd[10].ToString();
                    Gender=rd[11].ToString();
                    Religion=rd[12].ToString();
                    AddYear=rd[13].ToString();
                    Fname = rd[14].ToString();
                    FMobile = rd[20].ToString();
                    FEmail=rd[23].ToString();
                    MarksBatch=rd[2].ToString();
                    GRelation=rd[25].ToString();
                    GAddress=rd[28].ToString();
                    GName=rd[26].ToString();
                    GMobile=rd[27].ToString();
                    TeacherId=Convert.ToInt32( rd[49].ToString());
                    ImageUr=rd[42].ToString();
                    TeacherId =Convert.ToInt32( rd[49].ToString());
                    GAddress = rd[28].ToString();
                    Dob=rd[7].ToString();
                    Mname=rd[17].ToString();
                    MMobile=rd[21].ToString();
                    MEmail=rd[24].ToString();
                    PrAddress=rd[32].ToString();
                    ParDistrict=rd[33].ToString();
                    ParState=rd[34].ToString();
                    Notification=rd[50].ToString();
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
        public void selectStudentEmail()
        {
            try
            {
                cn.Open();
                string query = "select * from StudentInfoTable where FormNo='"+FormNo+"' ";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count>0)
                {
                     
                    //FEmail =rd[23].ToString();
                    //FMobile =rd[20].ToString();
                    //StName=rd[1].ToString();
                    FEmail = dt.Rows[0]["Femail"].ToString();
                    FMobile = dt.Rows[0]["Fmobile"].ToString();
                    StName = dt.Rows[0]["StName"].ToString();
                   // Batch = dt.Rows[0]["Batch"].ToString();
                   
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
        public void StudentLogin()
        {
            try 
            {
                cn.Open();
                string query = "select * from StudentInfoTable where username=@username AND password=@password";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@password",Password);
                com.Parameters.AddWithValue("@username",StName);
                SqlDataReader rd=com.ExecuteReader();

                if (rd.Read())
                {
                    msg = "Login Sucessfully!";
                    ActiveStatus=rd[44].ToString();
                    RollNo=rd[0].ToString();
                    StName=rd[1].ToString();
                    cn.Close();
                }
                else
                {
                    msg = "Sorry,Inavlid Password Or Username!";
                }
                
            }catch(Exception ex)
            {
                msg = "Excepion "+ex;
            }finally
            {
                cn.Close();
            }
        }
    }
}