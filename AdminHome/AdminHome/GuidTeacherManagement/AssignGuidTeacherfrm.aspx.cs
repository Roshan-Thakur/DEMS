using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.GuidTeacherManagement
{
    public partial class AssignGuidTeacherfrm : System.Web.UI.Page
    {
        AdminSettingModule.AddSectionBL sec = new AdminSettingModule.AddSectionBL();
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        DataView dv1 = new DataView();
        DataTable currenttable = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                batchname();
                group();
                selectid();
            }
            tb1.Visible = false;
        }
        private void batchname()
        {
            AdminSettingModule.AddBatchYr batch = new AdminSettingModule.AddBatchYr();
            batch.grdBatchDisplay();
            ddlbatch.DataSource = batch.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem litem1 = new ListItem("Select Batch", "-1");
            ddlbatch.Items.Insert(0, litem1);
        }
        private void group()
        {
            sec.fnshowSection();
            ddlsection.DataSource = sec.typ1;
            ddlsection.DataTextField = "section";
            ddlsection.DataBind();
            ListItem items = new ListItem("--Select--","-1");
            ddlsection.Items.Insert(0,items);
        }
        private void selectid()
        {
            user.selectsalaryemp();
            ddlID.DataSource = user.ddl1.DataSource;
            ddlID.DataTextField = "EId";
            ddlID.DataBind();
            ListItem itms = new ListItem("Select Teacher", "-1");
            ddlID.Items.Insert(0, itms);
        }
        private void Tempgridbind()
        {
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType==DataControlRowType.Footer)
            {
                lblno.Text ="Total Student: "+ gvTerritories.Rows.Count.ToString();
            }
        }

        protected void btnmonth_Click(object sender, EventArgs e)
        {
            ac.StuFetchQuery();
            if(ddlbatch.SelectedValue !="-1" && ddlshift.SelectedValue !="-1" && ddlsection.SelectedValue !="-1")
            {
            dv = new DataView(ac.sourc);
            dv.RowFilter = "Section='" + ddlsection.SelectedItem.ToString() + "' AND Shift='" + ddlshift.SelectedItem.ToString() + "' AND Batch='" + ddlbatch.SelectedItem.ToString() + "'";
            if (dv.Count > 0)
            {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();
                Tempgridbind();
                tb1.Visible = true;
            }
            else
            {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();
            }
            }
        }

        protected void btnasign_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvTerritories.Rows)
            {

                if (row.RowType == DataControlRowType.DataRow)
                {
                    ac.FormNo = Convert.ToInt32(gvTerritories.DataKeys[row.RowIndex].Value.ToString());
                    ac.TeacherId = Convert.ToInt32(ddlID.SelectedValue);
                    ac.UpdateAssignedTeacher();
                }
            }
            lblmsg.Text = ac.msg;
            Tempgridbind();
            btnmonth_Click(sender, e);
        }
        
    }
}