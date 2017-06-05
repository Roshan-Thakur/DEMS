using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.HumanResorceView
{
    public partial class StaffEmpdetails : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL ad = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //emp.Attributes.Add("onchange", "javascript:ShowPreview(input)");
            gridbind();
        }
        
        protected void rddept_SelectedIndexChanged(object sender, EventArgs e)
        {

            gridbind();
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[9].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[10].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        private void gridbind()
        {
            ad.Type = rddept.SelectedValue;
            ad.SelectEMpStaff();
            lblmsg.Text = ad.msg;
            gvTerritories.DataSource = ad.source;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] =  "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[9].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[10].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        //delete Gridcell 
        protected void lnkDelete_Click(object sender, EventArgs e)
        {

            LinkButton IdRemove = (LinkButton)sender;
            ad.EID = int.Parse(IdRemove.CommandArgument);
           // lblmsg.Text = ad.EID.ToString();
            ad.EmpDelete();
            gridbind();

        }



        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string index = e.CommandArgument.ToString();
                //lblmsg.Text = index.ToString();
                //GridViewRow grid = gvTerritories.Rows[index];
                Response.Redirect("~/FormUserRagistration/viewformemp.aspx?id="+index);

            }
           
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

    }
}