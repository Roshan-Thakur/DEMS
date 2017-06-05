using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class SectionAdd : System.Web.UI.Page
    {
        AdminSettingModule.AddSessionBL sd1 = new AdminSettingModule.AddSessionBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
        }
        public void gridbind()
        {
            sd1.grddisplaysession();
            if (sd1.dt.Rows.Count > 0)
            {
                mygride.DataSource = sd1.dt;
                mygride.DataBind();
                //Attribute to show the Plus Minus Button.
                mygride.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                mygride.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                mygride.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                mygride.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                mygride.DataSource = sd1.dt;
                mygride.DataBind();
            }
        }
        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                sd1.ID = arg;
                sd1.DeleteSession();
                lblnotice.Text = sd1.ms;
                gridbind();
            }
        }

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                txtsession.Text = data[1];
                hdn.Value = data[0];
            }
        }

        protected void mygride_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            mygride.PageIndex = e.NewPageIndex;
            mygride.DataBind();

            //Attribute to show the Plus Minus Button.
            mygride.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            mygride.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            mygride.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            mygride.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if(txtsession.Text!=string.Empty && hdn.Value!=string.Empty)
            {
                sd1.SessionYr = txtsession.Text;
                sd1.ID = Convert.ToInt32(hdn.Value);
                sd1.UpdateSession();
                lblnotice.Text = sd1.ms;
                gridbind();
                hdn.Value = "";
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if(txtsession.Text!=string.Empty)
            {
                sd1.SessionYr = txtsession.Text;
                sd1.InsertSession();
                gridbind();
            }
        }
    }
}