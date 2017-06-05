using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class Attandancedetails : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            grindbind();
            lbldate.Text = System.DateTime.Now.ToString();
            if(!IsPostBack)
            {
            selectid();
            getmonthname();
            }
           
        }
        private void getmonthname()
        {
            DateTimeFormatInfo dt = new DateTimeFormatInfo();// lblmsg.Text = dt.GetAbbreviatedMonthName(3);
            for (int i = 1; i <= 12;i++ )
            {
                ddlmonth.Items.Add(new ListItem(dt.GetAbbreviatedMonthName(i),i.ToString()));
            }
            ListItem items = new ListItem("--Select--","-1");
            ddlmonth.Items.Insert(0,items);
            //string s = lbldate.Text;
            //string[] month = s.Split('-');
            //lblmsg.Text=month[1];
            
        }

        private void selectid()
        {
            user.selectsalaryemp();
            ddlid.DataSource = user.ddl1.DataSource;
            ddlid.DataTextField = "EId";
            ddlid.DataBind();
            ListItem itms = new ListItem("-Select-", "-1");
            ddlid.Items.Insert(0, itms);
        }
        public void grindbind()
        {
            user.SelectAllEmpAttandance();
            gvTerritories.DataSource = user.source;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }


        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lbl = (Label)e.Row.FindControl("lblTotal");
                lbl.Text = gvTerritories.Rows.Count.ToString();
            }
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {

            if (ddlid.SelectedValue != "-1")
            {
                string searchValue = txt.Text.ToString();
                lblmsg.Text = searchValue;
                DataView dv1 = new DataView(user.source);
                dv1.RowFilter = "FKEID='" + ddlid.SelectedValue.ToString()+"'";
                //dv1.Sort = "attandancedate DESC";
                //dv1.RowFilter = "FKEID='" + ddlid.SelectedValue.ToString() + "' AND attandancedate='"+searchValue+"'";
                gvTerritories.DataSource = dv1;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
                txt.Text = string.Empty;
                ddlid.ClearSelection();
            }
           
        }

        protected void lnklocation_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string[] str = btn.CommandArgument.Split(',');
            //txt.Text=str[0]+","+str[1];
        }

        protected void btndate_Click(object sender, EventArgs e)
        {
            if (txt.Text != string.Empty)
            {
                string searchValue = txt.Text.ToString();
                lblmsg.Text = searchValue;
                DataView dv1 = new DataView(user.source);
                dv1.RowFilter = "attandancedate='" + searchValue + "'";
                //dv1.Sort = "attandancedate DESC";
                gvTerritories.DataSource = dv1;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
                txt.Text = string.Empty;
            }
        }

        protected void btnmonth_Click(object sender, EventArgs e)
        {
            string month = ddlmonth.SelectedItem.ToString();
            lblmsg.Text = month;
            DataView dt = new DataView(user.source);
            dt.RowFilter = "Convert(attandancedate,System.String) Like '%" + month + "%'"; //"(Convert(InvoiceDate,System.String) like '%" + yearChosen + "%') 
            gvTerritories.DataSource = dt;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "phone";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}