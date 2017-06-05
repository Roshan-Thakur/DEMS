using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddGroupfrm : System.Web.UI.Page
    {
        AdminSettingModule.AddGroupBL ad = new AdminSettingModule.AddGroupBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
        }


        public void gridbind()
        {
            ad.fngroupShow();
            if (ad.grptyp.Rows.Count > 0)
            {
                mygride.DataSource = ad.grptyp;
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
                mygride.DataSource = ad.grptyp;
                mygride.DataBind();
            }
        }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if(txtgroup.Text!=string.Empty)
            {
            ad.ID = Convert.ToInt32(hdn.Value);
            ad.Group = txtgroup.Text;
            ad.UpdateGroup();
            lblnotice.Text = ad.msg;
            gridbind();
            }
        }

        protected void btnsave1_Click(object sender, EventArgs e)
        {
            if(txtgroup.Text!=string.Empty)
            {
                ad.Group = txtgroup.Text;
                lblnotice.Text = ad.msg;
                ad.FnaddGroup();
                gridbind();
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

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                ad.ID = Convert.ToInt32(arg);
                ad.DeleteGroup();
                lblnotice.Text = ad.msg;
                gridbind();
            }
        }

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                txtgroup.Text= data[1];
                hdn.Value = data[0];
            }
        }
    }
}