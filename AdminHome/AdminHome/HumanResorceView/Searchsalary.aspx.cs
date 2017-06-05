using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.HumanResorceView
{
    public partial class Searchsalary : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL ad = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            showdept();
            selectname();
            }
            gridbind();
            gvTerritories.Visible = false;
            lblmsg.Text = DateTime.Now.ToString();
        }
        private void gridbind()
        {
            ad.searchengin();
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
            gvTerritories.Visible = true;
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
        protected void showdept()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowdept();
            ddldept.DataSource = dd.ddl.DataSource;
            ddldept.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddldept.Items.Insert(0, litem);
        }
        protected void selectname()
        {
            ad.selectsalaryemp();
            ddlname.DataSource = ad.ddl.DataSource;
            ddlname.DataTextField = ad.ddl.DataTextField;
            ddlname.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlname.Items.Insert(0, litem);
        }
       

        protected void btnprint_Click(object sender, EventArgs e)
        {
            gvTerritories.Visible = true;
            ad.Name = ddlname.SelectedValue.ToString();
            ad.DepartureTime = ddldept.SelectedValue;
            gridbind();
            lblmsg.Text = ad.msg + ad.Name+ad.DepartureTime+ad.ToSal+ad.FromSal ;
            ddlname.Text = null;
            ddldept.Text = null;
            
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            gvTerritories.Visible = true;
            ad.Total = ddlsalry.SelectedValue.ToString();
            ad.ToSal =txtto.Text;
            ad.FromSal =txtfrom.Text;
            gridbind();
            lblmsg.Text = ad.msg;
            txtfrom.Text = null;
            txtto.Text = null;
        }


    }
}