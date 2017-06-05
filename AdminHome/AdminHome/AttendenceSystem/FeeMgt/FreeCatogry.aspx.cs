using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AttendenceSystem.FeeMgt
{
    public partial class FreeCatogry : System.Web.UI.Page
    {
        FinanceBL.FinanceModuleBL fn = new FinanceBL.FinanceModuleBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectbatch();
            }
            gridbind();
        }
        protected void selectbatch()
        {
            AdminSettingModule.AddBatchYr batch = new AdminSettingModule.AddBatchYr();
            batch.grdBatchDisplay();
            ddlbatch.DataSource = batch.ddlbatch.Items;
            ddlbatch.DataBind();
           
            //lblmsg.Text = batch.ms;
        }
        protected void gridbind()
        {
            FinanceBL.FinanceModuleBL fn = new FinanceBL.FinanceModuleBL();
            fn.selectBatch();
            gvTerritories.DataSource = fn.sourc;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkbtn_Command(object sender, CommandEventArgs e)
        {
            string index = e.CommandArgument.ToString();
            string[] str = index.Split(',');
            //ddlbatch.Items.Insert(0, new ListItem(string.Empty, string.Empty));
            if (ddlbatch.SelectedIndex >= 1)
            {
                ddlbatch.SelectedValue = str[0];
            }
            else
            {
                ddlbatch.Items.Insert(0, new ListItem("--Select--", string.Empty));
            }
           // ddlbatch.SelectedValue=str[0];
          
            txtFeesCatName.Text=str[1];
            txtDateStart.Text=str[2];
            txtDateEnd.Text=str[3];
            lblid.Text=str[4];
            txtFeesFine.Text=str[5];
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {

        }
        private void cleardata()
        {
            txtFeesFine.Text = null;
            txtFeesCatName.Text = null;
            txtDateStart.Text = null;
            txtDateEnd.Text = null;
            ddlbatch.ClearSelection();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            fn.EndDate= txtDateEnd.Text;
            fn.StartDate = txtDateStart.Text;
            fn.Batchyr = ddlbatch.SelectedValue;
            fn.CreatedOn = System.DateTime.Now.ToString();
            fn.FGID =Convert.ToInt32(lblid.Text);
            fn.FeeCate = txtFeesCatName.Text;
            fn.FeeFine = txtFeesFine.Text;
            fn.updatebatchdetails();
            lblmsg.Text = fn.msg+lblid.Text;
            gridbind();
        }
    }
}