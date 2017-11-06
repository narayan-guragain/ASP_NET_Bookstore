using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Term_Project
{


    public partial class Narayan : System.Web.UI.Page
    {
        public List<Product> productList = new List<Product>();

        static List<string> sentToCart = new List<string>();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProduct(showall);
                Label1.Text = "Books";
            }

            if (Request.QueryString.AllKeys.Contains("pro_id") && Request.QueryString.AllKeys.Contains("action"))
            {
                string proId = Request.QueryString["pro_id"];
                string action = Request.QueryString["action"];

                // Label3.Text = proId;
                if (action.Equals("add"))
                {
                    LoadCart(proId);

                    Label2.Text = "";
                    Label2.ForeColor = System.Drawing.Color.White;
                    Label2.Text = sentToCart.Count().ToString();

                    Session["sentToCart"] = sentToCart;
                }
            }
        }

        //search query for category
        string showall = "Select * from products";
        string programmingonly = "Select * from products where category = 'programming'";
        string databaseonly = "Select * from products where category = 'database'";
        string webonly = "Select * from products where category = 'web'";
        string literatureonly = "Select * from products where category = 'literature'";
        
        void LoadProduct(string query)
        {
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
                        productList.Add(new Product(re["id"].ToString(), re["name"].ToString(), re["author"].ToString(), re["price"].ToString().Remove(re["price"].ToString().Length - 2), re["img"].ToString(), re["category"].ToString()));
                    }
                }
            }
        }
        
        void LoadCart(string pid)
        {
            var products = productList.Where(x => x.id == pid);
            foreach (var item in products)
            {
               sentToCart.Add(item.id);
            }
        }

        protected void SearchButton1_Click(object sender, EventArgs e)
        {
            if (sTextBox.Text != null)
            {
                string text = sTextBox.Text;
                string searchkey = "select * FROM products WHERE category LIKE" +
                                                        " '%" + text + "%' OR author LIKE " +
                                                        "'%" + text + "%' OR name LIKE " +
                                                        "'%" + text + "%' OR price LIKE " +
                                                        "'%" + text + "%';";
                Label1.Text = "Results for" + " : " + text;
                productList.Clear();
                LoadProduct(searchkey);
                sTextBox.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label1.Text = "All Category Books";
            productList.Clear();
            LoadProduct(showall);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            Label1.Text = "Programming Books";
            productList.Clear();
            LoadProduct(programmingonly);
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

            Label1.Text = "Database Books";
            productList.Clear();
            LoadProduct(databaseonly);

        }
        protected void Button4_Click(object sender, EventArgs e)
        {

            Label1.Text = "Web Development Books";
            productList.Clear();
            LoadProduct(webonly);
        }
        protected void Button5_Click(object sender, EventArgs e)
        {

            Label1.Text = "Literature Books";
            productList.Clear();
            LoadProduct(literatureonly);
        }

        public class Product
        {
            public string id { get; set; }
            public string name { get; set; }
            public string author { get; set; }
            public string price { get; set; }
            public string img { get; set; }
            public string category { get; set; }
            public Product(string id, string name, string author, string price, string img, string category)
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

}