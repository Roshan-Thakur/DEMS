using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace AdminHome.AccademicManagement
{
    public partial class PermotedStudentList : System.Web.UI.Page
    {
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        string value;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.InnerText = "Permoted "+Request.QueryString["msg"];
            SelectPermotedStudent();
        }

        public void SelectPermotedStudent()
        {
           ac.StuFetchQuery();
           dv=new DataView(ac.sourc);
           value = "Permoted";
           dv.RowFilter="TakeAdmision='"+value+"'";
           dv.Sort = "Date1 ASC";
            if(dv.Count>0)
            {
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();


                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";

                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "all";
                gvTerritories.HeaderRow.Cells[9].Attributes["data-hide"] = "all";
                gvTerritories.HeaderRow.Cells[10].Attributes["data-hide"] = "phone";

                gvTerritories.HeaderRow.Cells[11].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[12].Attributes["data-hide"] = "all";
                gvTerritories.HeaderRow.Cells[13].Attributes["data-hide"] = "all";
                gvTerritories.HeaderRow.Cells[14].Attributes["data-hide"] = "all";
                gvTerritories.HeaderRow.Cells[15].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;

            }else
                {
                    gvTerritories.DataSource=dv;
                    gvTerritories.DataBind();
                }
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();



            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";

            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[9].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[10].Attributes["data-hide"] = "phone";

            gvTerritories.HeaderRow.Cells[11].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[12].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[13].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[14].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[15].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                value = e.CommandArgument.ToString();
                Response.Redirect("/AccademicManagement/AdmissionUpdateForm.aspx?id="+value);
            }
        }
    }
}