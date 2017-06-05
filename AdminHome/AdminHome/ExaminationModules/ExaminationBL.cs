using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

namespace AdminHome.ExaminationModules
{
    public class ExaminationBL
    {
        static string constring = ConfigurationManager.ConnectionStrings["ConnStringDb1"].ConnectionString;
        SqlConnection cn = new SqlConnection(constring);
        public string msg;
        public DataTable sourc = new DataTable();
        public DropDownList ddlsub = new DropDownList();
        private string  _examid; public string ExamId { get { return _examid; } set { _examid = value; } }
        private string _pdfstatus; public string PdfStatus { get { return _pdfstatus; } set { _pdfstatus = value; } }
        private string _pdfmarksheet; public string PdfMarksheet { get { return _pdfmarksheet; } set { _pdfmarksheet = value; } }
        private string _batch; public string SubBatch { get { return _batch; } set { _batch = value; } }
        private string _generatedate; public string GenerateDate { get { return _generatedate; } set { _generatedate = value; } }
        private int _patternmarks; public int PatternMarks { get { return _patternmarks; } set { _patternmarks = value; } }
        private int _passmarks; public int PassMarks { get { return _passmarks; } set { _passmarks = value; } }
        private float _pointmax; public float PointMax { get { return _pointmax; } set { _pointmax = value; } }
        private float _pointmin; public float PointMin { get { return _pointmin; } set { _pointmin = value; } }
        private float _markmax; public float MakrMax { get { return _markmax; } set { _markmax = value; } }
        private float _markmin; public float MakrMin { get { return _markmin; } set { _markmin = value; } }
        private string _patern; public string ExamPaturn { get { return _patern; } set { _patern = value; } }
        private string _examinfo; public string ExamInfoId { get { return _examinfo; } set { _examinfo = value; } }
        private string _grad; public string Grade { get { return _grad; } set { _grad = value; } }
        private string _examtype; public string ExamType { get { return _examtype; } set { _examtype = value; } }
        private string _subject; public string Subject { get { return _subject; } set { _subject = value; } }
        private int _subjectId; public int SubjectID { get { return _subjectId; } set { _subjectId = value; } }
        private string _code; public string Code { get { return _code; } set { _code = value; } }
        private string _marks; public string Marks { get { return _marks; } set { _marks = value; } }
        private string _mandatory; public string Manadtory { get { return _mandatory; } set { _mandatory = value; } }
        private string _optional; public string Optional { get { return _optional; } set { _optional = value; } }
        private string _class; public string ClassSub { get { return _class; } set { _class = value; } }
        private int _examId; public int ExamID { get { return _examId; } set { _examId = value; } }
        private int _gradId; public int GradID { get { return _gradId; } set { _gradId = value; } }
        private int _paturnID; public int PaturnID { get { return _paturnID; } set { _paturnID = value; } }
        private int _examtypeId; public int ExamTYpeID { get { return _examtypeId; } set { _examtypeId = value; } }
        private float _obtainemarks; public float Obtainemarks { get { return _obtainemarks; } set { _obtainemarks = value; } }
        private string _shift; public string Shift { get { return _shift; } set { _shift = value; } }
        private int _formno; public int FormNo { get { return _formno; } set { _formno = value; } }
        private string _stname; public string StName { get { return _stname; } set { _stname = value; } }
        private string _fnam; public string Fname { get { return _fnam; } set { _fnam = value; } }
        private string _mobile; public string Mobile { get { return _mobile; } set { _mobile = value; } }
        public void addsubject()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbSubExamination(subject)VALUES(@Subject)";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@Subject", Subject);
                int rd=com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg="Sucessfully!";
                }
                cn.Close();
            }catch(Exception ex)
            {
                msg ="Exception: "+ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void AddQuestioPaturn()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbQuestionPatern(patern)VALUES(@ExamPaturn)";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@ExamPaturn", ExamPaturn);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Sucessfully!";
                }
                cn.Close();
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
        public void AddGrade()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbgrading(grade,markmin,markmax,pointmin,pointmax)VALUES(@grade,@markmin,@markmax,@pointmin,@pointmax)";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@grade", Grade);
                com.Parameters.AddWithValue("@markmin",MakrMin );
                com.Parameters.AddWithValue("@markmax",MakrMax );
                com.Parameters.AddWithValue("@pointmin", PointMin);
                com.Parameters.AddWithValue("@pointmax", PointMax);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Sucessfully!";
                }
                cn.Close();
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
        public void AddExamInfo()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbExamInfo(examId)VALUES(@examId)";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@examId",ExamInfoId);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Sucessfully!";
                }
                cn.Close();
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
        public void AddExamType()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbExamType(examname)VALUES(@examname)";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@examname", ExamType);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Sucessfully!";
                }
                cn.Close();
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
        public void selectsub()
        {
            try
            {
                cn.Open();
                string query = "select Id,subject from tbSubExamination";
                SqlCommand com = new SqlCommand(query,cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if(dt.Rows.Count>0)
                {
                    ddlsub.DataSource = dt;
                    ddlsub.DataTextField = "Id";
                    ddlsub.DataBind();
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
        public void SelectExamInfoId()
        {
            try
            {
                cn.Open();
                string query = "select Id,examId from tbExamInfo";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ddlsub.DataSource = dt;
                    ddlsub.DataTextField = "examId";
                    ddlsub.DataBind();
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
        public void SelectQuestionPaturn()
        {
            try
            {
                cn.Open();
                string query = "select Id,patern from tbQuestionPatern";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ddlsub.DataSource = dt;
                    ddlsub.DataTextField = "patern";
                    ddlsub.DataBind();
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
        public void SelectExamType()
        {
            try
            {
                cn.Open();
                string query = "select Id,examname from tbExamType";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ddlsub.DataSource = dt;
                    ddlsub.DataTextField = "examname";
                    ddlsub.DataBind();
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
        public void SelectGrading()
        {
            try
            {
                cn.Open();
                string query = "select Id,grade,markmin,markmax,pointmin,pointmax from tbgrading";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ddlsub.DataSource = dt;
                    ddlsub.DataTextField = "grade";
                    ddlsub.DataBind();
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
        public void SubDelte()
        {
            try
            {
                cn.Open();
                string query = "Delete from tbSubExamination where Id='"+SubjectID+"'";
                SqlCommand com = new SqlCommand(query, cn);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Deletion Sucessfully!";
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
        public void SelectMandatorySubject()
        {
            try
            {
                cn.Open();
                string query = "select Id, class, sub, code, optional, mandatoryoptional, marks from tbMandatorySubClass";
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
        public void InsertMandatorySub()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbMandatorySubClass (class, sub, code, optional, mandatoryoptional, marks) VALUES (@ClassSub, @Subject, @Code, @Optional, @Manadtory, @Marks)";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@ClassSub", ClassSub);
                com.Parameters.AddWithValue("@Manadtory", Manadtory);
                com.Parameters.AddWithValue("@Code", Code);
                com.Parameters.AddWithValue("@Marks", Marks);
                com.Parameters.AddWithValue("@Optional", Optional);
                com.Parameters.AddWithValue("@Subject", Subject);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                 msg = "Insertion Sucessfully!";
                 cn.Close();
                }
            }catch(Exception ex)
            {
                msg = "Exception: "+ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void UpdateExamInfo()
        {
            try
            {
                cn.Open();
                string query = "Update tbExamInfo set examId=@examId where Id='" + ExamID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@examId", ExamInfoId);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Sucessfully!";
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
        public void UpdateQuestionPaturn()
        {
            try
            {
                cn.Open();
                string query = "Update tbQuestionPatern set patern=@patern where Id='" + PaturnID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@patern",ExamPaturn);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Sucessfully!";
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
        public void UpdateExamType()
        {
            try
            {
                cn.Open();
                string query = "Update tbExamType set examname=@ExamType where Id='" + ExamTYpeID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@ExamType", ExamType);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Sucessfully!";
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
        public void UpdateGrad()
        {
            try
            {
                cn.Open();
                string query = "Update tbgrading set grade=@grade,markmin=@markmin,markmax=@markmax,pointmin=@pointmin,pointmax=@pointmax where Id='" + GradID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@grade", Grade);
                com.Parameters.AddWithValue("@markmin", MakrMin);
                com.Parameters.AddWithValue("@markmax", MakrMax);
                com.Parameters.AddWithValue("@pointmin", PointMin);
                com.Parameters.AddWithValue("@pointmax", PointMax);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Update Sucessfully!";
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
        public void UpdateMandatorySubject()
        {
            try
            {
                cn.Open();
                string query = "Update tbMandatorySubClass set class=@ClassSub, sub=@Subject, code=@Code, optional=@Optional, mandatoryoptional=@Manadtory, marks=@Marks where Id='" + SubjectID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@ClassSub", ClassSub);
                com.Parameters.AddWithValue("@Subject", Subject);
                com.Parameters.AddWithValue("@Code", Code);
                com.Parameters.AddWithValue("@Optional", Optional);
                com.Parameters.AddWithValue("@Manadtory", Manadtory);
                com.Parameters.AddWithValue("@Marks", Marks);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Update Sucessfully!";
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
        public void AddSubjectPattern()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbsubjectpettern(subject1, batch, examtype, examinfo, questionpettern, patternmarks, passmarks, optionalmandatory) VALUES (@subject, @batch, @examtype, @examinfo, @questionpettern, @patternmarks, @passmarks, @optionalmandatory)";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@subject", Subject);
                com.Parameters.AddWithValue("@examtype", ExamType);
                com.Parameters.AddWithValue("@examinfo", ExamInfoId);
                com.Parameters.AddWithValue("@questionpettern", ExamPaturn);
                com.Parameters.AddWithValue("@optionalmandatory", Optional);
                com.Parameters.AddWithValue("@batch", SubBatch);
                com.Parameters.AddWithValue("@passmarks", PassMarks);
                com.Parameters.AddWithValue("@patternmarks", PatternMarks);
                int rd=com.ExecuteNonQuery();

                if(Convert.ToBoolean(rd))
                {
                    msg = "Sucessfully!";
                    cn.Close();
                }
            }catch(Exception ex)
            {
                msg ="Exception! "+ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void selectSubjextpattern()
        {
            try
            {
                cn.Open();
                string query = "select * from tbsubjectpettern";
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
        public void deletesubjectpattern()
        {
            try
            {
                cn.Open();
                string query = "Delete from tbsubjectpettern where Id='" + PaturnID + "'";
                SqlCommand com = new SqlCommand(query, cn);
                int rd = com.ExecuteNonQuery();
              if(Convert.ToBoolean(rd))
              {
                  msg = "Deletion Sucessfully!";
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
        public void InsertMarks()
        {
            try 
            {
                cn.Open();
                string query = "INSERT INTO tbmarkentry(studentname, studentrollno, fname, mobile, batch, subject, shift, examtype,examinfoid, obtainedmarks, passmarks, questionmarks, patterntype) VALUES (@studentname, @studentrollno, @fname, @mobile, @batch, @subject, @shift, @examtype,@examinfoid, @obtainedmarks, @passmarks, @questionmarks, @patterntype)";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@examtype", ExamType);
                com.Parameters.AddWithValue("@examinfoid", ExamInfoId);
                com.Parameters.AddWithValue("@subject", Subject);
                com.Parameters.AddWithValue("@batch", SubBatch);
                com.Parameters.AddWithValue("@shift", Shift);
                com.Parameters.AddWithValue("@fname", Fname);
                com.Parameters.AddWithValue("@studentname", StName);
                com.Parameters.AddWithValue("@studentrollno", FormNo);
                com.Parameters.AddWithValue("@mobile", Mobile);
                com.Parameters.AddWithValue("@obtainedmarks", Obtainemarks);
                com.Parameters.AddWithValue("@passmarks", PassMarks);
                com.Parameters.AddWithValue("@questionmarks", PatternMarks);
                com.Parameters.AddWithValue("@patterntype", ExamPaturn);
                int rd = com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg = "Marks Entry Sucessfully!";
                    cn.Close();
                }
            }catch(Exception ex)
            {
                msg = "Exception: "+ex.Message;
            }finally
            {
                cn.Close();
            }
        }
        public void selectMarkssheet()
        {
            try
            { 
                cn.Open();
                string query = "select * from tbmarkentry";
                SqlCommand com = new SqlCommand(query,cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if(dt.Rows.Count>0)
                {
                    sourc = dt;
                    cn.Close();
                }
            }catch(Exception ex)
            {
                msg = "Exception: "+ex;
            }finally
            {
                cn.Close();
            }
        }
        public void InsertMarksheet()
        {
            try
            {
                cn.Open();
                string query = "INSERT INTO tbmarksheetcollection(Id,examtype, generateddate, formno, marksheet, status,markbatch,totalmarks,examinfoid) VALUES (@Id,@examtype, @generateddate, @formno, @marksheet, @status,@markbatch,@totalmarks,@examinfoid)";
                SqlCommand com = new SqlCommand(query,cn);
                com.Parameters.AddWithValue("@examtype", ExamType);
                com.Parameters.AddWithValue("@Id", ExamId);
                com.Parameters.AddWithValue("@generateddate", GenerateDate);
                com.Parameters.AddWithValue("@formno",FormNo);
                com.Parameters.AddWithValue("@marksheet",PdfMarksheet);
                com.Parameters.AddWithValue("@status",PdfStatus);
                com.Parameters.AddWithValue("@markbatch",SubBatch);
                com.Parameters.AddWithValue("@totalmarks", Marks);
                com.Parameters.AddWithValue("@examinfoid", ExamInfoId);
                int rd=com.ExecuteNonQuery();
                if(Convert.ToBoolean(rd))
                {
                    msg="Your Marksheet have saved!";
                    cn.Close();
                }

            }catch(Exception ex)
            {
                msg = "This ExamId already Exist in Database!";
            }finally
            {
                cn.Close();
            }
        }
        public void FetchTotalMArks()
        {
            try
            {
                cn.Open();
                string query = "select * from tbmarksheetcollection where markbatch=@markbatch AND formno=@fno";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@fno", FormNo);
                com.Parameters.AddWithValue("@markbatch", SubBatch);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
               // Marks = "hello";
                if (dt.Rows.Count > 0)
                {
                    sourc = dt;
                    for (int i = 0; i < dt.Rows.Count;i++ )
                    {
                        Marks+= dt.Rows[i]["totalmarks"].ToString()+"/";
                    }
                    string str = Marks;
                    string[] arg =str.Split('/');
                    Marks = (Convert.ToInt32(arg[0]) + Convert.ToInt32(arg[2])).ToString() + "/" + (Convert.ToInt32(arg[1]) + Convert.ToInt32(arg[3])).ToString();
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                msg = "Exception: " + ex;
            }
            finally
            {
                cn.Close();
            }
        }
        public void selectexaminfoid()
        {
            try
            {
                cn.Open();
                string query = "select * from tbmarkentry where batch='"+SubBatch+"' AND studentrollno='"+FormNo+"' AND examtype='"+ExamType+"' ";
                SqlCommand com = new SqlCommand(query, cn);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ExamInfoId =dt.Rows[0]["examinfoid"].ToString();
                    cn.Close();
                }
            }
            catch (Exception ex)
            {
                msg = "Exception: " + ex;
            }
            finally
            {
                cn.Close();
            }
        }
        public void retriveCollectedmarksheet()
        {
            try
            {
                cn.Open();
                string query = "select * from tbmarksheetcollection ORDER BY marksheet desc";
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
                msg = "Exception: " + ex;
            }
            finally
            {
                cn.Close();
            }
        }
        public void deleteCollectedmarksheet()
        {
            try
            {
                cn.Open();
                string query = "Delete from tbmarksheetcollection where Id=@markid";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@markid",ExamId);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Deletion Sucessfully!";
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
        public void updatemarksheetentry()
        {
            try
            {
                cn.Open();
                int idmarks=Convert.ToInt32( ExamId);
                string query = "Update tbmarkentry set obtainedmarks='"+Marks+"' where Id='"+idmarks+"' ";
                SqlCommand com = new SqlCommand(query, cn);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Updated!";
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
        public void deletemarkrentry()
        {
            try
            {
                cn.Open();
                int idmark=Convert.ToInt32(ExamId);
                string query = "Delete from tbmarkentry where Id=@markid";
                SqlCommand com = new SqlCommand(query, cn);
                com.Parameters.AddWithValue("@markid",idmark );
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Deleted!";
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
        public void ExportMarksheet()
        {
            try
            {
                cn.Open();
                string query = "Update tbmarksheetcollection set exportstatus='" + PdfStatus + "' where Id='" + ExamId + "' ";
                SqlCommand com = new SqlCommand(query, cn);
                int rd = com.ExecuteNonQuery();
                if (Convert.ToBoolean(rd))
                {
                    msg = "Marksheet Status Exported!";
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