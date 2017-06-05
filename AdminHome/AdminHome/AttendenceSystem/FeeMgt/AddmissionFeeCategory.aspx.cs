using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AttendenceSystem.FeeMgt
{
    public partial class AddmissionFeeCategory : System.Web.UI.Page
    {
        AdminSettingModule.AddclassBL add = new AdminSettingModule.AddclassBL();
        FinanceBL.FinanceModuleBL fn = new FinanceBL.FinanceModuleBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            ClassName();
            }
            gridbind();
            btupdate.Visible = false;
        }
        protected void ClearData()
        {
            txt.Text = null;
            txtend.Text = null;
            txtFeesCatName.Text = null;
            ddlclassname.ClearSelection();
        }
        protected void ClassName()
        {
            add.fnshowClass();
            ddlclassname.DataSource = add.ddl.DataSource ;
            ddlclassname.DataTextField = "ClassType";
            ddlclassname.DataBind();
        }
        protected void gridbind()
        {
            fn.SelectFGData();
            gvTerritories.DataSource = fn.sourc;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        protected void lnkbtn_Click(object sender, EventArgs e)
        {
            btnSave.Visible = false;
            btupdate.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(txt.Text!=string.Empty && txtend.Text!=string.Empty && txtFeesCatName.Text!=string.Empty)
            {
            fn.ClassName = ddlclassname.SelectedValue;
            fn.CreatedOn = System.DateTime.Now.ToString();
            fn.FeeCate = txtFeesCatName.Text;
            fn.StartDate = txt.Text;
            fn.EndDate = txtend.Text;
            fn.insertFeeCategory();
            lblmsg.Text = fn.msg;
            gridbind();
            ClearData();
            }else
            {
                lblmsg.Text = "* Required Field!";
            }
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
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

       
        protected void lnkbtn_Command(object sender, CommandEventArgs e)
        {
            btupdate.Visible = true;
            btnSave.Visible = false;
            string index = e.CommandArgument.ToString();
            string[] str = index.Split(',');
            txt.Text=str[2];
            txtend.Text=str[3];
            ddlclassname.SelectedValue=str[0];
            txtFeesCatName.Text=str[1];
            lblid.Text = str[4];
            //lblmsg.Text =str[4];
        }

        protected void btupdate_Click(object sender, EventArgs e)
        {
            btnSave.Visible = true;
            btupdate.Visible = false;
            if (txt.Text != string.Empty && txtend.Text != string.Empty && txtFeesCatName.Text != string.Empty)
            {
                fn.FGID =Convert.ToInt32(lblid.Text);
                fn.ClassName = ddlclassname.SelectedValue;
                fn.CreatedOn = System.DateTime.Now.ToString();
                fn.FeeCate = txtFeesCatName.Text;
                fn.StartDate = txt.Text;
                fn.EndDate = txtend.Text;
                fn.UpdateFGDatas();
                lblmsg.Text = fn.msg;
                gridbind();
                ClearData();
            }
            else
            {
                lblmsg.Text = "* Required Field!";
            }

        }
    }
}