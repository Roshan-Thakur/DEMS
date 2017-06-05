using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.GuidTeacherManagement
{
    public partial class GuidTeacherByStudent : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
           {
               batchname();
               selectid();
           }
        }

        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                lblno.Text = "Total Student: " + gvTerritories.Rows.Count.ToString();
            }
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
        private void selectid()
        {
            user.selectsalaryemp();
            ddlteacherid.DataSource = user.ddl1.DataSource;
            ddlteacherid.DataTextField = "EId";
            ddlteacherid.DataBind();
            ListItem itms = new ListItem("Select Teacher", "-1");
            ddlteacherid.Items.Insert(0, itms);
        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            ac.StuFetchQuery();
            if (ddlbatch.SelectedValue != "-1" && ddlteacherid.SelectedValue != "-1")
            {
                dv = new DataView(ac.sourc);
                dv.RowFilter = "assignteacherId='" + ddlteacherid.SelectedItem.ToString() + "' AND Batch='" + ddlbatch.SelectedItem.ToString() + "'";
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
        private void Tempgridbind()
        {
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btndelete_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                int formno = Convert.ToInt32(arg);
                ac.FormNo = formno;
                ac.StudentAsigndTeacherDelete();
                lblmsg.Text = ac.msg;
            }
            btnfind_Click(sender,e);
        }
    }
}