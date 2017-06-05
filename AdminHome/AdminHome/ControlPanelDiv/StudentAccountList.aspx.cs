using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.ControlPanelDiv
{
    public partial class StudentAccountList : System.Web.UI.Page
    {
        StudentInfoBL st = new StudentInfoBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            grindbind();
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {

        }
        protected void grindbind()
        {
            st.selectPassStatus();
            gvTerritories.DataSource = st.sourc;
            gvTerritories.DataBind();
            lblmsg.Text = st.msg;

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void gvTerritories_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkbtnupdate_Command1(object sender, CommandEventArgs e)
        {

            if (e.CommandName == "ViewDetails")
            {
                string index = e.CommandArgument.ToString();
                Response.Redirect("StudentOldPassSet.aspx?arg="+index);
            }
        }
    }
}