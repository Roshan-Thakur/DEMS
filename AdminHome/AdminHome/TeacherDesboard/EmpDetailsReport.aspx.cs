using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.TeacherDesboard
{
    public partial class EmpDetailsReport : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL ad = new FormUserRegistrationModule.EmployeeregBL();
        DataView dv = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
                gridbind();
            if(!IsPostBack)
            {
                blood();
                dept();
            }
            
        }
        private void blood()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.funshowblood();

            ddlbld.DataSource = dd.ddl.DataSource;
            ddlbld.DataTextField = "bloodgrp";
            ddlbld.DataBind();
            ListItem litem = new ListItem("--Select--", "0");
            ddlbld.Items.Insert(0, litem);
        }
        protected void dept()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowdept();
            ddldept.DataSource = dd.ddl.DataSource;
            ddldept.DataTextField = "department";
            ddldept.DataBind();
            ListItem litem = new ListItem("--Select--", "0");
            ddldept.Items.Insert(0, litem);
        }
        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string index = e.CommandArgument.ToString();
                Response.Redirect("~/FormUserRagistration/ProfileDetails.aspx?id=" + index);

            }
        }
        private void gridbind()
        {
            ad.Type = "both";
            ad.SelectEMpStaff();
            gvTerritories.DataSource = ad.source;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            ad.Blood = ddlbld.SelectedValue;
            ad.Type = "both";
            ad.SelectEMpStaff();
            dv = new DataView(ad.source);
            dv.RowFilter = "blooggroop='"+ddlbld.SelectedValue+"'";
            if (dv.Count > 0)
            {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();
                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
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

        protected void btnstaff_Click(object sender, EventArgs e)
        {
            ad.Type =ddlstaff.SelectedValue;
            ad.SelectEMpStaff();
            dv = new DataView(ad.source);
            dv.RowFilter = "type='" +ddlstaff.SelectedValue + "'";
            if (dv.Count > 0)
            {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();
                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            ad.Type = "both";
            ad.SelectEMpStaff();
            dv = new DataView(ad.source);
            dv.RowFilter = "department='" +ddldept.SelectedValue + "'";
            if (dv.Count > 0)
            {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();
                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
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
}