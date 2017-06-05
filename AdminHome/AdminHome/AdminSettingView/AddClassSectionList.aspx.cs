using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddClassSectionList : System.Web.UI.Page
    {
        AdminSettingModule.AddclassSectionBL sec = new AdminSettingModule.AddclassSectionBL();
        AdminSettingModule.AddclassGroupListBL sd = new AdminSettingModule.AddclassGroupListBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                sd.fnclassshow();
                ddlclass.DataSource = sd.ar1;
                ddlclass.DataBind();
                sd.fnselectgroup();
                ddlGroup.DataSource = sd.dl.DataSource;
                ddlGroup.DataTextField = sd.dl.DataTextField;
                ddlGroup.DataBind();
                ListItem tm = new ListItem("--Select--","-1");
                ddlGroup.Items.Insert(0,tm);
                ddlclass.Items.Insert(0, tm);
            }
            gridbind();
        }
        public void gridbind()
        {
            sec.grddisplay();
            if (sec.dt.Rows.Count > 0)
            {
                mygride.DataSource = sec.dt;
                mygride.DataBind();
                //Attribute to show the Plus Minus Button.
                mygride.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                mygride.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                mygride.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                mygride.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                mygride.HeaderRow.Cells[4].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                mygride.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                mygride.DataSource = sec.dt;
                mygride.DataBind();
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            if(txtsection.Text!=string.Empty && ddlclass.SelectedValue!="-1" && ddlGroup.SelectedValue!="-1")
            {
            sec.Clas=ddlclass.Text;
            sec.Grop = ddlGroup.Text;
            sec.Section = txtsection.Text;
            lblnotwork.Text = sec.message;
            sec.fnInsertSection();
            gridbind();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if(txtsection.Text!=string.Empty && ddlGroup.SelectedValue!="-1" && ddlclass.SelectedValue!="-1" && hdn.Value!=string.Empty)
            {
                sec.ID = Convert.ToInt32(hdn.Value);
                sec.Clas = ddlclass.SelectedValue;
                sec.Grop = ddlGroup.SelectedValue;
                sec.Section = txtsection.Text;
                sec.UpdateClassSection();
                lblnotwork.Text = sec.message;
                gridbind();
                hdn.Value = "";
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
            mygride.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            mygride.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            mygride.HeaderRow.Cells[4].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            mygride.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                sec.ID = arg;
                sec.DeleteClassSec();
                lblnotwork.Text = sec.message;
                gridbind();
            }
        }

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                hdn.Value = data[0];
                txtsection.Text=data[3];
                ddlclass.SelectedValue=data[1];
                ddlGroup.SelectedValue=data[2];
            }
        }
    }
}