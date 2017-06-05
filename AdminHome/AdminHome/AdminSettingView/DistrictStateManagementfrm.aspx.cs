using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AdminSettingView
{
    public partial class DistrictStateManagementfrm : System.Web.UI.Page
    {
        AdminSettingModule.filterDataBL ft = new AdminSettingModule.filterDataBL();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                state();
            }
            txtmsg.Text = ddlstate.SelectedValue;
            ft.StateId = ddlstate.SelectedIndex;
            txtmsg.Text = ddlstate.SelectedIndex.ToString();
            district();
        }
        protected void state()
        {
            ft.RetrivState();
            ddlstate.DataSource = ft.ddl.DataSource;
            ddlstate.DataBind();
            ListItem litem = new ListItem("--Select State--","-1");
            ddlstate.Items.Insert(0, litem);
            
        }
        protected void district()
        {
            ft.RetrivDistrict();
            ddldistrict.DataSource = ft.ddl.DataSource;
            ddldistrict.DataBind();
            ListItem litem = new ListItem("--Select District--", "-1");
            ddldistrict.Items.Insert(0, litem);
        }
    }
}