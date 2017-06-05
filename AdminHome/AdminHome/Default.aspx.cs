using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminHome
{
    public partial class _Default : System.Web.UI.Page
    {
        public int Count
        {
            get 
            {
                if (ViewState["pcount"] != null)
                {
                    return ((int)ViewState["pcount"]);
                }
                else
                {
                    return 0;
                }
            }
            set 
            {
                ViewState["pcount"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
           // current.Text = Convert.ToString(DateTime.Now);
            RT.Text = Count.ToString();
            Count++;   
        }
    }
}