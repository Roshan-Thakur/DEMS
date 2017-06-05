using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.usercontrolpage
{
    public partial class empstaffcontrol : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            blood();
            dept();
            group();
            ClassName();
            religion();
        }
        private void blood()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.funshowblood();

            ddlblood.DataSource = dd.ddl.DataSource;
            ddlblood.DataBind();
            ListItem litem = new ListItem("--Select--", "0");
            ddlblood.Items.Insert(0, litem);
        }
        protected void dept()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowdept();

            ddldept.DataSource = dd.ddl.DataSource;
            ddldept.DataBind();
            ListItem litem = new ListItem("--Select--", "0");
            ddldept.Items.Insert(0, litem);
        }
        private void group()
        {
            AdminSettingModule.AddclassGroupListBL grp = new AdminSettingModule.AddclassGroupListBL();
            grp.fnselectgroup();
            ddldesig.DataSource = grp.dl.DataSource;
            ddldesig.DataTextField = grp.dl.DataTextField;
            ddldesig.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddldesig.Items.Insert(0, litem);
        }
        private void ClassName()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowClass();
            ddldegree.DataSource = dd.ddl.DataSource;
            ddldegree.DataTextField = "ClassType";
            ddldegree.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddldegree.Items.Insert(0, litem);
        }
        private void religion()
        {
            AdminSettingModule.AddclassBL dd = new AdminSettingModule.AddclassBL();
            dd.fnshowreligion();
            ddlreligion.DataSource = dd.ddl.DataSource;
            ddlreligion.DataTextField = dd.ddl.DataTextField;
            ddlreligion.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlreligion.Items.Insert(0, litem);
        }
   
    }
}