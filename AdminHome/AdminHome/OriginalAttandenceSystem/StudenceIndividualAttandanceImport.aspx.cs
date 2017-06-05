using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdminHome.OriginalAttandenceSystem
{
    public partial class StudenceIndividualAttandanceImport : System.Web.UI.Page
    {
        StudentInfoBL st = new StudentInfoBL();
        ExaminationModules.ExaminationBL ex = new ExaminationModules.ExaminationBL();
        DataView dv = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                batchname();
                selectsub();
            }
        }
        public void selectsub()
        {
            ex.selectsub();
            ddlsubject.DataSource = ex.ddlsub.DataSource;
            ddlsubject.DataTextField = "subject";
            ddlsubject.DataBind();
            ListItem tm = new ListItem("Select", "-1");
            ddlsubject.Items.Insert(0, tm);
        }
        private void batchname()
        {
            AdminSettingModule.AddBatchYr batch = new AdminSettingModule.AddBatchYr();
            batch.grdBatchDisplay();
            ddlbatch.DataSource = batch.ddlbatch.Items;
            ddlbatch.DataBind();
            ListItem litem1 = new ListItem("Select Batch", "-1");
            ddlbatch.Items.Insert(0, litem1);
        }
        public void StudentAttandance()
        {
           if(ddlbatch.SelectedValue!="-1" && txtroll.Value!=string.Empty)
           {
            int s=Convert.ToInt32(txtroll.Value);
            st.SelectStuAttandance();
            dv = new DataView(st.sourc);
            dv.RowFilter = "FKSTFormNo='" + s + "' AND batch='"+ddlbatch.SelectedValue+"' ";
               if(dv.Count>0)
               {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();
                    //Attribute to show the Plus Minus Button.
                    gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

                    //Attribute to hide column in Phone.
                    gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
                    gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
                    //Adds THEAD and TBODY to GridView.
                    gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
               }else
               {
                    gvTerritories.DataSource = dv;
                    gvTerritories.DataBind();
               }
           }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if(ddlbatch.SelectedValue!="-1" && ddlsubject.SelectedValue!="-1" && ddlshift.SelectedValue!="-1"&& txtroll.Value!=string.Empty )
            {
                st.Batch = ddlbatch.SelectedValue;
                st.AttandanceDate = System.DateTime.Now.ToShortDateString();
                st.Shift = ddlshift.SelectedValue;
                st.AttandanceSub = ddlsubject.SelectedValue;
                st.AttandanceStatus = "Present";
                st.FormNo =Convert.ToInt32( txtroll.Value);
                st.TeacherId = 01000;
                st.AttandanceInsert();
                lblmsg.InnerText = st.msg;
                StudentAttandance();
            }
        }

        protected void gvTerritories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories.PageIndex = e.NewPageIndex;
            gvTerritories.DataBind();
            //Attribute to show the Plus Minus Button.
            gvTerritories.HeaderRow.Cells[1].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[0].Attributes["data-hide"] = "phone";
            gvTerritories.HeaderRow.Cells[3].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        
    }
}