using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddManagementShift : System.Web.UI.Page
    {
        AdminSettingModule.AddclassBL ad = new AdminSettingModule.AddclassBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
        }
        public void gridbind()
        {
            ad.fnshowShift();
                if(ad.type.Rows.Count>0)
                {
                    mygride.DataSource = ad.type;
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
                    mygride.DataSource = ad.type;
                    mygride.DataBind();
                }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (ddlshift.SelectedValue != "-1" && timepicker1.Text != string.Empty && timepicker2.Text != string.Empty && timepicker3.Text != string.Empty)
            {
                ad.StartTime = timepicker1.Text;
                ad.CloseTime = timepicker2.Text;
                ad.LateTime = timepicker3.Text;
                ad.Shift = ddlshift.SelectedValue;
                ad.FnAddShift();
                lblmsg.Text = ad.lblmsg;
                gridbind();
            }
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                ad.Order = arg;
                ad.DeleteShift();
                lblmsg.Text = ad.lblmsg;
                gridbind();
            }
        }

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                ddlshift.SelectedValue=data[4];
                timepicker1.Text=data[1];
                timepicker2.Text=data[2];
                timepicker3.Text=data[3];
                hdn.Value=data[0];
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

        protected void txtupdate_Click(object sender, EventArgs e)
        {
            if (hdn.Value!=string.Empty && ddlshift.SelectedValue != "-1" && timepicker1.Text != string.Empty && timepicker2.Text != string.Empty && timepicker3.Text != string.Empty)
            {
                ad.StartTime = timepicker1.Text;
                ad.CloseTime = timepicker2.Text;
                ad.LateTime = timepicker3.Text;
                ad.Shift = ddlshift.SelectedValue;
                ad.Order = Convert.ToInt32(hdn.Value);
                ad.UpdateShift();
                lblmsg.Text = ad.lblmsg;
                gridbind();
                hdn.Value = "";
            }
        }
    }
}