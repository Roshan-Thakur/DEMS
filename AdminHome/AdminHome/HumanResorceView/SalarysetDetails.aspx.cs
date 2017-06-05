using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.HumanResorceView
{
    public partial class SalarysetDetails : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL ad = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnupdatesalary.Visible = false;
            gridbind();
        }
        private void gridbind()
        {
            ad.selectsalaryemp();
            gvTerritories.DataSource = ad.source;
            gvTerritories.DataBind();
           // Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            // Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkbtnupdate_Click(object sender, EventArgs e)
        {
            btnupdatesalary.Visible = true;
            LinkButton btn = (LinkButton)sender;
            string[] CommandArgument = btn.CommandArgument.Split(',');
            lblcard.Text = CommandArgument[0];
            lblname.Text = CommandArgument[1];
            lbldept.Text = CommandArgument[2];
            lbldesig.Text = CommandArgument[3];
            txtbasic.Text = CommandArgument[4];
            txtgross.Text=CommandArgument[5];
            txttotal.Text=CommandArgument[6];
        }

        protected void btnupdatesalary_Click(object sender, EventArgs e)
        {
            ad.EID =Convert.ToInt32(lblcard.Text);
            ad.Basic = txtbasic.Text;
            ad.Gross = txtgross.Text;
            ad.Total = (Convert.ToInt32(txtbasic.Text) + Convert.ToInt32(txtgross.Text)).ToString();
           // lblmsg.Text = ad.Basic + ad.Gross + ad.Total;
            ad.updatesalary();
            gridbind();
        }
        
    }
}