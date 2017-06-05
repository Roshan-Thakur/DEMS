using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class DetailsAbsentEmp : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            user.AttandDate = System.DateTime.Now.ToString();
            user.selectAbsentCurrentEmp();
            DataTable currenttable=user.source;
            if (currenttable.Rows.Count > 0)
            {
                grindbind();
            }
            else
            {
                gvTerritories.DataSource = user.source;
                gvTerritories.DataBind();
            }
            lbldate.Text = System.DateTime.Now.ToShortDateString();
            lbltime.Text = System.DateTime.Now.ToShortTimeString();
        }
        public void grindbind()
        {
            user.AttandDate = System.DateTime.Now.ToString();
            user.selectAbsentCurrentEmp();
            gvTerritories.DataSource = user.source;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            int rowIndex = 0;
            DataTable currenttable = user.source;
            if (currenttable.Rows.Count > 0)
            {
                for (int i = 1; i <= currenttable.Rows.Count;i++ )
                {
                    user.EID = Convert.ToInt32(currenttable.Rows[rowIndex]["EId"]);
                    user.AttandDate = System.DateTime.Now.ToString();
                    user.AttandStatus = 0;
                    user.TimeAttand = System.DateTime.Now.ToShortTimeString();
                    user.InsertAttandance();
                    rowIndex++;
                }
                lblmsg.Text = user.msg;
               
            }
            else
            {
                lblmsg.Text = "Sorry Data is not Available!";
            }
            // + user.TimeAttand + user.AttandStatus + user.EID + user.AttandDate
            grindbind();
        }


        protected void gvTerritories_RowDataBound1(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lbl = (Label)e.Row.FindControl("lblTotal");
                lbl.Text = gvTerritories.Rows.Count.ToString();
            }
        }
    }
}