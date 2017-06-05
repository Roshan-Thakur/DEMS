using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class StudentSubjectList : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selecclass();
            }
        }
        public void selecclass()
        {
            AdminSettingModule.AddclassBL cl = new AdminSettingModule.AddclassBL();
            cl.fnshowClass();
            ddlbatch.DataSource = cl.ddl.DataSource;
            ddlbatch.DataTextField = "ClassType";
            ddlbatch.DataBind();
            ListItem itm = new ListItem("--Select--", "-1");
            ddlbatch.Items.Insert(0, itm);
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            ExaminationBL ex = new ExaminationBL();
            ex.SelectMandatorySubject();
            DataView dv = new DataView(ex.sourc);
            if(dv.Count>0)
            {
                    dv.RowFilter = "class='"+ddlbatch.SelectedValue+"'";
                    lblmsg.Text = ddlbatch.SelectedValue;
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();

                    //Attribute to show the Plus Minus Button.
                    gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                    //Attribute to hide column in Phone.
                    gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "expand";
                    //Adds THEAD and TBODY to GridView.
                    gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;

            }else
            {
                gvTerritories.DataSource=dv;
                gvTerritories.DataBind();
            }
        }
    }
}