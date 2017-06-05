using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddBoard : System.Web.UI.Page
    {
        AdminSettingModule.AddBoardBL bard = new AdminSettingModule.AddBoardBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
        }
        public void gridbind()
        {
            bard.fngrdshow();
            if (bard.dt1.Rows.Count > 0)
            {
                mygride.DataSource = bard.dt1;
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
                mygride.DataSource = bard.dt1;
                mygride.DataBind();
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            bard.Board = txtboard.Text;
            bard.fnBoardInsert();
            lblnotice.Text = bard.msg;
            // To update grid data
            gridbind();
        }

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg =e.CommandArgument.ToString();
                string[] data = arg.Split(',');
               
                txtboard.Text = data[1];
                hdn.Value=data[0];
            }
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                bard.ID = arg;
                bard.DeleteBoard();
                lblnotice.Text = bard.msg;
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

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if(txtboard.Text!=string.Empty && hdn.Value!=string.Empty)
            {
                bard.ID =Convert.ToInt32(hdn.Value);
                bard.Board = txtboard.Text;
                bard.UpdateBoard();
                lblnotice.Text = bard.msg;
                gridbind();
            }
        }
    }
}