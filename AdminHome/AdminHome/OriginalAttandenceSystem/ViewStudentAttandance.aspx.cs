using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class ViewStudentAttandance : System.Web.UI.Page
    {
        StudentInfoBL st = new StudentInfoBL();
        DataView dv = new DataView();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FormNo"] != null)
            {
                id = Session["FormNo"].ToString();
                selectAttandance();
            }
            else
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }
        }
        public void selectAttandance()
        {
            if (id != null && Session["FormNo"] != null)
            {
                st.SelectStuAttandance();
                dv = new DataView(st.sourc);
                int stid = Convert.ToInt32(id);
                dv.RowFilter = "FKSTFormNo='" + stid + "'";
                dv.Sort = "attandancedate desc";
                if (dv.Count > 0)
                {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();


                    //Attribute to show the Plus Minus Button.
                    gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                    //Attribute to hide column in Phone.
                    gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                    gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
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