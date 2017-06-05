using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.AccademicManagement
{
    public partial class StudentPermotion : System.Web.UI.Page
    {
        ExaminationModules.ExaminationBL ex = new ExaminationModules.ExaminationBL();
        AdminSettingModule.AddBatchYr bat = new AdminSettingModule.AddBatchYr();
        StudentInfoBL st = new StudentInfoBL();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AcadimicModulBL.AcademicBL();
        public DataTable dt = new DataTable();
        public DataView dv = new DataView();
        public string value;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectbatch();
                selectpassstudent();
                selectexamype();
            }
            
        }
        public void selectexamype()
        {
            ex.SelectExamType();
            ddlexam.DataSource = ex.ddlsub.DataSource;
            ddlexam.DataTextField = "examname";
            ddlexam.DataBind();
            ListItem tm = new ListItem("LastExam", "-1");
            ddlexam.Items.Insert(0, tm);
        }
        public void selectbatch()
        {
            bat.grdBatchDisplay();
            ddloldbatch.DataSource = bat.ddlbatch.Items;
            ddloldbatch.DataBind();
            ddlnewbatch.DataSource = bat.ddlbatch.Items;
            ddlnewbatch.DataBind();
            ListItem tm = new ListItem("OldBatch", "-1");
            ddloldbatch.Items.Insert(0, tm);
            ListItem t = new ListItem("NewBatch","-1");
            ddlnewbatch.Items.Insert(0,t);
        }
        public void selectpassstudent()
        {
            ex.retriveCollectedmarksheet();
            dt=ex.sourc;
            if(dt.Rows.Count > 0)
            {
            gvTerritories1.DataSource = ex.sourc;
            gvTerritories1.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories1.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                gvTerritories1.DataSource=ex.sourc;
                gvTerritories1.DataBind();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ex.retriveCollectedmarksheet();
            dv = new DataView(ex.sourc);
            dv.RowFilter = "status Like'%" + ddlpass.SelectedValue + "%' AND markbatch='" + ddloldbatch.SelectedValue + "' AND Id Like'%"+ddlexam.SelectedValue+"%'";
            if(dv.Count > 0)
            {
            gvTerritories1.DataSource = dv;
            gvTerritories1.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories1.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                gvTerritories1.DataSource=dv;
                gvTerritories1.DataBind();
            }

            foreach (GridViewRow row in gvTerritories1.Rows)
            {
                TextBox txt=row.FindControl("txtbatch") as TextBox;
                txt.Text =ddlnewbatch.SelectedValue;
            }
        }

        protected void btnpermotion_Click(object sender, EventArgs e)
        {
            foreach(GridViewRow row in gvTerritories1.Rows)
            {
               // value += row.Cells[0].Text.ToString() + "," + (row.FindControl("txtbatch") as TextBox).Text+",";
                ac.FormNo = Convert.ToInt32(row.Cells[0].Text.ToString());
                ac.selectstudentInfo();
                st.StName = ac.StName;
                st.Fname = ac.Fname;
                st.FEmail = ac.FEmail;
                st.AddYear = "";
                st.Batch = (row.FindControl("txtbatch") as TextBox).Text;
                st.BloodGroup = ac.BloodGroup;
                st.CreatedDate = System.DateTime.Now.ToShortDateString();
                st.Date1 = System.DateTime.Now.ToShortDateString();
                st.Dob = ac.Dob;
                st.FIncome = "";
                st.FMobile = ac.FMobile;
                st.Foccupation = "";
                st.PreRollNo = ac.FormNo.ToString();
                st.GMobile = ac.GMobile;
                st.GAddress = ac.GAddress;
                st.Gender = ac.Gender;
                st.GMobile = ac.GMobile;
                st.GName = ac.GName;
                st.GRelation = ac.GRelation;
                st.ImageUr = ac.ImageUr;
                st.MMobile = ac.MMobile;
                st.MEmail = ac.MEmail;
                st.Mname = ac.Mname;
                st.MIncome = "";
                st.Moccupation = "";
                st.HMobile = "";
                st.ParAddress = "";
                st.ParDistrict = ac.ParDistrict;
                st.ParState = ac.ParState;
                st.PreScholName = "";
                st.Preragistraion = "";
                st.PreBoard = "";
                st.TranferCerti = "";
                st.TakeAddmision = "Permoted";
                st.Group1 = "";
                st.PassingYr = System.DateTime.Now.Year.ToString();
                st.PrAddress = ac.PrAddress;
                st.Prdistrict = "";
                st.PrState = "";
                st.Religion = ac.Religion;
                st.Section = ac.Section;
                st.Shift = ac.Shift;
                value=(row.FindControl("txtbatch") as TextBox).Text;
                string[] value2 = value.Split('_');
                st.StClass=value2[0];
                st.RollNo = row.Cells[0].Text.ToString();
                st.AdmissionInsert();
            }
            if (st.msg == "Sucessfully!")
            {
                Response.Redirect("~/AccademicManagement/PermotedStudentList.aspx?msg="+st.msg);
            }
            else
            {
                lblmsg.InnerText = st.msg;
            }
             

        }
    }
}