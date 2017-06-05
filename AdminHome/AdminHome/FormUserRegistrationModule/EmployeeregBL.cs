using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace AdminHome.FormUserRegistrationModule
{
    public class EmployeeregBL
    {
        static string con = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        string id = string.Empty;
        string idname = string.Empty;
        string user = string.Empty;
        private string _latitute; public string Latitute { get { return _latitute; } set { _latitute = value; } }
        private string _longitute; public string Longitute { get { return _longitute; } set { _longitute = value; } }
        private string _attandancelocation; public string AttandLocation { get { return _attandancelocation; } set { _attandancelocation = value; } }
        private int _attandancestatus; public int AttandStatus { get { return _attandancestatus; } set { _attandancestatus = value; } }
        private string _attandancedate; public string AttandDate { get { return _attandancedate; } set { _attandancedate = value; } }
        private string _Attandancetime; public string TimeAttand { get { return _Attandancetime; } set { _Attandancetime = value; } }
        private string _createdtime; public string CreatedDate { get { return _createdtime; } set { _createdtime = value; } }
        private int _eid; public int EID { get { return _eid; } set { _eid = value; } }
        private string _cardno; public string CardNo { get { return _cardno; } set { _cardno = value; } }
        private string _name; public string Name { get { return _name; } set { _name = value; } }
        private string _fname; public string FName { get { return _fname; } set { _fname = value; } }
        private string _address; public string Address { get { return _address; } set { _address = value; } }
        private string _departime; public string DepartureTime { get { return _departime; } set { _departime = value; } }
        private string _phone; public string Phone { get { return _phone; } set { _phone = value; } }
        private string _religion; public string Religion { get { return _religion; } set { _religion = value; } }
        private string _status; public string Status { get { return _status; } set { _status = value; } }
        private string _email; public string Email { get { return _email; } set { _email = value; } }
        private string _joindate; public string DOJ { get { return _joindate; } set { _joindate = value; } }
        private string _gender; public string Gender { get { return _gender; } set { _gender = value; } }
        private string _mname; public string MName { get { return _mname; } set { _mname = value; } }
        private string _meritstus; public string MeritStatus { get { return _meritstus; } set { _meritstus = value; } }
        private string _blood; public string Blood { get { return _blood; } set { _blood = value; } }
        private string _designation; public string Designation { get { return _designation; } set { _designation = value; } }
        private string _dob; public string DOB { get { return _dob; } set { _dob = value; } }
        private string _degree; public string Degree { get { return _degree; } set { _degree = value; } }
        private string _nationality; public string Nationality { get { return _nationality; } set { _nationality = value; } }
        private string _image; public string Profile { get { return _image; } set { _image = value; } }
        private string _shift; public string Shift { get { return _shift; } set { _shift = value; } }
        private string _type; public string Type { get { return _type; } set { _type = value; } }
        private string _basic; public string Basic { get { return _basic; } set { _basic = value; } }
        private string _gross; public string Gross { get { return _gross; } set { _gross = value; } }
        private string _total; public string Total { get { return _total; } set { _total = value; } }
        private string _frsal; public string FromSal { get { return _frsal; } set { _frsal = value; } }
        private string _tosal; public string ToSal { get { return _tosal; } set { _tosal = value; } }
        private string _statustype; public string TypeStatus { get { return _statustype; } set { _statustype = value; } }
        private string _typeallownce; public string AllownceType { get { return _typeallownce; } set { _typeallownce = value; } }
        private string _percentage; public string TypePercent { get { return _percentage; } set { _percentage = value; } }
        private string _username; public string UserName { get { return _username; } set { _username = value; } }
        private string _password; public string Password { get { return _password; } set { _password = value; } }
        private string _activestatus; public string ActiveStatus { get { return _activestatus; } set { _activestatus = value; } }
        private string _fstname; public string Firstname { get { return _fstname; } set { _fstname = value; } }
        private string _lstname; public string Lastname { get { return _lstname; } set { _lstname = value; } }
        private string _createUser; public string CreateByUser { get { return _createUser; } set { _createUser = value; } }
        private string _p1; public string P1 { get { return _p1; } set { _p1 = value; } }
        private string _p2; public string P2 { get { return _p2; } set { _p2 = value; } }
        private string _school; public string School { get { return _school; } set { _school = value; } }
        private string _college; public string College { get { return _college; } set { _college = value; } }

        private string _news; public string News { get { return _news; } set { _news = value; } }
        private string _events; public string Events { get { return _events; } set { _events = value; } }
        private string _fb; public string Facebook { get { return _fb; } set { _fb = value; } }
        private string _tweeter; public string Tweeter { get { return _tweeter; } set { _tweeter = value; } }
        private string _notification; public string Notification { get { return _notification; } set { _notification = value; } }

        public DataTable source = new DataTable();

        public string msg;
        public DropDownList ddl1 = new DropDownList(); 
        public DropDownList ddl = new DropDownList();

        public void UpdateNotification()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbemployee SET notification=@notification  WHERE EId=@EID";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@notification",Notification);
                com.Parameters.AddWithValue("@EID", EID);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Notification!";
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
        public void SelectNotification()
        {
            try
            {
                cn.Open();
                string query;
                query = "select * from tbemployee where EId='"+EID+"'";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    Notification = rd[29].ToString();
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
        public void UpdateNews()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  website SET News=@News  WHERE Id=1";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@News", News);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Update News!" + CardNo;
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
        public void SelectNews()
        {
            try
            {
                cn.Open();
                string query;
                query = "select * from website where Id=1";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    News = rd[3].ToString();
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

        public void UpdateSocialLink()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  website SET fb=@fb,twitter=@twitter,Email=@Email  WHERE Id=1";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@fb", Facebook);
                com.Parameters.AddWithValue("@twitter",Tweeter);
                com.Parameters.AddWithValue("@Email", Email);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Update SocialLink!" + CardNo;
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
        public void SelectSocilaLink()
        {
            try
            {
                cn.Open();
                string query;
                query = "select * from website where Id=1";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    Facebook = rd[1].ToString();
                    Tweeter = rd[4].ToString();
                    Email = rd[5].ToString();
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

        public void UpdateEvent()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  website SET Event=@Events  WHERE Id=1";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@Events", Events);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Events!" + CardNo;
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
        public void SelectEvent()
        {
            try
            {
                cn.Open();
                string query;
                query = "select * from website where Id=1";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    Events = rd[2].ToString();
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

        public void AdminInsert()
        {
            try
            {
                cn.Open();

                string query = "INSERT INTO AdminProfile(email, mobile, dob, gender , firstname , lastname, password, image, address, school, college, degree, p1, p2, blood, designation, Status, createdby, username,fname) VALUES (@email, @mobile, @dob, @gender , @firstname , @lastname, @password, @image, @address, @school, @college, @degree, @p1, @p2, @blood, @designation, @Status, @createdby, @username,@fname)";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@firstname", Firstname);
                com.Parameters.AddWithValue("@lastname", Lastname);
                com.Parameters.AddWithValue("@fname", FName);
                com.Parameters.AddWithValue("@designation", Designation);
                com.Parameters.AddWithValue("@email", Email);
                com.Parameters.AddWithValue("@address", Address);
                com.Parameters.AddWithValue("@blood", Blood);
                com.Parameters.AddWithValue("@Status", Status);
                com.Parameters.AddWithValue("@createdby", CreateByUser);
                com.Parameters.AddWithValue("@gender", Gender);
                com.Parameters.AddWithValue("@p1", P1);
                com.Parameters.AddWithValue("@p2", P2);
                com.Parameters.AddWithValue("@dob", DOB);
                com.Parameters.AddWithValue("@degree", Degree);
                com.Parameters.AddWithValue("@school", School);
                com.Parameters.AddWithValue("@college", College);
                com.Parameters.AddWithValue("@image", Profile);
                com.Parameters.AddWithValue("@username", UserName);
                com.Parameters.AddWithValue("@password", Password);
                com.Parameters.AddWithValue("@mobile", Phone);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Registration Successfully!";
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
        public void UpdateAdminProfile()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  AdminProfile SET email=@email, mobile=@mobile, dob=@dob, gender=@gender , firstname=@firstname , lastname=@lastname, password=@password, image=@image, address=@address, school=@school, college=@college, degree=@degree, p1=@p1, p2=@p2, blood=@blood, designation=@designation, Status=@Status, username=@username,fname=@fname WHERE uid='"+EID+"' ";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@firstname", Firstname);
                com.Parameters.AddWithValue("@lastname", Lastname);
                com.Parameters.AddWithValue("@fname", FName);
                com.Parameters.AddWithValue("@designation", Designation);
                com.Parameters.AddWithValue("@email", Email);
                com.Parameters.AddWithValue("@address", Address);
                com.Parameters.AddWithValue("@blood", Blood);
                com.Parameters.AddWithValue("@Status", Status);
                com.Parameters.AddWithValue("@createdby", CreateByUser);
                com.Parameters.AddWithValue("@gender", Gender);
                com.Parameters.AddWithValue("@p1", P1);
                com.Parameters.AddWithValue("@p2", P2);
                com.Parameters.AddWithValue("@dob", DOB);
                com.Parameters.AddWithValue("@degree", Degree);
                com.Parameters.AddWithValue("@school", School);
                com.Parameters.AddWithValue("@college", College);
                com.Parameters.AddWithValue("@image", Profile);
                com.Parameters.AddWithValue("@username", UserName);
                com.Parameters.AddWithValue("@password", Password);
                com.Parameters.AddWithValue("@mobile", Phone);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Successfully!" + CardNo;
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
        public void SelectAdminProfile()
        {
            try
            {
                cn.Open();
                string query;
                query = "select * from AdminProfile where uid='" + EID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    Firstname=rd[5].ToString();
                    Lastname=rd[6].ToString();
                    P1=rd[13].ToString();
                    P2=rd[14].ToString();
                    Email=rd[1].ToString();
                    School=rd[10].ToString();
                    College=rd[11].ToString();
                    CreateByUser=rd[18].ToString();
                    UserName=rd[19].ToString();
                    FName=rd[20].ToString();
                    Address = rd[9].ToString();
                    Status = rd[17].ToString();
                    Gender = rd[4].ToString();
                    Designation = rd[16].ToString();
                    DOB = rd[3].ToString();
                    Degree = rd[12].ToString();
                    Blood = rd[15].ToString();
                    Profile = rd[8].ToString();
                    Phone = rd[2].ToString();
                    Password=rd[7].ToString();
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
        public void UpdateAdminPassword()
        {
            try
            {
                cn.Open();
                string query = "update AdminProfile set password=@password where email=@email";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@email",Email);
                com.Parameters.AddWithValue("@password", Password);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Password Change Successfully!";
                    cn.Close();
                }
            }
            catch (Exception ex) 
            { msg = "Exception: " + ex.Message; }
            finally
            {
                cn.Close();
            }
        }
        public void updateemp()
        {
            try
            {
                cn.Open();

                string query = "UPDATE  tbemployee SET name=@name, fname=@fname, department=@department, religion=@religion, email=@email, praddress=@praddress, shift=@shift, status=@status, joindate=@joindate, gender=@gender, mname=@mname, designation=@designation, maritalstatus=@maritalstatus, dob=@dob, lastdegree=@lastdegree, nationality=@nationality, blooggroop=@blooggroop, profileimg=@profileimg,type=@type,phone=@phone WHERE EId=@eid ";
               
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@name", Name);
                com.Parameters.AddWithValue("@fname", FName);
                com.Parameters.AddWithValue("@department", DepartureTime);
                com.Parameters.AddWithValue("@religion", Religion);
                com.Parameters.AddWithValue("@email", Email);
                com.Parameters.AddWithValue("@praddress", Address);
                com.Parameters.AddWithValue("@shift", Shift);
                com.Parameters.AddWithValue("@status", Status);
                com.Parameters.AddWithValue("@joindate", DOJ);
                com.Parameters.AddWithValue("@gender", Gender);
                com.Parameters.AddWithValue("@mname", MName);
                com.Parameters.AddWithValue("@designation", Designation);
                com.Parameters.AddWithValue("@maritalstatus", MeritStatus);
                com.Parameters.AddWithValue("@dob", DOB);
                com.Parameters.AddWithValue("@lastdegree", Degree);
                com.Parameters.AddWithValue("@nationality", Nationality);
                com.Parameters.AddWithValue("@blooggroop", Blood);
                com.Parameters.AddWithValue("@profileimg", Profile);
                com.Parameters.AddWithValue("@type", Type);
                com.Parameters.AddWithValue("@phone", Phone);
                com.Parameters.AddWithValue("@eid",EID);
                int rd = com.ExecuteNonQuery();

                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Successfully!" + CardNo;
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
        public void InserEmp()
        {
            try 
            {
                cn.Open();

                string query = "INSERT INTO tbemployee(name, fname, department, religion, email, praddress, shift, status, joindate, gender, mname, designation, maritalstatus, dob, lastdegree, nationality, blooggroop, profileimg, cardno,type,phone) VALUES (@name, @fname, @department, @religion, @email, @praddress, @shift, @status, @joindate, @gender, @mname, @designation, @maritalstatus, @dob, @lastdegree, @nationality, @blooggroop, @profileimg, @cardno,@type,@phone)";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@name",Name);
                com.Parameters.AddWithValue("@fname",FName);
                com.Parameters.AddWithValue("@department",DepartureTime);
                com.Parameters.AddWithValue("@religion",Religion);
                com.Parameters.AddWithValue("@email",Email);
                com.Parameters.AddWithValue("@praddress",Address);
                com.Parameters.AddWithValue("@shift",Shift);
                com.Parameters.AddWithValue("@status",Status);
                com.Parameters.AddWithValue("@joindate",DOJ);
                com.Parameters.AddWithValue("@gender",Gender);
                com.Parameters.AddWithValue("@mname",MName);
                com.Parameters.AddWithValue("@designation",Designation);
                com.Parameters.AddWithValue("@maritalstatus",MeritStatus);
                com.Parameters.AddWithValue("@dob",DOB);
                com.Parameters.AddWithValue("@lastdegree",Degree);
                com.Parameters.AddWithValue("@nationality",Nationality);
                com.Parameters.AddWithValue("@blooggroop",Blood);
                com.Parameters.AddWithValue("@profileimg",Profile);
                com.Parameters.AddWithValue("@cardno",CardNo);
                com.Parameters.AddWithValue("@type", Type);
                com.Parameters.AddWithValue("@phone", Phone);
                int rd=com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                msg = "Registration Successfully!" + CardNo+Name+FName;
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
        public void SelectEMpStaff()
        {
            try 
            {
                cn.Open();
                string query;
                if (Type.ToString().CompareTo("both") == 0) 
                {
                    query = "select * from tbemployee";
                }
                else
                {
                    query = "select * from tbemployee where type='" + Type + "'";
                }
                SqlCommand com = new SqlCommand(query,cn);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count!=0)
                {
                source = dt;
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
        public void EmpDelete()
        {
            try
            {
                cn.Open();
                SqlCommand com = new SqlCommand("DELETE FROM tbemployee WHERE EId = @EID", cn);
                com.Parameters.AddWithValue("@EID", EID);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
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
        public void EIDSelectPopup()
        {
            try
            {
                cn.Open();
                string query;
                query = "select name from tbemployee where EId='" + EID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt); msg = "hello";
                if (dt.Rows.Count != 0)
                { 
                    Name=dt.Rows[0].ToString();
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
        public void selectemp()
        {
            try
            {
                cn.Open();
                string query;
                query = "select * from tbemployee where EId='" + EID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataReader rd = com.ExecuteReader();
                while(rd.Read())
                {
                    Name=rd[1].ToString();
                    FName=rd[2].ToString();
                    DepartureTime=rd[3].ToString();
                    Religion=rd[4].ToString();
                    Email=rd[5].ToString();
                    Address =rd[6].ToString();
                    Shift=rd[7].ToString();
                    Status=rd[8].ToString();
                    DOJ=rd[9].ToString();
                    Gender=rd[10].ToString();
                    MName=rd[11].ToString();
                    Designation=rd[12].ToString();
                    MeritStatus=rd[13].ToString();
                    DOB=rd[14].ToString();
                    Degree=rd[15].ToString();
                    Nationality=rd[16].ToString();
                    Blood=rd[17].ToString();
                    Profile = rd[18].ToString();
                    Phone=rd[21].ToString();
                    Type=rd[20].ToString();
                    Basic=rd[22].ToString();
                    Gross=rd[23].ToString();
                    Total=rd[24].ToString();
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
        public void selectsalaryemp()
        {
            try
            {
                cn.Open();
                string query;
                query = "select EId,name,department,designation,basic,grosspay,total from tbemployee";
                SqlCommand com = new SqlCommand(query,cn);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddl.DataSource=dt;
                    ddl.DataTextField = "name";
                    ddl.DataBind();
                    ddl1.DataSource = dt;
                    ddl1.DataTextField = "EId";
                    ddl1.DataBind();
                    source = dt;
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
        public void updatesalary()
        {
            try 
            {
                cn.Open();
                string query = "UPDATE tbemployee SET basic=@basic,grosspay=@gross,total=@total WHERE EId=@eid";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@basic",Basic);
                com.Parameters.AddWithValue("@gross",Gross);
                com.Parameters.AddWithValue("@total",Total);
                com.Parameters.AddWithValue("@eid",EID);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Salary Update Sucessfully!";
                }
                else
                {
                    msg = "Sorry...Updation Failed!";
                }
                cn.Close();
            }catch(Exception ex)
            {
                msg = "Exception:" + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void searchengin()
        {
            try
            {
                cn.Open();
                string query;
                query = "select EId,name,department,designation,basic,grosspay,total from tbemployee where name='" + Name + "' AND department='" + DepartureTime + "' Or total between '"+ FromSal + "' AND '" + ToSal + "' ";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    source = dt;
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
        public void insertallownce()
        {
            try 
            { 
                cn.Open();
                string query = "insert into tbAlowncesalary(allownctype,percentage,status)values(@allownce,@percent,@status)";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@allownce",AllownceType);
                com.Parameters.AddWithValue("@percent",TypePercent);
                com.Parameters.AddWithValue("@status",TypeStatus);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                msg = "Insertion Sucessfully!  " + AllownceType;
                cn.Close();
                }
            }
            catch(Exception ex)
            {
                msg = "Exception: " + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void selectallownce()
        {
            try
            {
                cn.Open();
                string query;
                query = "select * from tbAlowncesalary";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    source = dt;
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
        public void updateallownce()
        {
            try 
            {
                cn.Open();
                string query = "UPDATE tbAlowncesalary SET allownctype=@AllownceType,percentage=@TypePercent,status=@TypeStatus where Id=@eid ";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@TypePercent", TypePercent);
                com.Parameters.AddWithValue("@TypeStatus", TypeStatus);
                com.Parameters.AddWithValue("@AllownceType", AllownceType);
                com.Parameters.AddWithValue("@eid",EID);
                int check = com.ExecuteNonQuery();
                if(Convert.ToBoolean(check))
                {
                    msg = "Updation Sucessfully! " + TypePercent;
                }
                cn.Close();
            }catch(Exception ex)
            {
                msg = "Exception" + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void deletetype()
        {
            try
            {
                cn.Open();
                string query = "Delete from tbAlowncesalary where Id=@eid ";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@eid", EID);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Deleted! "+EID;
                }
                cn.Close();
            }
            catch (Exception ex)
            {
                msg = "" + ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void selectEID()
        {
            try 
            {
                cn.Open();
                string query = "select EId from tbemployee where type='"+Type+"' ";
                SqlCommand com = new SqlCommand(query,cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if(dt.Rows.Count!=0)
                {
                    ddl.DataSource = dt;
                    ddl.DataTextField = "EId";
                    ddl.DataBind();
                    cn.Close();
                }
                cn.Close();
            }catch(Exception ex)
            {
               msg="Exception: "+ ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void SelectUsername()
        {
            try 
            {
                cn.Open();
                string query = "select EId,name from tbemployee;";
                SqlCommand com = new SqlCommand(query,cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if(dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count;i++ )
                    {
                        id = dt.Rows[i]["EId"].ToString();
                        idname = dt.Rows[i]["name"].ToString();
                        user = id + "__" + idname;
                        ddl.Items.Add(new ListItem(user,id));
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
        public void updatePassword()
        {
            try
            {
                cn.Open();
                string query = "update tbemployee set createddate='" + CreatedDate + "',password='" + Password + "', username='" + UserName + "',activestatus='" + ActiveStatus + "' where EId=@eid";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@eid", EID);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = UserName + " have been " + ActiveStatus + ". And Password is  " + Password;
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
        public void selectPassStatus()
        {
            try
            {
                cn.Open();
                string query = "select EId,name,username,password,activestatus,createddate from tbemployee ";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    source = dt;

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
        public void InsertAttandance()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO EmpAttandance(FKEID, attandancedate, attandancestatus, attandancetime) VALUES (@eid, @attandancedate, @attandancestatus, @attandancetime)";
               
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@eid", EID);
                com.Parameters.AddWithValue("@attandancedate", AttandDate);
                com.Parameters.AddWithValue("@attandancestatus", AttandStatus);
                com.Parameters.AddWithValue("@attandancetime",TimeAttand);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Attandance succesfully! User Id";
                    cn.Close();
                }
                else
                {
                    msg = "Sorry Incorrect EID!";
                }
            }
            catch (Exception ex)
            {
                msg="Exception: "+ex.Message;
                msg = "Sorry Incorrect EID!";
            }
            finally
            {
                cn.Close();
            }
        }
        public void SelectPresentedemp()
        {
            try
            {
                cn.Open();
                string query = "select FKEID,attandancestatus,attandancedate,attandancetime,latitute,longitute from EmpAttandance where attandancestatus=@active and attandancedate=@todaydate ORDER BY attandancetime DESC";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@active", AttandStatus);
                com.Parameters.AddWithValue("@todaydate",AttandDate);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    source = dt;
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
        public void selectAbsentCurrentEmp()
        {
             try
            {
                cn.Open();
                string query = "SELECT tbemployee.EId,tbemployee.name,tbemployee.fname FROM tbemployee WHERE tbemployee.EId NOT IN(SELECT EmpAttandance.FKEID  FROM EmpAttandance where EmpAttandance.FKEID=tbemployee.EId and EmpAttandance.attandancedate=@todaydate )";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@todaydate",AttandDate);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    source = dt;
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
        public void InsertAttandance1()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO EmpAttandance(FKEID, attandancedate, attandancestatus, attandancetime,latitute,longitute) VALUES (@eid, @attandancedate, @attandancestatus, @attandancetime,@latitute,@longitute)";

                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@eid", EID);
                com.Parameters.AddWithValue("@attandancedate", AttandDate);
                com.Parameters.AddWithValue("@attandancestatus", AttandStatus);
                com.Parameters.AddWithValue("@attandancetime", TimeAttand);
                com.Parameters.AddWithValue("@latitute", _latitute);
                com.Parameters.AddWithValue("@longitute", Longitute);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Attandance succesfully! User Id";
                    cn.Close();
                }
                else
                {
                    msg = "Sorry Incorrect EID!";
                }
            }
            catch (Exception ex)
            {
                msg = "Exception: " + ex.Message;
                msg = "Sorry Incorrect EID!";
            }
            finally
            {
                cn.Close();
            }
        }
        public void SelectAllEmpAttandance()
        {
            try
            {
                cn.Open();
                string query = "select * from EmpAttandance ORDER BY attandancetime DESC";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    source = dt;
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
        public void LoginTeacher()
        {
            try
            {
                cn.Open();
                string query = "select * from tbemployee where username=@username AND password=@password";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@password", Password);
                com.Parameters.AddWithValue("@username", Name);
                SqlDataReader rd = com.ExecuteReader();

                if (rd.Read())
                {
                    msg = "Login Sucessfully!";
                    EID=Convert.ToInt32( rd[0].ToString());
                    ActiveStatus = rd[27].ToString();
                    Email=rd[5].ToString();
                    Name=rd[1].ToString();
                    cn.Close();
                }
                else
                {
                    msg = "Sorry,Inavlid Password Or Username!";
                }

            }
            catch (Exception ex)
            {
                msg = "Excepion " + ex;
            }
            finally
            {
                cn.Close();
            }
        }
    }
}