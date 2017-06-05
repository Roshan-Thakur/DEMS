using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AccademicManagement
{
    public partial class BatchAsign : System.Web.UI.Page
    {
        AdminSettingModule.AddBatchYr batch1 = new AdminSettingModule.AddBatchYr();
        AdminSettingModule.AddSectionBL sec = new AdminSettingModule.AddSectionBL();
        AcadimicModulBL.AcademicBL ac = new AcadimicModulBL.AcademicBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            fnbatch();
            degree();
            }
            //grindbind();
            btnassign.Enabled = false;
        }
        
        protected void fnbatch()
        {
            batch1.grdBatchDisplay();
            ddlbatch.DataSource = batch1.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem litem1 = new ListItem("--Select State--", "-1");
            ddlbatch.Items.Insert(0, litem1);
            //Section
            sec.fnshowSection();
            ddlsection.DataSource = sec.typ1;
            ddlsection.DataTextField = "section";
            ddlsection.DataBind();
        }
        private void degree()
        {
            AdminSettingModule.AddclassGroupListBL adm = new AdminSettingModule.AddclassGroupListBL();
            adm.fnclassshow();
            ddlclass.DataSource = adm.ar1;
            ddlclass.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlclass.Items.Insert(0, litem);
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        protected void grindbind()
        {
            ac.searchbyclass();
            gvTerritories.DataSource = ac.sourc;
            gvTerritories.DataBind();
            //ac.StuFetchQuery();
            //gvTerritories.DataSource = ac.sourc;
            //gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

       

        protected void btnassign_Click(object sender, EventArgs e)
        {
            ac.Batch = ddlbatch.SelectedValue.ToString();
            ac.Section = ddlsection.SelectedValue.ToString();
            ac.Shift = ddlshift.SelectedValue.ToString();
            ac.StClass = ddlclass.SelectedValue.ToString();
           // lblmsg.Text = ac.Shift + ac.StClass + ac.Batch + ac.Section;
            grindupdate();
            grindbind();

        }
        protected void grindupdate()
        {
            ac.updatebatch();
            gvTerritories.DataSource = ac.sourc;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "all";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[6].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[7].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[8].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            btnassign.Enabled = true;
            ac.Shift = ddlshift.SelectedValue.ToString() ;
            ac.StClass = ddlclass.SelectedValue.ToString();
            //lblmsg.Text = ac.Shift + ac.StClass;
            grindbind();
        }
    }
}