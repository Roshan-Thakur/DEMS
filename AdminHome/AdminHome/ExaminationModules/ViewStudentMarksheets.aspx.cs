using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class ViewStudentMarksheets : System.Web.UI.Page
    {
        ExaminationBL ex = new ExaminationBL();
        public DataView dv = new DataView();
        public  string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FormNo"] != null)
            {
                id = Session["FormNo"].ToString();
                selectmarksheet();
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
        }
        public void selectmarksheet()
        {

            if (Session["FormNo"] != null && id!=string.Empty)
            {
                int FormNo=Convert.ToInt32(id);
                string status="1";
                ex.retriveCollectedmarksheet();
                dv = new DataView(ex.sourc);
                dv.RowFilter = "formno='" + FormNo + "' AND exportstatus='" + status + "'";
                if (dv.Count > 0)
                {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();

                    //Attribute to show the Plus Minus Button.
                    gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                    //Attribute to hide column in Phone.
                    gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
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
            else
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }
        }
    }
}