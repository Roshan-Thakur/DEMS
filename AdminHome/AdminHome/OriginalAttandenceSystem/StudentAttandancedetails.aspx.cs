using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class StudentAttandancedetails : System.Web.UI.Page
    {
        StudentInfoBL st = new StudentInfoBL();
        DataView dv = new DataView();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getmonthname();
                batchname();
            }
            gridbind();
            lblInfo.Text = System.DateTime.Now.ToString();
        }
        private void batchname()
        {
            AdminSettingModule.AddBatchYr batch = new AdminSettingModule.AddBatchYr();
            batch.grdBatchDisplay();
            ddlbatch.DataSource = batch.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem litem1 = new ListItem("Select Batch", "-1");
            ddlbatch.Items.Insert(0, litem1);
            // Seconed Batch items
            ddlbatch1.DataSource = batch.ddlbatch.Items;
            ddlbatch1.DataBind();
            ddlbatch1.Items.Insert(0, litem1);
        }
        private void getmonthname()
        {
            DateTimeFormatInfo dt = new DateTimeFormatInfo();// lblmsg.Text = dt.GetAbbreviatedMonthName(3);
            for (int i = 1; i <= 12; i++)
            {
                ddlmonth.Items.Add(new ListItem(dt.GetAbbreviatedMonthName(i), i.ToString()));
            }
            ListItem items = new ListItem("Select Month", "-1");
            ddlmonth.Items.Insert(0, items);
            //string s = lbldate.Text;
            //string[] month = s.Split('-');
            //lblmsg.Text=month[1];

        }
        private void gridbind()
        {
            st.SelectStuAttandance();
            gvTerritories.DataSource = st.sourc;
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
        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {

                lblstudcount.Text ="Total Students: "+ gvTerritories.Rows.Count.ToString();
            }
            
        }

       
        private void Tempgridbind()
        {
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
       

        protected void btnmonth_Click(object sender, EventArgs e)
        {
            st.SelectStuAttandance();
            dv = new DataView(st.sourc);
            if(ddlbatch.SelectedValue != "-1" && ddlmonth.SelectedValue != "-1" && ddlstatusByMonth.SelectedValue!="-1")
            {
                string month = ddlmonth.SelectedItem.ToString();
                string batcname=ddlbatch.SelectedItem.ToString();
                string statusbymonth = ddlstatusByMonth.SelectedItem.ToString();
                //lblmsg.Text = month + batcname;
                lblInfo.Text = month + "," + batcname + "," + statusbymonth;
                dv.RowFilter = "Convert(attandancedate,System.String) Like '%" + month + "%' AND batch='" + batcname + "' AND attandancestatus='" + statusbymonth + "'  ";
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

        protected void btndate_Click(object sender, EventArgs e)
        {
            st.SelectStuAttandance();
            dv = new DataView(st.sourc);
            if (ddlbatch1.SelectedValue != "-1" && txt.Text !=String.Empty && ddlsattusByDate.SelectedValue!="-1")
            {
                string txtdate = txt.Text;
                string statusbyDate = ddlsattusByDate.SelectedItem.ToString();
                string batcname = ddlbatch1.SelectedItem.ToString();
               // lblmsg.Text = txtdate + batcname;
                lblInfo.Text = txtdate + "," + statusbyDate + "," + batcname;
                dv.RowFilter = "attandancedate='" + txtdate + "' AND batch='" + batcname + "' AND attandancestatus='" + statusbyDate + "' ";
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
    }
}