using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace AdminHome.AccademicManagement
{
    public partial class StudentReport : System.Web.UI.Page
    {
        AcadimicModulBL.AcademicBL ac = new AcadimicModulBL.AcademicBL();
        DataView dv = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                selectrollno();
            }
            selectstudentcontactlist();
            selectstudentgurdianlist();
        }
        public void selectrollno()
        {
            ac.selectrollst();
            ddladmidroll.DataSource = ac.ddl.DataSource;
            ddlgroll.DataSource = ac.ddl.DataSource;
            ddlroll.DataSource = ac.ddl.DataSource;
            ddladmidroll.DataTextField = "FormNo";
            ddlgroll.DataTextField = "FormNo";
            ddlroll.DataTextField = "FormNo";
            ddladmidroll.DataBind();
            ddlgroll.DataBind();
            ddlroll.DataBind();
            System.Web.UI.WebControls.ListItem tm = new System.Web.UI.WebControls.ListItem("Select", "-1");
            ddladmidroll.Items.Insert(0, tm);
            ddlgroll.Items.Insert(0,tm);
            ddlroll.Items.Insert(0, tm);
        }

        public void selectstudentcontactlist()
        {
            ac.StuFetchQuery();
            dv = new DataView(ac.sourc);
            if (dv.Count > 0)
            {
                gvTerritories1.DataSource = dv;
                gvTerritories1.DataBind();

                //Attribute to show the Plus Minus Button.
                gvTerritories1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                gvTerritories1.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
                gvTerritories1.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                gvTerritories1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                gvTerritories1.DataSource = dv;
                gvTerritories1.DataBind();
            }

        }

        public void selectstudentgurdianlist()
        {
            ac.StuFetchQuery();
            dv = new DataView(ac.sourc);
            if (dv.Count > 0)
            {
                GridView1.DataSource = dv;
                GridView1.DataBind();

                //Attribute to show the Plus Minus Button.
                GridView1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

                //Attribute to hide column in Phone.
                GridView1.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
                //Adds THEAD and TBODY to GridView.
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                GridView1.DataSource = dv;
                GridView1.DataBind();
            }
        }
        public void PerentsInformation()
        {
            lblstnameP.InnerText = ac.StName;
            lblfname.InnerText = ac.Fname;
            lblmname.InnerText = ac.Mname;
            lblfcontact.InnerText = ac.FMobile;
            lblmcontact.InnerText = ac.MMobile;
            lblfoccupation.InnerText = ac.Foccupation;
            lblmoccupation.InnerText = ac.Moccupation;
            lblfemail.InnerText = ac.FEmail;
            lblmemail.InnerText = ac.MEmail;
            lbladdress.InnerText = ac.PrAddress+","+ac.Prdistrict;
        }
        public void gurdianinformation()
        {
            lblstname.InnerText = ac.StName;
            lblemail.InnerText = ac.MEmail;
            lblname.InnerText = ac.GName;
            lblcontact.InnerText = ac.GMobile;
            lblrelation.InnerText = ac.GRelation;
        }
        public void Admidcard()
        {
            lblcardstname.InnerText = ac.StName;
            lblcardaddress.InnerText = ac.PrAddress + "," + ac.Prdistrict;
            lblcardbatch.InnerText = ac.Batch;
            lblcardfname.InnerText = ac.Fname;
            lblcardphone.InnerText = ac.FMobile;
            lblcardroll.InnerText = ac.FormNo.ToString();
            lblcardstemail.InnerText =ac.FEmail;
        }

        protected void gvTerritories1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTerritories1.PageIndex = e.NewPageIndex;
            gvTerritories1.DataBind();

            //Attribute to show the Plus Minus Button.
            gvTerritories1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            gvTerritories1.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
            gvTerritories1.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            gvTerritories1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            //Attribute to show the Plus Minus Button.
            GridView1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

            //Attribute to hide column in Phone.
            GridView1.HeaderRow.Cells[1].Attributes["data-hide"] = "expand";
            GridView1.HeaderRow.Cells[2].Attributes["data-hide"] = "expand";
            //Adds THEAD and TBODY to GridView.
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void btngsearch_Click(object sender, EventArgs e)
        {
            if(ddlgroll.SelectedValue!="-1")
            {
            ac.FormNo =Convert.ToInt32(ddlgroll.SelectedValue);
            ac.selectstudentInfo();
            gurdianinformation();
            }
        }

        protected void btnseaech_Click(object sender, EventArgs e)
        {
            if (ddlroll.SelectedValue != "-1")
            {
                ac.FormNo = Convert.ToInt32(ddlroll.SelectedValue);
                ac.selectstudentInfo();
                PerentsInformation();
            }
        }

        protected void btnadmid_Click(object sender, EventArgs e)
        {
            if (ddladmidroll.SelectedValue != "-1")
            {
                ac.FormNo = Convert.ToInt32(ddladmidroll.SelectedValue);
                ac.selectstudentInfo();
                Admidcard();
            }
        }
    }
}