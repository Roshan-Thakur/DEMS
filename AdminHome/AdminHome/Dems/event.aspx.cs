using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.Dems
{
    public partial class _event : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL link = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            SelectWebsite();
        }
        public void SelectWebsite()
        {
            link.SelectEvent();
            divEvents.InnerText = link.Events;
        }
    }
}