using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome.WebsiteControl
{
    public partial class WebsiteMaintanance : System.Web.UI.Page
    {
        FormUserRegistrationModule.EmployeeregBL link = new FormUserRegistrationModule.EmployeeregBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            SelectWebsite();
        }
        public void SelectWebsite()
        {
            link.SelectSocilaLink();
            txtemail.Value = link.Email;
            txtfb.Value = link.Facebook;
            txttwet.Value = link.Tweeter;
            link.SelectEvent();
            txtevent.InnerText = link.Events;
            link.SelectNews();
            txtNews.InnerText = link.News;
        }
        protected void btnevent_Click(object sender, EventArgs e)
        {
            if (txtevent.InnerText!=string.Empty)
            {
                link.Events = txtevent.InnerText;
                link.UpdateEvent();
                lblmsg.Text = link.msg;
            }
        }

        protected void btnnews_Click(object sender, EventArgs e)
        {
            if(txtNews.InnerText!=string.Empty)
            {
                link.News = txtNews.InnerText;
                link.UpdateNews();
                lblmsg.Text = link.msg;
            }
        }

        protected void btnsocial_Click(object sender, EventArgs e)
        {
            if(txtfb.Value!=string.Empty && txtemail.Value!=string.Empty && txttwet.Value!=string.Empty)
            {
                link.Facebook = txtfb.Value;
                link.Tweeter = txttwet.Value;
                link.Email = txtemail.Value;
                link.UpdateSocialLink();
                lblmsg.Text = link.msg;
            }
        }
    }
}