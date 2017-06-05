using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AdminHome.ExaminationModules
{
    public partial class markentry : System.Web.UI.Page
    {

        DataTable chdt = new DataTable();
        ExaminationBL ex = new ExaminationBL();
        AdminSettingModule.AddBatchYr bat = new AdminSettingModule.AddBatchYr();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        DataView dv1 = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectbatch();
                selectExamInfo();
                selectexamype();
                selectsub();
            }
        }

        public void selectsub()
        {
            ex.selectsub();
            ddlsubject.DataSource = ex.ddlsub.DataSource;
            ddlsubject.DataTextField = "subject";
            ddlsubject.DataBind();
            ListItem tm = new ListItem("Select", "-1");
            ddlsubject.Items.Insert(0, tm);
        }
        public void selectbatch()
        {
            bat.grdBatchDisplay();
            ddlbatch.DataSource = bat.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem tm = new ListItem("Select", "-1");
            ddlbatch.Items.Insert(0, tm);
        }
        public void selectexamype()
        {
            ex.SelectExamType();
            ddlexamtype.DataSource = ex.ddlsub.DataSource;
            ddlexamtype.DataTextField = "examname";
            ddlexamtype.DataBind();
            ListItem tm = new ListItem("Select", "-1");
            ddlexamtype.Items.Insert(0, tm);
        }
        public void selectExamInfo()
        {
            ex.SelectExamInfoId();
            ddexamid.DataSource = ex.ddlsub.DataSource;
            ddexamid.DataTextField = "examId";
            ddexamid.DataBind();
            ListItem tm = new ListItem("Select", "-1");
            ddexamid.Items.Insert(0, tm);
        }
        protected void btnprint_Click(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            if (ddlsubject.SelectedValue != "-1" && ddlshift.SelectedValue != "-1" && ddlexamtype.SelectedValue != "-1" && ddlbatch.SelectedValue != "-1" && ddexamid.SelectedValue != "-1")
            {
                lblsub.Text = ddlsubject.SelectedValue + "," + ddlbatch.SelectedValue;
                string arg = ddexamid.SelectedValue; string[] str=arg.Split('_');
                lblexamid.Text = str[0] + "_" + str[1]+"_"+str[2];
                lblexamid1.Text = str[3] + "_" + str[4];
                lblexamtype.Text = ddlexamtype.SelectedValue + " Examination";
                ac.StuFetchQuery();
                ex.selectSubjextpattern();
                dv1 = new DataView(ex.sourc);
                dv = new DataView(ac.sourc);
                dv.RowFilter = "Batch='" + ddlbatch.SelectedValue + "' AND Shift='"+ddlshift.SelectedValue+"'";
                dv1.RowFilter = "subject1='"+ddlsubject.SelectedValue+"' AND batch='"+ddlbatch.SelectedValue+"' AND examtype='"+ddlexamtype.SelectedValue+"' AND examinfo='"+ddexamid.SelectedValue+"'";
                DataTable filterdv1 = new DataTable();
                filterdv1=dv1.ToTable();
                if(filterdv1.Rows.Count > 0)
                {
                    //subject1, batch, examtype, examinfo, questionpettern, patternmarks, passmarks, 
                    txtpatternmarks.Text = filterdv1.Rows[0]["patternmarks"].ToString();
                    txttype.Text = filterdv1.Rows[0]["examtype"].ToString() + " , " + filterdv1.Rows[0]["questionpettern"].ToString();
                    txtpassmarks.Text = filterdv1.Rows[0]["passmarks"].ToString();
                }
                if (dv.Count > 0)
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
                }
                else
                {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();
                }
            }
        }

        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {

                lblTotal.Text =gvTerritories.Rows.Count.ToString();
            }
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            foreach(GridViewRow row in gvTerritories.Rows)
            {
                string arg = txttype.Text;
                       string[] str = arg.Split(',');
                       ex.ExamType=str[0];
                       ex.ExamInfoId=ddexamid.SelectedValue.ToString();
                       ex.Subject=ddlsubject.SelectedValue.ToString();
                       ex.SubBatch=ddlbatch.SelectedValue.ToString();
                       ex.Shift=ddlshift.SelectedValue.ToString();
                       ex.Fname = row.Cells[2].Text.ToString();
                       ex.StName=row.Cells[1].Text.ToString();
                       ex.FormNo=Convert.ToInt32( row.Cells[0].Text.ToString());
                       ex.Mobile=row.Cells[3].Text.ToString();
                       ex.Obtainemarks =float.Parse( (row.FindControl("txtobtmarks") as TextBox).Text);
                       ex.PassMarks =Convert.ToInt32( txtpassmarks.Text);
                       ex.PatternMarks =Convert.ToInt32( txtpatternmarks.Text);
                       ex.ExamPaturn =str[1];
                       ex.InsertMarks();
            }
            lblmsg.Text = ex.msg;
            btnsearch_Click(sender,e);
        }
        
         
       
    }
}