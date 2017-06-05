using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddBatchlistfrm : System.Web.UI.Page
    {
        AdminSettingModule.AddSessionBL sn = new AdminSettingModule.AddSessionBL();
        AdminSettingModule.AddclassGroupListBL grpl = new AdminSettingModule.AddclassGroupListBL();
        AdminSettingModule.AddBatchYr batch = new AdminSettingModule.AddBatchYr();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                grpl.fnclassshow();
                ddlclass.DataSource = grpl.ar1;
                ddlclass.DataBind();
                sn.grddisplaysession();
                ddlsession.DataSource =sn.dlsession.DataSource;
                ddlsession.DataTextField = sn.dlsession.DataTextField;
                ddlsession.DataBind();
                ListItem tm = new ListItem("--Select--","-1");
                ddlclass.Items.Insert(0,tm);
                ddlsession.Items.Insert(0,tm);
            }

            gridbind();
        }
        public void gridbind()
        {
            batch.grdBatchDisplay();
            if(batch.dtable.Rows.Count >0)
            {
                mygride.DataSource = batch.dtable;
                mygride.DataBind();
                //Attribute to show the Plus Minus Button.
                mygride.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                mygride.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                mygride.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                mygride.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                mygride.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                mygride.DataSource = batch.dtable;
                mygride.DataBind();
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            if(ddlsession.SelectedValue!="-1" && ddlclass.SelectedValue!="-1")
            {
            batch.ClassBatch = ddlclass.Text;
            batch.SessionBatch = ddlsession.Text;
            batch.BatchInser1();
            gridbind();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (ddlclass.SelectedValue != "-1" && ddlsession.SelectedValue != "-1" && hdn.Value != string.Empty)
            {
                batch.ID = Convert.ToInt32(hdn.Value);
                batch.classname = ddlclass.SelectedValue;
                batch.SessionBatch = ddlsession.SelectedValue;
                batch.UpdateBatch();
                lblnotwork.Text = batch.ms;
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
                ddlclass.SelectedValue= data[1];
                hdn.Value= data[0];
                ddlsession.SelectedValue=data[2];
            }
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                batch.ID = arg;
                batch.DeleteBatch();
                lblnotwork.Text = batch.ms;
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
            mygride.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            mygride.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            mygride.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}