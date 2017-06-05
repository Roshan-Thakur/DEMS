using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddClass : System.Web.UI.Page
    {
        AdminSettingModule.AddclassBL add = new AdminSettingModule.AddclassBL();
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            lblnotice.Text = add.lblmsg;
            gridbind();
        }
        public void gridbind()
        {
            add.fnshowClass();
            if(add.type.Rows.Count>0)
            {
            mygride.DataSource = add.type;
            mygride.DataBind();
            //Attribute to show the Plus Minus Button.
            mygride.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            mygride.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            mygride.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            mygride.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                mygride.DataSource=add.type;
                mygride.DataBind();
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            add.ClassType = txtclass.Text;
            lblnotice.Text = add.lblmsg;
            add.FnAddClass();
            // To update Gridview
            add.fnshowClass();
            gridbind();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if(txtclass.Text!=string.Empty && txtorder.Text!=string.Empty)
            {
            add.Order = Int32.Parse(txtorder.Text);
            add.ClassType = txtclass.Text;
            add.UpdateClass();
            lblnotice.Text = add.lblmsg;
            gridbind();
            txtorder.Text = "";
            txtclass.Text = "";
            }
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg =Convert.ToInt32( e.CommandArgument.ToString());
                add.Order = arg;
                add.DeleteClass();
                lblnotice.Text = add.lblmsg;
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

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg =e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                txtclass.Text=data[1];
                txtorder.Text=data[0];
            }
        }
    }
}