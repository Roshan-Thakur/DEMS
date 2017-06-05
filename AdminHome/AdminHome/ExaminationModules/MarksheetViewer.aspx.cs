using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class MarksheetViewer : System.Web.UI.Page
    {
        ExaminationBL ex = new ExaminationBL();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        public string roll;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(!IsPostBack)
            {
                selectExamInfo();
                selectmarksheet();
            }
           
        }
      
       
        public void selectExamInfo()
        {
            ex.SelectExamInfoId();
            ddlexamid.DataSource = ex.ddlsub.DataSource;
            ddlexamid.DataTextField = "examId";
            ddlexamid.DataBind();
            System.Web.UI.WebControls.ListItem tm = new System.Web.UI.WebControls.ListItem("ExamID", "-1");
            ddlexamid.Items.Insert(0, tm);
        }
        public void selectmarksheet()
        {
            ex.retriveCollectedmarksheet();
            if(ex.sourc.Rows.Count>0)
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;

            }else
            {
                  gvTerritories.DataSource = ex.sourc;
                  gvTerritories.DataBind();
            }
        }
        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void lnldelete_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string str = e.CommandArgument.ToString();
                //lblmsg.Text = str;
                ex.ExamId = str;
                ex.deleteCollectedmarksheet();
                lblmsg.Text = ex.msg;
                //exportstatus
                selectmarksheet();
            }
        }
        public void PendingRecordsGridview_RowDeleting(Object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            if (ddlexamid.SelectedValue != "-1")
            {
                ex.retriveCollectedmarksheet();
                dv = new DataView(ex.sourc);
                dv.RowFilter = "examinfoid='" + ddlexamid.SelectedValue + "' ";

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
                    gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "expand";
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

       

        protected void btnsend_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvTerritories.Rows)
            {

                if (row.RowType == DataControlRowType.DataRow)
                {
                    bool stauts = ((CheckBox)row.FindControl("chkclk")).Checked;
                    if (stauts == true)
                    {
                        ex.PdfStatus = "1";
                    }
                    else
                    {
                        ex.PdfStatus = "0";
                    }
                    roll =
                    ex.ExamId = gvTerritories.DataKeys[row.RowIndex].Value.ToString();
                    ex.ExportMarksheet();
                   
                }
            }
            lblmsg.Text = ex.msg;
            selectmarksheet();
        }

        
    }
}