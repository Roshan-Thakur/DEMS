using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.ExaminationModules
{
    public partial class ClassWiseSubjectSetup : System.Web.UI.Page
    {
        ExaminationBL ex = new ExaminationBL();
        DataTable chkdt = new DataTable();
        public int SubjectId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectsub();
                selecclass();
            }
            Tempgridbind();
            btnedit.Visible = false;
        }
        public void selectsub()
        {
            ex.selectsub();
            ddlsubject.DataSource = ex.ddlsub.DataSource;
            ddlsubject.DataTextField = "subject";
            ddlsubject.DataBind();
            ListItem itm = new ListItem("--Select--","-1");
            ddlsubject.Items.Insert(0,itm);

        }
        public void selecclass()
        {
            AdminSettingModule.AddclassBL cl = new AdminSettingModule.AddclassBL();
            cl.fnshowClass();
            ddlclass.DataSource = cl.ddl.DataSource;
            ddlclass.DataTextField = "ClassType";
            ddlclass.DataBind();
            ListItem itm = new ListItem("--Select--","-1");
            ddlclass.Items.Insert(0,itm);
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if(ddlclass.SelectedValue!="-1" && ddlsubject.SelectedValue!="-1" && txtcode.Text!=string.Empty && txtmarks.Text!=string.Empty)
            {
            ex.ClassSub = ddlclass.SelectedValue;
            ex.Subject = ddlsubject.SelectedValue;
            ex.Code = txtcode.Text;
            ex.Marks = txtmarks.Text;
            ex.Optional = chkoptional.Checked ? "Yes" : "No";
            ex.Manadtory = chkmandatory.Checked ? "Yes" : "No";
            ex.InsertMandatorySub();
            lblmsg.Text = ex.msg;
            Tempgridbind();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            btnsave.Visible = true;
            btnedit.Visible = false;
        }
        private void Tempgridbind()
        {
            ex.SelectMandatorySubject();
            chkdt=ex.sourc;
            if (chkdt.Rows.Count > 0)
            {
                gvTerritories.DataSource = ex.sourc;
                gvTerritories.DataBind();
                //Attribute to show the Plus Minus Button.
                gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
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
        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType==DataControlRowType.Footer)
            {
                lblinfo.Text ="Total Class Subject: "+ gvTerritories.Rows.Count.ToString();
            }
        }

        protected void btnupdate_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
            btnedit.Visible = true;
            btnsave.Visible = false;
            string arg = e.CommandArgument.ToString();
            string[] str = arg.Split(',');
            SubjectId = Convert.ToInt32(str[0]);
            hdnfield.Value = SubjectId.ToString();
            ddlclass.SelectedValue = str[1];
            ex.Code= txtcode.Text = str[2];
            ddlsubject.SelectedValue = str[3].Trim();
            string other = "Yes";
            chkoptional.Checked = str[4].Equals(other);
            chkmandatory.Checked = str[5].Equals(other);
            txtmarks.Text = str[6];
            //lblmsg.Text = Convert.ToString(SubjectId);
            }
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            if (ddlclass.SelectedValue != "-1" && ddlsubject.SelectedValue != "-1" && txtcode.Text != string.Empty && txtmarks.Text != string.Empty)
            {
            btnedit.Visible = false;
            btnsave.Visible = true;
            ex.SubjectID =Convert.ToInt32(hdnfield.Value);
            ex.ClassSub = ddlclass.SelectedValue;
            ex.Subject = ddlsubject.SelectedValue;
            ex.Code = txtcode.Text;
            ex.Optional = chkoptional.Checked ? "Yes" : "No";
            ex.Manadtory = chkmandatory.Checked ? "Yes" : "No";
            ex.Marks = txtmarks.Text;
            ex.UpdateMandatorySubject();
            lblmsg.Text = ex.msg;
            Tempgridbind();
            }

        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[5].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}