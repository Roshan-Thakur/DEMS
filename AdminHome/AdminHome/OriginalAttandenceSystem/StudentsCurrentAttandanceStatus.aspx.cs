using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class StudentsCurrentAttandanceStatus : System.Web.UI.Page
    {
        StudentInfoBL st = new StudentInfoBL();
        DataView dv = new DataView();
        string AttandanceStatus;
        string AttandanceDate;
        protected void Page_Load(object sender, EventArgs e)
        {
            lbldate1.Text = System.DateTime.Now.ToLongDateString();
            lbldate.Text = System.DateTime.Now.ToLongDateString();
            grindbind();
            grindbind1();
        }
        public void grindbind()
        {
            st.SelectStuAttandance();
            dv = new DataView(st.sourc);
            AttandanceDate = System.DateTime.Now.ToShortDateString();
            AttandanceStatus ="Present";
            dv.RowFilter = "attandancedate='"+AttandanceDate+"' AND attandancestatus='"+AttandanceStatus+"'";
            if (dv.Count > 0)
            {
                gvTerritories.DataSource =dv;
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
                gvTerritories.DataSource =dv;
                gvTerritories.DataBind();
            }
        }
        public void grindbind1()
        {
            st.SelectStuAttandance();
            dv = new DataView(st.sourc);
            AttandanceDate = System.DateTime.Now.ToShortDateString();
            AttandanceStatus = "Absent";
            dv.RowFilter = "attandancedate='" + AttandanceDate + "' AND attandancestatus='" + AttandanceStatus + "'";
            if (dv.Count > 0)
            {
                gvTerritories1.DataSource = dv;
                gvTerritories1.DataBind();
                ////Attribute to show the Plus Minus Button.
                gvTerritories1.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories1.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories1.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                gvTerritories1.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                gvTerritories1.DataSource = dv;
                gvTerritories1.DataBind();
            }
        }
    }
}