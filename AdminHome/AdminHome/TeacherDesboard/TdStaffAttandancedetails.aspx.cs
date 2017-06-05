using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.TeacherDesboard
{
    public partial class TdStaffAttandancedetails : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();
        int stid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EId"] != null)
            {
                stid=Convert.ToInt32( Session["EId"].ToString());
                selectattandance();
            }
            else
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();

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
        public void selectattandance()
        {
            if (Session["EId"]!=null)
            {
                user.SelectAllEmpAttandance();
                DataView dv1 = new DataView(user.source);
                dv1.RowFilter = "FKEID='"+ stid +"'";
                dv1.Sort = "attandancedate DESC";
                //dv1.RowFilter = "FKEID='" + ddlid.SelectedValue.ToString() + "' AND attandancedate='"+searchValue+"'";
                gvTerritories.DataSource = dv1;
                gvTerritories.DataBind();

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
        }
    }
}