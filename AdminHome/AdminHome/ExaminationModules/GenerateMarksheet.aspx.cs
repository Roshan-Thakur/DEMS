using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
namespace AdminHome.ExaminationModules
{
    public partial class GenerateMarksheet : System.Web.UI.Page
    {
        DataTable chdt = new DataTable();
        float m, n;
        public string FileName, FilePath;
        private string _pdfpath; public string PdfPath { get { return _pdfpath; } set { _pdfpath = value; } }
        ExaminationBL ex = new ExaminationBL();
        ExaminationBL ex1 = new ExaminationBL();
        AdminSettingModule.AddBatchYr bat = new AdminSettingModule.AddBatchYr();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        public string CodeBehindVarPublic = "Public Variable";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                selectexamype();
                selectrollno();
                selectExamInfo();
            }
        }
        public void selectrollno()
        {
            ac.selectrollst();
            ddlrollno.DataSource = ac.ddl.DataSource;
            ddlrollno.DataTextField = "FormNo";
            ddlrollno.DataBind();
            System.Web.UI.WebControls.ListItem tm = new System.Web.UI.WebControls.ListItem("Select", "-1");
            ddlrollno.Items.Insert(0,tm);
        }
        public void selectexamype()
        {
            ex.SelectExamType();
            ddlexamtype.DataSource = ex.ddlsub.DataSource;
            ddlexamtype.DataTextField = "examname";
            ddlexamtype.DataBind();
            System.Web.UI.WebControls.ListItem tm = new System.Web.UI.WebControls.ListItem("Select", "-1");
            ddlexamtype.Items.Insert(0, tm);
        }
        public void selectExamInfo()
        {
            ex.SelectExamInfoId();
            ddlexamid.DataSource = ex.ddlsub.DataSource;
            ddlexamid.DataTextField = "examId";
            ddlexamid.DataBind();
            System.Web.UI.WebControls.ListItem tm = new System.Web.UI.WebControls.ListItem("Select", "-1");
            ddlexamid.Items.Insert(0, tm);
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            if (ddlrollno.SelectedValue != "-1" && ddlexamtype.SelectedValue != "-1" && ddlexamid.SelectedValue!="-1")
            {
                ex.selectMarkssheet();
                dv = new DataView(ex.sourc);
                dv.RowFilter = "studentrollno='" + ddlrollno.SelectedValue + "' AND examtype='" + ddlexamtype.SelectedValue + "' AND examinfoid='"+ddlexamid.SelectedValue+"'";
                if(dv.Count>0)
                {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;

                try
                {
                    studentInfo();
                    studentstatus();

                }catch(Exception f)
                {
                    lbltxtmarks.Text = "Exception: " + f.Message;
                }

               }
                else
                {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();
                }
           }
        }
        public void studentInfo()
        {
            lbltype.Text = ddlexamtype.SelectedValue + "Examination";
            ac.FormNo =Convert.ToInt32(ddlrollno.SelectedValue);
            ac.selectstudentInfo();
            lbltxtbatch.Text = ac.MarksBatch;
            lbl11name.Text = ac.StName;
            lbltxt1rollno.Text = ac.FormNo.ToString();
            int tid = Convert.ToInt32(ac.TeacherId.ToString());
            FormUserRegistrationModule.EmployeeregBL teacher = new FormUserRegistrationModule.EmployeeregBL();
            teacher.EID = tid;
            teacher.selectemp();
            lbltxt1cordinator.Text = teacher.Name;
            lbl1fname.Text = ac.Fname;
            lbltxt1mobile.Text = ac.FMobile;
            lbltxt1address.Text = ac.GAddress;
            lbltxtdate.Text = System.DateTime.Now.ToShortDateString();
            lbltxtdob.Text = ac.Dob;

            //StudentMarksFetch Here

            ex1.FormNo = Convert.ToInt32(ddlrollno.SelectedValue);
            ex1.SubBatch = lbltxtbatch.Text;
            ex1.FetchTotalMArks();
            lbltotalmarks.Text = ex1.Marks;

            // ExaminfoId
            ex.FormNo =Convert.ToInt32( lbltxt1rollno.Text);
            ex.SubBatch = lbltxtbatch.Text;
            ex.ExamType = ddlexamtype.Text;
            ex.selectexaminfoid();
            lbltxtexaminfoid.Text = ex.ExamInfoId;
            lblmsg.Text = ex.msg;
        }
        public void studentstatus()
        {
            int obtained, total, Marksgrade;
            obtained =Convert.ToInt32( m); total =Convert.ToInt32( n);
            Marksgrade = Convert.ToInt32(obtained * 100 / total);

            switch (Marksgrade/10)
            {
                case 10:
                case 9:
                    /* Marks between 90-100 */
                    lbltxtstatus.Text = "Grade A, Excellent,Pass";
                    lbltxtstatus.ForeColor = System.Drawing.Color.Blue;
                    lbltxtstatus.Font.Bold = true;
                    break;
                case 8:
                case 7:
                    /* Marks between 70-89 */
                    lbltxtstatus.Text = "Grade B,Very Good,Pass";
                    lbltxtstatus.ForeColor = System.Drawing.Color.Blue;
                    lbltxtstatus.Font.Bold = true;
                    break;
                case 6:
                    /* Marks between 60-69 */
                    lbltxtstatus.Text = "Grade C, Good,Pass";
                    lbltxtstatus.ForeColor = System.Drawing.Color.Blue;
                    lbltxtstatus.Font.Bold = true;
                    break;
                case 5:
                case 4:
                    /* Marks between 40-59 */
                    lbltxtstatus.Text = "Grade D, Pass";
                    lbltxtstatus.ForeColor = System.Drawing.Color.Blue;
                    lbltxtstatus.Font.Bold = true;
                    break;
                default:
                    /* Marks less than 40 */
                    lbltxtstatus.Text = "Failed";
                    lbltxtstatus.ForeColor = System.Drawing.Color.Red;
                    lbltxtstatus.Font.Bold = true;
                    break;
            }

        }
        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label marks = (Label)e.Row.FindControl("lblmarks");
                m = m + int.Parse(marks.Text);

                Label totalquestionmarks = (Label)e.Row.FindControl("lblquestion");
                n = n + int.Parse(totalquestionmarks.Text);
                lbltxtmarks.Text = m + "/" + n;
                lbltxtmarks.ForeColor = System.Drawing.Color.Red;
                lbltxtmarks.Font.Bold = true;
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblTotalPrice = (Label)e.Row.FindControl("TotalMarks");
                lblTotalPrice.Text ="Total Marks: "+ m.ToString();
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
            //to forcolor
            Label marks = (Label)e.Row.FindControl("lblmarks");
            Label pass=(Label)e.Row.FindControl("lblpass");
            float test = float.Parse(marks.Text);
            float condition=float.Parse(pass.Text);
            if (test <= condition )
            {
               // e.Row.Cells[4].ForeColor = System.Drawing.Color.Red;
                marks.ForeColor = System.Drawing.Color.Red;
                marks.Font.Bold = true;
            }
            else
            {
                //e.Row.Cells[4].ForeColor = System.Drawing.Color.Black;
                marks.ForeColor = System.Drawing.Color.Black;
            }
            }

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
                if (ddlexamtype.SelectedValue != "-1" && ddlrollno.SelectedValue != "-1" && lbltxtstatus.Text!=string.Empty && lbltxtbatch.Text!=string.Empty)
                {
                    lblmsg.Text = "../Marksheet/" + "Marksheet" + ddlrollno.SelectedValue + ddlexamtype.SelectedValue + ".pdf";
                    ex.FormNo = Convert.ToInt32(lbltxt1rollno.Text);
                    ex.GenerateDate = System.DateTime.Now.ToShortDateString();
                    ex.PdfStatus = lbltxtstatus.Text;
                    ex.SubBatch = lbltxtbatch.Text;
                    ex.ExamId =(ddlrollno.SelectedValue + ddlexamtype.SelectedValue);
                    ex.Marks = lbltxtmarks.Text;
                    ex.SubBatch = lbltxtbatch.Text;
                    ex.PdfMarksheet = "../Marksheet/" + "Marksheet" + ddlrollno.SelectedValue + ddlexamtype.SelectedValue + ".pdf";
                    ex.ExamType = ddlexamtype.SelectedValue.ToString();
                    ex.ExamInfoId = lbltxtexaminfoid.Text;
                    ex.InsertMarksheet();
                    lblmsg.Text = ex.msg;
                    btnsearch_Click(sender,e);
                }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
           
            Document document = new Document();
            FileName = "Marksheet" + ddlrollno.SelectedValue+ddlexamtype.SelectedValue + ".pdf";
            FilePath = Server.MapPath("../Marksheet/");
            PdfPath = FileName + FilePath;
            string base64 = Request.Form[hfImageData.UniqueID].Split(',')[1];
            byte[] imageBytes = Convert.FromBase64String(base64);
            
            iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(imageBytes);
            image.ScaleToFit(1150f, 1150f);
            PdfPTable table = new PdfPTable(1);
            table.DefaultCell.FixedHeight = 500f;
            table.AddCell(image);
            //set scale to fit height = false
            image.ScaleToFitHeight = false;
            using (System.IO.MemoryStream memoryStream = new System.IO.MemoryStream())
            {
                document = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
                PdfWriter writer = PdfWriter.GetInstance(document, memoryStream);
                PdfWriter.GetInstance(document, new FileStream(FilePath +FileName,FileMode.Create));
                document.Open();
                document.Add(table);
                document.Close();
                byte[] bytes = memoryStream.ToArray();
                memoryStream.Close();
                Response.Clear();
                Response.ContentType = "application/pdf"; 
                Response.AddHeader("Content-Disposition", "attachment; filename="+FileName);
                Response.Buffer = true;
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite(bytes);
                Response.End();
            }
        }

    }
}