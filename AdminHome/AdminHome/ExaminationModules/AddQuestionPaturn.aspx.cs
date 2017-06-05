using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace AdminHome.ExaminationModules
{
    public partial class AddQuestionPaturn : System.Web.UI.Page
    {
        ExaminationBL ex=new ExaminationBL();
        DataTable chkdt=new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
            btnupdate.Visible = false;
        }
        public void gridbind()
        {
            ex.SelectQuestionPaturn();
            chkdt = ex.sourc;
            if (chkdt.Rows.Count > 0)
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();
            }
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            btnsubmit.Visible = true;
            btnupdate.Visible = false;
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnlupdate_Command(object sender, CommandEventArgs e)
        {
            btnupdate.Visible = true;
            btnsubmit.Visible = false;
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] str = arg.Split(',');
                txtpattern.Text=str[1];
                hdn.Value=str[0];
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if(txtpattern.Text!=string.Empty)
            {
            ex.ExamPaturn = txtpattern.Text;
            ex.AddQuestioPaturn();
            lblinfo.Text = ex.msg;
            gridbind();
            txtpattern.Text = "";
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            btnsubmit.Visible = true;
            btnupdate.Visible = false;
            if(txtpattern.Text!=string.Empty)
            {
                ex.ExamPaturn = txtpattern.Text;
                ex.PaturnID =Convert.ToInt32( hdn.Value);
                ex.UpdateQuestionPaturn();
                lblinfo.Text = ex.msg;
                txtpattern.Text = "";
                gridbind();
            }
        }

    }
}