using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class StaffCurrentAttandanceStatus : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
                grindbind();
                grindbind1();
                lbldate1.Text = System.DateTime.Now.ToLongDateString();
                lbldate.Text = System.DateTime.Now.ToLongDateString();
        }
        public void grindbind1()
        {
            user.AttandDate = System.DateTime.Now.ToString();
            user.AttandStatus =0;
            user.SelectPresentedemp();
           // dt = user.source;
            if (user.source.Rows.Count > 0)
            {
            gvTerritories1.DataSource = user.source;
            gvTerritories1.DataBind();
            ////Attribute to show the Plus Minus Button.
            gvTerritories1.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories1.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            gvTerritories1.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                gvTerritories1.DataSource = user.source;
                gvTerritories1.DataBind();
            }
        }
        public void grindbind()
        {
            user.AttandDate = System.DateTime.Now.ToString();
            user.AttandStatus =1;
            user.SelectPresentedemp();
            dt=user.source;
            if (dt.Rows.Count > 0)
            {
                gvTerritories.DataSource = dt;
                gvTerritories.DataBind();
                ////Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                gvTerritories.DataSource = dt;
                gvTerritories.DataBind();
            }
        }
    }
}