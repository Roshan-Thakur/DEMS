using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddClassGroupList : System.Web.UI.Page
    {
        AdminSettingModule.AddclassGroupListBL adm = new AdminSettingModule.AddclassGroupListBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                adm.fnclassshow();
                ddlclass.DataSource = adm.ar1;
                ddlclass.DataBind();
                adm.fnselectgroup();
                ddlGroup.DataSource = adm.dl.DataSource;
                ddlGroup.DataTextField = adm.dl.DataTextField;
                ddlGroup.DataBind();
                ListItem tm = new ListItem("--Select--","-1");
                ddlGroup.Items.Insert(0,tm);
                ddlclass.Items.Insert(0,tm);
            }
            gridbind();
        }
        public void gridbind()
        {
             adm.grddisplay();
            if(adm.dt.Rows.Count>0)
            {
                mygride.DataSource = adm.dt;
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
            }else
            {
                mygride.DataSource = adm.dt;
                mygride.DataBind();
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            if(ddlclass.SelectedValue!="-1" && ddlGroup.SelectedValue!="-1" && txtmndatry.Text!=string.Empty)
            {
            adm.Grop = ddlGroup.Text;
            adm.Clas = ddlclass.Text;
            adm.Mandatry = txtmndatry.Text;
            adm.fnmandatorysub();
            lblnotwork.Text = adm.message;
            gridbind();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (ddlclass.SelectedValue != "-1" && ddlGroup.SelectedValue != "-1" && txtmndatry.Text != string.Empty && hdn.Value!=string.Empty)
            {
                adm.Grop = ddlGroup.Text;
                adm.Clas = ddlclass.Text;
                adm.Mandatry = txtmndatry.Text;
                adm.ID =Convert.ToInt32(hdn.Value);
                adm.UpdateClassgrplist();
                lblnotwork.Text = adm.message;
                gridbind();
                hdn.Value = "";
            }
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                adm.ID = arg;
                adm.DeleteClassgrplist();
                lblnotwork.Text = adm.message;
                gridbind();
            }
        }

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                ddlclass.SelectedValue = data[1];
                hdn.Value= data[0];
                ddlGroup.SelectedValue=data[2];
                txtmndatry.Text=data[3];
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
    }
}