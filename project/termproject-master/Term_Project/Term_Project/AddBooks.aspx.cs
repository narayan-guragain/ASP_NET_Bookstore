using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Term_Project
{
    public partial class AddBooks : System.Web.UI.Page
    {
        protected void add_btn_Click(object sender, EventArgs e)
        {
            if (InsertToDb())
            {
                Label1.Text = "Products added to database";
            }
            else
            {
                Label1.Text = "Please try again!";
            }
            Reset();
        }
        void Reset()
        {
            idbox.Text = "";
            namebox.Text = "";
            authorbox.Text = "";
            pricebox.Text = "";
            imgbox.Text = "";
            catbox.Text = "";
        }
        protected void delete_btn_Click(object sender, EventArgs e)
        {
            if (DeleteFromDb())
            {
                Label2.Text = "Products deleted from database";
            }
            else
            {
                Label2.Text = "Please try again!";
            }
            ResetDelete();
        }

        void ResetDelete()
        {
            idboxd.Text = "";
        }

        bool InsertToDb()
        {
            string query = "insert into products(id, name, author, price, img, category) values(" + Convert.ToInt32(idbox.Text) + ", '" + namebox.Text + "', '" + authorbox.Text + "', " + Convert.ToDouble(pricebox.Text) + ", '" + imgbox.Text + "', '" + catbox.Text + "');";

            string CS = "Data Source=NARAYAN-PC; initial catalog=books; integrated security=True;";

            using (SqlConnection conn = new SqlConnection(CS))
            {
                conn.Open();
                SqlCommand co = new SqlCommand(query, conn);
                co.ExecuteNonQuery();
                return true;
            }
        }

        bool DeleteFromDb()
        {
            string query = "delete from products where id = " + Convert.ToInt32(idboxd.Text) + ";";
            //string query = "insert into products(id, name, author, price, img, category) values(" + Convert.ToInt32(idbox.Text) + ", '" + namebox.Text + "', '" + authorbox.Text + "', " + Convert.ToDouble(pricebox.Text) + ", '" + imgbox.Text + "', '" + catbox.Text + "');";

            string CS = "Data Source=NARAYAN-PC; initial catalog=books; integrated security=True;";

            using (SqlConnection conn = new SqlConnection(CS))
            {
                conn.Open();
                SqlCommand co = new SqlCommand(query, conn);
                co.ExecuteNonQuery();
                return true;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}