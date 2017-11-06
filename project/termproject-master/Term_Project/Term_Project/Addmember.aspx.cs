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
    public partial class Addmember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memberpage.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            using (MembershipContext db = new MembershipContext())
            {
                Member newMember = new Member();

                int MemberID = 0;
                if(Request.QueryString.Count > 0)
                {

                }

                newMember.LastName = LastNameBox.Text;
                newMember.FirstName = FirstNameBox.Text;
                newMember.MembershipDate = Convert.ToDateTime(MembershipDateBox.Text);

                if(MemberID == 0)
                {
                    db.Members.Add(newMember);
                }

                db.SaveChanges();

                Response.Redirect("~/Memberpage.aspx");

            }
        }
    }
}