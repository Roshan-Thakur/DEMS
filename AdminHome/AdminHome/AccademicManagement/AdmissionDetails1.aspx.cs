using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AccademicManagement
{
    public partial class AdmissionDetails1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grinbind();
        }

        private void grinbind()
        {
            AcadimicModulBL.AcademicBL ac = new AcadimicModulBL.AcademicBL();
            ac.StuFetchQuery();
            gvTerritories.DataSource = ac.sourc;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[9].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[10].Attributes["data-hide"] = "all";

            gvTerritories.HeaderRow.Cells[11].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[12].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[13].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[14].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[15].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[16].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[17].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[18].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[19].Attributes["data-hide"] = "all";

            gvTerritories.HeaderRow.Cells[20].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[21].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[22].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[23].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[24].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[25].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[26].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[27].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[28].Attributes["data-hide"] = "all";

            gvTerritories.HeaderRow.Cells[29].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[30].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[31].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[32].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[33].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[34].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[35].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[36].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[37].Attributes["data-hide"] = "all";

            gvTerritories.HeaderRow.Cells[38].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[39].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[40].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[41].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[42].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[43].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[44].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[45].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[46].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[47].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[9].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[10].Attributes["data-hide"] = "all";

            gvTerritories.HeaderRow.Cells[11].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[12].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[13].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[14].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[15].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[16].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[17].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[18].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[19].Attributes["data-hide"] = "all";

            gvTerritories.HeaderRow.Cells[20].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[21].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[22].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[23].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[24].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[25].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[26].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[27].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[28].Attributes["data-hide"] = "all";

            gvTerritories.HeaderRow.Cells[29].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[30].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[31].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[32].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[33].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[34].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[35].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[36].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[37].Attributes["data-hide"] = "all";

            gvTerritories.HeaderRow.Cells[38].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[39].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[40].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[41].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[42].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[43].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[44].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[45].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[46].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[47].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg =Convert.ToInt32( e.CommandArgument.ToString());
                Response.Redirect("~/AccademicManagement/StudentProfilePage.aspx?id="+arg);
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string value =e.CommandArgument.ToString();
                Response.Redirect("/AccademicManagement/AdmissionUpdateForm.aspx?id=" + value);
            }
        }
    }
}