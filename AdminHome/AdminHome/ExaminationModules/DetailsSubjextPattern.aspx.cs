using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class DetailsSubjextPattern : System.Web.UI.Page
    {
        DataTable chdt = new DataTable();
        ExaminationBL ex = new ExaminationBL();
        AdminSettingModule.AddBatchYr bat = new AdminSettingModule.AddBatchYr();
        DataView dv = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectbatch();
                selectexamype();
                selectExamInfo();
            }
            lblexamid.Visible = false;
            lblinfo.Visible = false;
            lblinfo1.Visible = false;
        }

        public void selectbatch()
        {
            bat.grdBatchDisplay();
            ddlbatch.DataSource = bat.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem tm = new ListItem("Select Batch", "-1");
            ddlbatch.Items.Insert(0, tm);
        }
        public void selectexamype()
        {
            ex.SelectExamType();
            ddlexamtype.DataSource = ex.ddlsub.DataSource;
            ddlexamtype.DataTextField = "examname";
            ddlexamtype.DataBind();
            ListItem tm = new ListItem("SelectExamType", "-1");
            ddlexamtype.Items.Insert(0, tm);
        }
        public void selectExamInfo()
        {
            ex.SelectExamInfoId();
            ddlexamid.DataSource = ex.ddlsub.DataSource;
            ddlexamid.DataTextField = "examId";
            ddlexamid.DataBind();
            ListItem tm = new ListItem("SelectExamInfo", "-1");
            ddlexamid.Items.Insert(0, tm);
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
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        public void gridbind()
        {
            ex.selectSubjextpattern();
            chdt = ex.sourc;
            if(chdt.Rows.Count>0)
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
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();
            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            if(ddlexamtype.SelectedValue!="-1" && ddlexamid.SelectedValue!="-1" && ddlbatch.SelectedValue!="-1")
            {
                lblexamid.Visible = true;
                lblinfo.Visible = true;
                lblinfo1.Visible = true;
                string arg = ddlexamid.SelectedValue.ToString();
                string[] str = arg.Split('_');
                lblinfo.Text = str[0] + "_" + str[1]+"_"+str[2];
                lblinfo1.Text = str[3] + "_" + str[4];
                lblexamid.Text = ddlbatch.SelectedValue + "," + ddlexamtype.SelectedValue;
                ex.selectSubjextpattern();
                dv = new DataView(ex.sourc);
                dv.RowFilter = "examtype='" + ddlexamtype.SelectedValue.ToString() + "' AND batch='" + ddlbatch.SelectedValue.ToString() + "' AND examinfo='"+ddlexamid.SelectedValue.ToString()+"'";
                if (dv.Count > 0)
                {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();
                    //Attribute to show the Plus Minus Button.
                    gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                    //Attribute to hide column in Phone.
                    gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
                    gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
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

        protected void btnprint_Click(object sender, EventArgs e)
        {
            btnsearch_Click(sender,e);
        }
    }
}