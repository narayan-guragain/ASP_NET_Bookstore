using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Term_Project
{
    public partial class BookCart : System.Web.UI.Page
    {
        public List<Product1> CList = new List<Product1>();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCartTable();
            Removecartitems();
            Label1.Text = "Total Price: $" + AddPrice() + " CAD";
            HideTotalPricePanel();
        }
        double AddPrice()
        {
            double i = 0;
            foreach (var p in CList)
            {
                i = i + Convert.ToDouble(p.price);
            }
            return i;
        }

        void HideTotalPricePanel()
        {
            if (CList.Count == 0)
            {
                Panel1.Visible = false;
            }
        }

        void Removecartitems()
        {
            if (Request.QueryString.AllKeys.Contains("book_id") && Request.QueryString.AllKeys.Contains("action"))
            {
                string bId = Request.QueryString["book_id"];
                string action = Request.QueryString["action"];

                if (CList.Count() > 1)
                {
                    CList.RemoveAll(i => i.id == bId);
                    Label2.Text = CList.Count().ToString();
                }
                if (CList.Count() == 1)
                {
                    CList.Clear();
                }
            }
        }

        void LoadCartTable()
        {
            if (Session["sentToCart"] != null)
            {
                var prod = Session["sentToCart"] as List<string>;
                foreach (var p in prod)
                {
                    Convert.ToInt32(p);
                    string query = "Select * from products where id = " + p + "";

                    string CS = "Data Source=NARAYAN-PC; initial catalog=books; integrated security=True;";

                    using (SqlConnection conn = new SqlConnection(CS))
                    {
                        conn.Open();
                        SqlCommand co = new SqlCommand(query, conn);
                        SqlDataReader re = co.ExecuteReader();
                        if (re.HasRows)
                        {
                            while (re.Read())
                            {
                                CList.Add(new Product1(re["id"].ToString(), re["name"].ToString(), re["author"].ToString(), re["price"].ToString().Remove(re["price"].ToString().Length - 2), re["img"].ToString(), re["category"].ToString()));

                            }
                        }
                    }
                }
            }

        }

    }
    public class Product1
    {
        public string id { get; set; }
        public string name { get; set; }
        public string author { get; set; }
        public string price { get; set; }
        public string img { get; set; }
        public string category { get; set; }
        public Product1(string id, string name, string author, string price, string img, string category)
        {
            this.id = id;
            this.name = name;
            this.author = author;
            this.price = price;
            this.img = img;
            this.category = category;
        }
    }
}