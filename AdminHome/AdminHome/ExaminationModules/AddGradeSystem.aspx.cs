using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class AddGradeSystem : System.Web.UI.Page
    {
        ExaminationBL ex = new ExaminationBL();
        DataTable chkdt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
            btnupdate.Visible = false;
        }
        public void gridbind()
        {
            ex.SelectGrading();
            chkdt = ex.sourc;
            if (chkdt.Rows.Count > 0)
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
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
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void lnkupdate_Command(object sender, CommandEventArgs e)
        {
            btnupdate.Visible = true;
            btnsubmit.Visible = false;
            if (e.CommandName == "ViewDetails")
            {
                string arg = e.CommandArgument.ToString();
                string[] str = arg.Split(',');
                hdn.Value=str[0];
                txtgrade.Text=str[1];
                txtmarkmin.Text=str[2];
                txtmarkmax.Text=str[3];
                txtpointmax.Text=str[5];
                txtpointmin.Text=str[4];
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if(txtgrade.Text!=string.Empty && txtmarkmax.Text!=string.Empty && txtmarkmin.Text!=string.Empty && txtpointmax.Text!=string.Empty && txtpointmin.Text!=string.Empty)
            {
                ex.Grade = txtgrade.Text;
                ex.MakrMax = float.Parse(txtmarkmax.Text);
                ex.MakrMin = float.Parse(txtmarkmin.Text);
                ex.PointMax = float.Parse(txtpointmax.Text);
                ex.PointMin = float.Parse(txtpointmin.Text);
                ex.AddGrade();
                lblinfo.Text = ex.msg;
                txtpointmin.Text = "";
                txtpointmax.Text = "";
                txtmarkmin.Text = "";
                txtmarkmax.Text = "";
                txtgrade.Text = "";
                gridbind();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            btnsubmit.Visible = true;
            btnupdate.Visible = false;
            if (txtgrade.Text != string.Empty && txtmarkmax.Text != string.Empty && txtmarkmin.Text != string.Empty && txtpointmax.Text != string.Empty && txtpointmin.Text != string.Empty)
            {
                ex.GradID = Convert.ToInt32(hdn.Value);
                ex.Grade = txtgrade.Text;
                ex.MakrMax = float.Parse(txtmarkmax.Text);
                ex.MakrMin = float.Parse(txtmarkmin.Text);
                ex.PointMax = float.Parse(txtpointmax.Text);
                ex.PointMin = float.Parse(txtpointmin.Text);
                ex.UpdateGrad();
                lblinfo.Text = ex.msg;
                txtpointmin.Text = "";
                txtpointmax.Text = "";
                txtmarkmin.Text = "";
                txtmarkmax.Text = "";
                txtgrade.Text = "";
                gridbind();
            }
        }
    }
}