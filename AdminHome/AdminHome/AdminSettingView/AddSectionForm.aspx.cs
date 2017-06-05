using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddSectionForm : System.Web.UI.Page
    {
        AdminSettingModule.AddSectionBL sec = new AdminSettingModule.AddSectionBL();
        protected void Page_Load(object sender, EventArgs e)
        {

            gridbind();
            
        }
        public void gridbind()
        {
            sec.fnshowSection();
            if(sec.typ1.Rows.Count>0)
            {
                mygride.DataSource = sec.typ1;
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
                mygride.DataSource = sec.typ1;
                mygride.DataBind();
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            if(txtsection.Text!=string.Empty)
            {
                sec.Section = txtsection.Text;
                sec.AddSectionInsert();
                lblmsg.Text = sec.lblmsg;
                
                gridbind();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (txtsection.Text != string.Empty && hdn.Value!=string.Empty)
            {
                sec.ID = Convert.ToInt32(hdn.Value);
                sec.Section = txtsection.Text;
                sec.UpdateSection();
                lblmsg.Text = sec.lblmsg;
                gridbind();
                hdn.Value = "";
            }
        }

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                txtsection.Text = data[1];
                hdn.Value = data[0];
            }
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                sec.ID = arg;
                sec.DeleteSection();
                lblmsg.Text = sec.lblmsg;
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
    }
}