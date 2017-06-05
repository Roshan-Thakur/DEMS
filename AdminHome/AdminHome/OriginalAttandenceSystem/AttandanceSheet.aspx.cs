using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class AttandanceSheet : System.Web.UI.Page
    {
        protected int rollno;
        StudentInfoBL st = new StudentInfoBL();
        AccademicManagement.AcadimicModulBL.AcademicBL ac = new AccademicManagement.AcadimicModulBL.AcademicBL();
        FormUserRegistrationModule.EmployeeregBL user = new FormUserRegistrationModule.EmployeeregBL();
        DataView dv = new DataView();
        ExaminationModules.ExaminationBL ex = new ExaminationModules.ExaminationBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EId"] != null)
            {
                if (!IsPostBack)
                {
                    degree();
                    selectid();
                    selectsub();
                    ddlteacherid.SelectedValue=Session["EId"].ToString();
                    ddlteacherid.Enabled = false;
                }
                lbldate.Text = System.DateTime.Now.ToString();
                btnsubmit.Visible = false;
            }
            else
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }

        }
        public void selectsub()
        {
            ex.selectsub();
            ddlsub.DataSource = ex.ddlsub.DataSource;
            ddlsub.DataTextField = "subject";
            ddlsub.DataBind();
            ListItem tm = new ListItem("Select", "-1");
            ddlsub.Items.Insert(0, tm);
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {

            Hashtable htb = new Hashtable();

            htb.Add("key","valuea");
            htb.Add("key", "valuea");
            htb.Add("key", "valuea");
            htb.Add("key", "valuea");
            htb.Add("key","valuea");

            
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {

        }

        protected void result_Click(object sender, EventArgs e)
        {

        }
        private void selectid()
        {
            user.selectsalaryemp();
            ddlteacherid.DataSource = user.ddl1.DataSource;
            ddlteacherid.DataTextField = "EId";
            ddlteacherid.DataBind();
            ListItem itms = new ListItem("-Select-", "-1");
            ddlteacherid.Items.Insert(0, itms);
        }
        private void degree()
        {
            AdminSettingModule.AddclassGroupListBL adm = new AdminSettingModule.AddclassGroupListBL();
            adm.fnclassshow();
            ddlclass.DataSource = adm.ar1;
            ddlclass.DataBind();
            ListItem litem = new ListItem("--Select--", "-1");
            ddlclass.Items.Insert(0, litem);
            AdminSettingModule.AddBatchYr batch = new AdminSettingModule.AddBatchYr();
            batch.grdBatchDisplay();
            ddlbatch.DataSource = batch.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem litem1 = new ListItem("--Select--", "-1");
            ddlbatch.Items.Insert(0, litem1);
        }
        private void grinbind()
        {
            gvTerritories.DataSource = dv;
            gvTerritories.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[4].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void Unnamed_Click2(object sender, EventArgs e)
        {

            if (ddlbatch.SelectedValue != "-1" && ddlshift.SelectedValue != "-1" && ddlclass.SelectedValue != "-1" && ddlsub.SelectedValue != "-1" && ddlteacherid.SelectedValue != "-1")
            {
                lblbatchshift.Text = ddlshift.SelectedValue + "," + ddlbatch.SelectedValue + "," + ddlclass.SelectedValue;
                ac.StuFetchQuery();
                dv = new DataView(ac.sourc);
                dv.RowFilter = "Batch='" + ddlbatch.SelectedItem.ToString() + "' AND Shift='" + ddlshift.SelectedItem.ToString() + "' AND Class='" + ddlclass.SelectedItem.ToString() + "'";
                if(dv.Count>0)
                {
                btnsubmit.Visible = true;
                grinbind();
                }
                else
                {
                btnsubmit.Visible = false;
                gvTerritories.DataSource = dv;
                gvTerritories.DataBind();
                }
            }
            
            
        }
        // total number of students in gridview
        protected void gvTerritories_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lbl = (Label)e.Row.FindControl("lblTotal");
                lbl.Text =gvTerritories.Rows.Count.ToString();
            }
            
        }

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            //foreach (GridViewRow gvrow in gvTerritories.Rows)
            //{
            //    CheckBox chk = (CheckBox)gvrow.FindControl("chkAttendence");
            //    if (chk != null & chk.Checked)
            //    {
            //        st.FormNo = Convert.ToInt32(gvTerritories.DataKeys[gvrow.RowIndex].Value.ToString());
            //        st.AttandanceStatus = "Present";
            //        st.AttandanceDate = System.DateTime.Now.ToString();
            //        st.AttandanceSub = "English";
            //        st.AttandanceInsert();
            //    }
            //    else 
            //    {
            //        st.FormNo = Convert.ToInt32(gvTerritories.DataKeys[gvrow.RowIndex].Value.ToString());
            //        st.AttandanceStatus = "Absent";
            //        st.AttandanceDate = System.DateTime.Now.ToString();
            //        st.AttandanceSub = "English";
            //        st.AttandanceInsert();
            //    }
            //}
            foreach (GridViewRow row in gvTerritories.Rows)
            {

                if (row.RowType == DataControlRowType.DataRow)
                {
                    bool stauts = ((CheckBox)row.FindControl("chkAttendence")).Checked;
                    if (stauts == true)
                    {
                        st.AttandanceStatus = "Present";
                    }
                    else
                    {
                        st.AttandanceStatus = "Absent";
                    }
                    rollno = Convert.ToInt32(gvTerritories.DataKeys[row.RowIndex].Value.ToString());
                    st.FormNo = rollno;
                    st.AttandanceSub = ddlsub.SelectedValue;
                    st.AttandanceDate = System.DateTime.Now.ToString();
                    st.TeacherId =Convert.ToInt32(ddlteacherid.SelectedValue);
                    st.Batch = ddlbatch.SelectedValue;
                    st.Shift = ddlshift.SelectedValue;
                    st.AttandanceInsert();
                }
            }
            grinbind();
            lblmsg.Text = st.msg;
        }

    }
}