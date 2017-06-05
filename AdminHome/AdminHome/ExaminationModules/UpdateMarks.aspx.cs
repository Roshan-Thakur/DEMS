using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class UpdateMarks : System.Web.UI.Page
    {
        ExaminationBL ex = new ExaminationBL();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectrollno();
                selectExamInfo();
                selectexamype();
            }
            EnteredMarks();
        }
        public void selectrollno()
        {
            ac.selectrollst();
            ddlrollno.DataSource = ac.ddl.DataSource;
            ddlrollno.DataTextField = "FormNo";
            ddlrollno.DataBind();
            System.Web.UI.WebControls.ListItem tm = new System.Web.UI.WebControls.ListItem("Roll No", "-1");
            ddlrollno.Items.Insert(0, tm);
        }
        public void selectexamype()
        {
            ex.SelectExamType();
            ddlexamtype.DataSource = ex.ddlsub.DataSource;
            ddlexamtype.DataTextField = "examname";
            ddlexamtype.DataBind();
            System.Web.UI.WebControls.ListItem tm = new System.Web.UI.WebControls.ListItem("ExamType", "-1");
            ddlexamtype.Items.Insert(0, tm);
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
        public void EnteredMarks()
        {
            ex.selectMarkssheet();
            if(ex.sourc.Rows.Count>0)
            {
                gvTerritories.DataSource =ex.sourc;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;

            }else
            {
                gvTerritories.DataSource =ex.sourc;
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
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            
            if(ddlexamid.SelectedValue!="-1" && ddlexamtype.SelectedValue!="-1" && ddlrollno.SelectedValue!="-1")
            {
                ex.selectMarkssheet();
                dv = new DataView(ex.sourc);
                dv.RowFilter = "examtype='"+ddlexamtype.SelectedValue+"' AND studentrollno='"+ddlrollno.SelectedValue+"' AND examinfoid='"+ddlexamid.SelectedValue+"' ";
                
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
                    gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "expand";
                    //Adds THEAD and TBODY to GridView.
                    gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
                }else
                {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();
                }
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            ex.ExamId = txtId.Text;
            ex.Marks = txtobtainedMarks.Text;
            ex.updatemarksheetentry();
            lblmsg.Text = ex.msg;
            EnteredMarks();
            txtId.Text = "";
            txtobtainedMarks.Text = "";
        }

        protected void lnkupdatemarks_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] str = arg.Split(',');
                txtId.Text = str[0];
                txtobtainedMarks.Text=str[1];
            }
        }

        protected void lnkdelete_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string str = e.CommandArgument.ToString();
                ex.ExamId = str;
                ex.deletemarkrentry();
                lblmsg.Text = ex.msg;
               // EnteredMarks();
            }
        }
    }
}