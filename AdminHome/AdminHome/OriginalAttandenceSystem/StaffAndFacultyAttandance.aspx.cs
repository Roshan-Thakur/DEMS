using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class StaffAndFacultyAttandance : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Refresh", "300");
            lbldate.Text = System.DateTime.Now.ToShortDateString();
            txttime.Text = DateTime.Now.ToLongTimeString();
            if(!IsPostBack)
            {
                gridbind();
            }
            //txttime.Text = DateTime.Today.AddDays(-1).ToString();
        }
        protected void gridbind()
        {
            user.AttandDate = System.DateTime.Now.ToShortDateString();
            user.AttandStatus = 1;
            user.SelectPresentedemp();
            DataTable dt = user.source;
            if(dt.Rows.Count>0)
            {
            gvTerritories.DataSource = user.source;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                gvTerritories.DataSource = user.source;
                gvTerritories.DataBind();
            }
           
        }

        protected void btnattandanceimpot_Click(object sender, EventArgs e)
        {
            if (txteid.Text != string.Empty)
            {
                user.EID = Convert.ToInt32(txteid.Text);
                user.Latitute = txtlat.Text;
                user.Longitute = txtlog.Text;
                // lblmsg.Text = user.Latitute + "," + user.Longitute;
                user.AttandDate = System.DateTime.Now.ToString();
                user.AttandStatus = 1;
                user.TimeAttand = txttime.Text;
                user.InsertAttandance1();
                lblmsg.Text = user.msg;
                // + user.TimeAttand + user.AttandStatus + user.EID + user.AttandDate
                gridbind();
                txteid.Text = "";
            }
            else
            {
                lblmsg.Text = "Sorry Please insert Your Id!";
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
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

       
    }
}