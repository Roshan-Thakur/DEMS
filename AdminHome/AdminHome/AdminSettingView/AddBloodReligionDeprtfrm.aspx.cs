using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class AddBloodReligionDeprtfrm : System.Web.UI.Page
    {
        AdminSettingModule.AddclassBL ad = new AdminSettingModule.AddclassBL();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            showdept();
            showreli();
            showblod();
        }
        
       
        protected void btndept_Click(object sender, EventArgs e)
        {
            if(txtdpt.Text!=string.Empty)
            {
                ad.Department = txtdpt.Text;
                ad.fnAddDepartment();
                lblmsg.Text = ad.lblmsg;
                // Update grd
                ad.fnshowdept();
                txtdpt.Text = null;
            }
        }

        protected void btnreli_Click(object sender, EventArgs e)
        {
            if(txtreli.Text!=string.Empty)
            {
                ad.Religion = txtreli.Text;
                ad.fnReligionAdd();
                lblmsg.Text = ad.lblmsg;
                //Update
                ad.fnshowreligion();
                txtreli.Text = null;
            }
        }

        protected void btnbld_Click(object sender, EventArgs e)
        {
            if(txtbld.Text!=string.Empty)
            {
                ad.BloodGrp = txtbld.Text;
                ad.fnAddBloodgrp();
                lblmsg.Text = ad.lblmsg;
                //update
                ad.funshowblood();
                txtbld.Text = null;
            }
        }
        protected void showdept()
        {
            ad.fnshowdept();
            if(ad.type.Rows.Count>0)
            {
                grddept.DataSource = ad.type;
                grddept.DataBind();
                //Attribute to show the Plus Minus Button.
                grddept.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                grddept.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                grddept.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                grddept.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                grddept.DataSource = ad.type;
                grddept.DataBind();
            }
        }

        protected void grddept_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grddept.PageIndex = e.NewPageIndex;
            grddept.DataBind();

            //Attribute to show the Plus Minus Button.
            grddept.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            grddept.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            grddept.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            grddept.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        protected void showreli()
        {
            ad.fnshowreligion();
            if(ad.type.Rows.Count >0)
            {
                    grdreli.DataSource = ad.type;
                    grdreli.DataBind();
                    //Attribute to show the Plus Minus Button.
                    grdreli.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                    //Attribute to hide column in Phone.
                    grdreli.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                    grdreli.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                    //Adds THEAD and TBODY to GridView.
                    grdreli.HeaderRow.TableSection = TableRowSection.TableHeader;
            }else
            {
                grdreli.DataSource = ad.type;
                grdreli.DataBind();
            }
        }
        protected void showblod()
        {
            ad.funshowblood();
            if (ad.type.Rows.Count > 0)
            {
                grdblod.DataSource = ad.type;
                grdblod.DataBind();
                //Attribute to show the Plus Minus Button.
                grdblod.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                grdblod.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                grdblod.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                grdblod.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                grdblod.DataSource = ad.type;
                grdblod.DataBind();
            }
        }

        protected void grdreli_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdreli.PageIndex = e.NewPageIndex;
            grdreli.DataBind();
            //Attribute to show the Plus Minus Button.
            grdreli.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            grdreli.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            grdreli.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            grdreli.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void grdblod_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdblod.PageIndex = e.NewPageIndex;
            grdblod.DataBind();
            //Attribute to show the Plus Minus Button.
            grdblod.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            grdblod.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            grdblod.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            grdblod.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnlbtnedit_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                txtdpt.Text=data[1];
                hdn.Value=data[0];
            }
        }

        protected void lnkbtnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                ad.Order = arg;
                ad.DeleteDept();
                lblmsg.Text = ad.lblmsg;
                showdept();
            }
        }

        protected void btnupdatedept_Click(object sender, EventArgs e)
        {
            if(txtdpt.Text!=string.Empty && hdn.Value!=string.Empty)
            {
                    ad.Order=Convert.ToInt32(hdn.Value);
                    ad.Department=txtdpt.Text;
                    ad.UpdateDept();
                    lblmsg.Text=ad.lblmsg;
                    showdept();
                    hdn.Value="";
            }
        }

        protected void lnkbtnupdate_Command1(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                ad.Order = arg;
                ad.Deletereligion();
                lblmsg.Text = ad.lblmsg;
                showreli();
            }
        }

        protected void lnlbtnedit_Command1(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                txtreli.Text = data[1];
                hdn.Value = data[0];
            }
        }

        protected void btnreliupdate_Click(object sender, EventArgs e)
        {
            if (txtreli.Text != string.Empty && hdn.Value!=string.Empty)
            {
                ad.Order =Convert.ToInt32( hdn.Value);
                ad.Religion = txtreli.Text;
                ad.UpdateReligion();
                lblmsg.Text = ad.lblmsg;
                // Update grd
                showreli();
                txtreli.Text = null;
                hdn.Value = "";
            }
        }

        protected void lnkbtnupdate_Command2(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int arg = Convert.ToInt32(e.CommandArgument.ToString());
                ad.Order = arg;
                ad.DeleteBllod();
                lblmsg.Text = ad.lblmsg;
                showblod();
            }
        }

        protected void lnlbtnedit_Command2(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] data = arg.Split(',');
                txtbld.Text = data[1];
                hdn.Value = data[0];
            }
        }

        protected void btnbldupdate_Click(object sender, EventArgs e)
        {
            if (txtbld.Text!= string.Empty && hdn.Value != string.Empty)
            {
                ad.Order = Convert.ToInt32(hdn.Value);
                ad.BloodGrp = txtbld.Text;
                ad.UpdateBlood();
                lblmsg.Text = ad.lblmsg;
              // Update grd
                showblod();
                hdn.Value = "";
            }
        }


        
    }
}