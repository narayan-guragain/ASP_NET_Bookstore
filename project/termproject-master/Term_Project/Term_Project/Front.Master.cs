using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Term_Project
{
    public partial class Front : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Switch_Navigation(object sender, EventArgs e)
        {            
                menuPanel.Attributes.Add("style","display:none");
                mainPanel.Attributes.Add("style", "display:block");    
        }

        protected void Switch_Navigation_back(object sender, EventArgs e)
        {
            menuPanel.Attributes.Add("style", "display:block");
            mainPanel.Attributes.Add("style", "display:none");
        }
    }
}