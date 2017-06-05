using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class AddSubject : System.Web.UI.Page
    {
        ExaminationBL ex = new ExaminationBL();
        DataTable dtcheck = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            ex.selectsub();
            dtcheck = ex.sourc;
            if (dtcheck.Rows.Count > 0)
            {
                gridbind();
            }
            else
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();
            }
        }
        private void gridbind()
        {
            ex.selectsub();
            gvTerritories.DataSource = ex.sourc;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        protected void btnsubadd_Click(object sender, EventArgs e)
        {
            if(txtsub.Text!=string.Empty)
            {
            ex.Subject = txtsub.Text;
            ex.addsubject();
            lblmsg.Text = ex.msg;
            gridbind();
            txtsub.Text = "";
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
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnldelete_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName=="ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                ex.SubjectID = Convert.ToInt32(arg.ToString());
                ex.SubDelte();
                lblmsg.Text = ex.msg;
                gridbind();
            }
        }
    }
}