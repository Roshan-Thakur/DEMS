using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class AddExamInfo : System.Web.UI.Page
    {
        ExaminationBL ex = new ExaminationBL();
        DataTable chkdt = new DataTable();
        AdminSettingModule.AddBatchYr bat = new AdminSettingModule.AddBatchYr();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
            btnupdate.Visible = false;
            if(!IsPostBack)
            {
                selectbatch();
                selecteamtype();
            }
        }
        public void selecteamtype()
        {
            ex.SelectExamType();
            ddlexamtyp.DataSource = ex.ddlsub.DataSource;
            ddlexamtyp.DataTextField = "examname";
            ddlexamtyp.DataBind();
            ListItem tm = new ListItem("--Select--","-1");
            ddlexamtyp.Items.Insert(0,tm);
        }
        public void selectbatch()
        {
            bat.grdBatchDisplay();
            ddlbatch.DataSource = bat.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem tm = new ListItem("--Select--","-1");
            ddlbatch.Items.Insert(0,tm);
        }
        public void gridbind()
        {
            ex.SelectExamInfoId();
            chkdt = ex.sourc;
            if (chkdt.Rows.Count > 0)
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();
            }
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            btnsubmit.Visible = true;
            btnupdate.Visible = false;

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkupdate_Command(object sender, CommandEventArgs e)
        {
            btnsubmit.Visible = false;
            btnupdate.Visible = true;
            if (e.CommandName == "ViewDetails")
            {
                btnsubmit.Visible = false;
                btnupdate.Visible = true;
                string arg = e.CommandArgument.ToString();
                string[] str = arg.Split('_');
                hdn.Value = str[0];
                ddlbatch.SelectedValue = str[1] + "_" + str[2];
                ddlexamtyp.SelectedValue = str[3];
                txtstart.Text = str[4];
                txtend.Text = str[5];
                
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           
           if( ddlbatch.SelectedValue!="-1" && ddlbatch.SelectedValue!="-1" && txtend.Text!=string.Empty && txtstart.Text!=string.Empty )
           {
              // lblinfo.Text = ddlbatch.SelectedValue + "_" + ddlexamtyp.SelectedValue + "_" + txtstart.Text + "_" + txtend.Text;
               ex.ExamInfoId = ddlbatch.SelectedValue + "_" + ddlexamtyp.SelectedValue + "_" + txtstart.Text + "_" + txtend.Text;
               ex.AddExamInfo();
               lblinfo.Text = ex.msg;
               ddlbatch.ClearSelection();
               ddlexamtyp.ClearSelection();
               txtend.Text = "";
               txtstart.Text = "";
               gridbind();
           }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (ddlbatch.SelectedValue != "-1" && ddlbatch.SelectedValue != "-1" && txtend.Text != string.Empty && txtstart.Text != string.Empty)
            {
            btnsubmit.Visible = true;
            btnupdate.Visible = false;
            ex.ExamID = Convert.ToInt32(hdn.Value);
            ex.ExamInfoId = ddlbatch.SelectedValue + "_" + ddlexamtyp.SelectedValue + "_" + txtstart.Text + "_" + txtend.Text;
            ex.UpdateExamInfo();
            lblinfo.Text = ex.msg;
            ddlbatch.ClearSelection();
            ddlexamtyp.ClearSelection();
            txtend.Text = "";
            txtstart.Text = "";
            gridbind();
            }
        }
    }
}