using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Term_Project.Models;
using System.Web.ModelBinding;

namespace Term_Project
{
    public partial class Memberpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                this.GetMembers();
            }
        }
        
        private void GetMembers()
        {
            using (MembershipContext db = new MembershipContext())
            {
                try
                {
                    var Members = (from allMembers in db.Members select allMembers);
                    MemberGridView.DataSource = Members.ToList();
                    MemberGridView.DataBind(); 
                }  
                catch
                {

                }           
                                   
            }
        }

        protected void AddMember_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addmember.aspx");
        }
    }
}