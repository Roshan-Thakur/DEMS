using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.GuidTeacherManagement
{
    public partial class Viewtdstudentguid : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        public string eid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EId"] != null)
            {
                eid =(Session["EId"].ToString());
                selectseletedstudent();
                showdiv.Visible = false;
            }
            else
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }

        }

        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                lblno.Text = "Total Student: " + gvTerritories.Rows.Count.ToString();
            }
        }

        protected void btnview_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                Response.Redirect("../TeacherDesboard/TdStudentProfileDetails.aspx?St="+arg);
            }
        }
        public void selectseletedstudent()
        {
            ac.StuFetchQuery();
            if (eid!=null)
            {
                int id =Convert.ToInt32(eid);
                dv = new DataView(ac.sourc);
                dv.RowFilter = "assignteacherId='" + id + "'";
                if (dv.Count > 0)
                {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();
                    Tempgridbind();
                }
                else
                {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();
                }
            }
        }
        private void Tempgridbind()
        {
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnknotify_Click(object sender, EventArgs e)
        {
            showdiv.Visible = true;
        }

        protected void btnsendmessage_Click(object sender, EventArgs e)
        {
           foreach(GridViewRow Row in gvTerritories.Rows)
           {
               if(Row.RowType==DataControlRowType.DataRow)
               {
                    ac.FormNo = Convert.ToInt32(gvTerritories.DataKeys[Row.RowIndex].Value.ToString());
                    ac.Notification = txtnoti.InnerText;
                    ac.UpdateNotificationBoard();
                    lblmsg.Text = ac.msg;
                    showdiv.Visible = false;
               }
           }
        

        }
    }
}