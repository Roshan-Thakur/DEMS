using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.HumanResorceView
{
    public partial class SalaryAllowance : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL ad = new FormUserRegistrationModule.EmployeeregBL();
        public int x;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
            btnupdate.Visible = false;
            btndelete.Visible = false;
        }
        protected void cleardata()
        {
            txtpercent.Text = null;
            txttype.Text = null;
            chkstatus.Checked = false;
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (txtpercent.Text!=string.Empty && txttype.Text != string.Empty)
            {
                btnupdate.Visible = false;
                ad.AllownceType = txttype.Text;
                ad.TypePercent = txtpercent.Text;
                ad.TypeStatus = chkstatus.Checked ? "Active" : "Unactive";
                ad.insertallownce();
                lblmsg.Text = ad.msg;
                cleardata();
                gridbind();
            }
            else
            {
                lblmsg.Text = "Required Field!";
                chkstatus.Checked = false;
            }
            
        }
        protected void gridbind()
        {
            ad.selectallownce();
            gvTerritories.DataSource = ad.source;
            gvTerritories.DataBind();

            // Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        protected void lnkbtnupdate_Click(object sender, EventArgs e)
        {
            btnsave.Visible = false;
            btnupdate.Visible = true;
            btndelete.Visible = true;
            LinkButton lnkbtn = (LinkButton)sender;
            string[] cmdargument = lnkbtn.CommandArgument.Split(',');
            txtpercent.Text = cmdargument[1];
            txttype.Text = cmdargument[0];
            chkstatus.Checked = Convert.ToBoolean(cmdargument[2]=="Active");
            lbl.Text = cmdargument[3];
            // x = Convert.ToInt32(cmdargument[3]);
            //lblmsg.Text = x.ToString()+lbl.Text;
            
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            btnsave.Visible = true;
            btnupdate.Visible = false;
            btndelete.Visible = false;
            ad.EID =Convert.ToInt32(lbl.Text);
           // ad.EID =Convert.ToInt32(gvTerritories.SelectedDataKey.Value);
            ad.AllownceType = txttype.Text;
            ad.TypePercent = txtpercent.Text;
            ad.TypeStatus = chkstatus.Checked ? "Active" : "Unactive";
            ad.updateallownce();
            lblmsg.Text = ad.msg;
            cleardata();
            gridbind();
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            btnsave.Visible = true;
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            // Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            btnsave.Visible = true;
            btnupdate.Visible = false;
            btndelete.Visible = false;
            ad.EID = Convert.ToInt32(lbl.Text);
            ad.deletetype();
            lblmsg.Text = ad.msg;
            cleardata();
            gridbind();
        }
    }
}