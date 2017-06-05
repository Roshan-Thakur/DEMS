using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.AttendenceSystem.FeeMgt
{
    public partial class FeeParticular : System.Web.UI.Page
    {
        FinanceBL.FinanceModuleBL fn = new FinanceBL.FinanceModuleBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Batchname();
            FeeCategory();
            Particular();
        }
        private void Batchname()
        {
            AdminSettingModule.AddBatchYr batch = new AdminSettingModule.AddBatchYr();
            batch.grdBatchDisplay();
            ddlbatch.DataSource = batch.ddlbatch.Items;
            ddlbatch.DataBind();
            ddlfilerbatch.DataSource = batch.ddlbatch.Items;
            ddlfilerbatch.DataBind();
        }
        private void FeeCategory()
        {
            fn.selectFeeCate();
            ddlfcat.DataSource = fn.sourc;
            ddlfcat.DataTextField = "feecategory";
            ddlfcat.DataBind();
            ddlfg1.DataSource = fn.sourc;
            ddlfg1.DataTextField = "feecategory";
            ddlfg1.DataBind();
        }
        private void Particular()
        { 
        }
    }
}