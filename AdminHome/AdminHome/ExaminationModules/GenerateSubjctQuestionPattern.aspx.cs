using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class GenerateSubjctQuestionPattern : System.Web.UI.Page
    {
        ExaminationBL ex = new ExaminationBL();
        AdminSettingModule.AddBatchYr bat = new AdminSettingModule.AddBatchYr();
        DataTable chkdt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectsub();
                selectbatch();
                selectexamype();
                selectQuestionPattern();
                selectExamInfo();
            }
            gridbind();
        }
        public void gridbind()
        {
            ex.selectSubjextpattern();
            chkdt = ex.sourc;
            if (chkdt.Rows.Count > 0)
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();
            }
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (ddquestionpattern.SelectedValue != "-1" && ddlsub.SelectedValue != "-1" && ddlbatch.SelectedValue != "-1" && ddexamtype.SelectedValue != "-1" && ddexaminfo.SelectedValue != "-1" && txtpassingmarks.Text != string.Empty && txtqmarks.Text != string.Empty)
            {
                ex.Subject = ddlsub.SelectedValue;
                ex.PatternMarks = Convert.ToInt32(txtqmarks.Text);
                ex.PassMarks = Convert.ToInt32(txtpassingmarks.Text);
                ex.SubBatch = ddlbatch.SelectedValue;
                ex.ExamPaturn = ddquestionpattern.SelectedValue;
                ex.ExamInfoId = ddexaminfo.SelectedValue;
                ex.ExamType = ddexamtype.SelectedValue;
                ex.Optional = rdchoice.SelectedItem.ToString();
                ex.AddSubjectPattern();
                lblinfo.Text = ex.msg;
                gridbind();
            }
        }
        public void selectsub()
        {
            ex.selectsub();
            ddlsub.DataSource = ex.ddlsub.DataSource;
            ddlsub.DataTextField = "subject";
            ddlsub.DataBind();
            ListItem tm = new ListItem("Select Subject","-1");
            ddlsub.Items.Insert(0,tm);
        }
        public void selectbatch()
        {
            bat.grdBatchDisplay();
            ddlbatch.DataSource = bat.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem tm = new ListItem("Select Batch","-1");
            ddlbatch.Items.Insert(0,tm);
        }
        public void selectexamype()
        {
            ex.SelectExamType();
            ddexamtype.DataSource = ex.ddlsub.DataSource;
            ddexamtype.DataTextField = "examname";
            ddexamtype.DataBind();
            ListItem tm = new ListItem("SelectExamType", "-1");
            ddexamtype.Items.Insert(0, tm);
        }
        public void selectExamInfo()
        {
            ex.SelectExamInfoId();
            ddexaminfo.DataSource = ex.ddlsub.DataSource;
            ddexaminfo.DataTextField = "examId";
            ddexaminfo.DataBind();
            ListItem tm = new ListItem("SelectExamInfo", "-1");
            ddexaminfo.Items.Insert(0, tm);
        }
        public void selectQuestionPattern()
        {
            ex.SelectQuestionPaturn();
            ddquestionpattern.DataSource = ex.ddlsub.DataSource;
            ddquestionpattern.DataTextField = "patern";
            ddquestionpattern.DataBind();
            ListItem tm = new ListItem("SelectPattern", "-1");
            ddquestionpattern.Items.Insert(0, tm);
        }

        protected void lnkDelete_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                ex.PaturnID = Convert.ToInt32(arg);
                ex.deletesubjectpattern();
                lblinfo.Text = ex.msg;
                gridbind();
            }
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
       
    }
}