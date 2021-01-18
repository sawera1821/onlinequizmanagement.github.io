using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wpltheoryfinalproject
{
    public partial class reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Database1.mdf';Integrated Security=True";

                SqlCommand comd3 = new SqlCommand();
                comd3.CommandText = "insert into reviews values('" + namext.Text + "','" + edutxt.Text + "','" + Agetxt.Text + "','" + thoughtstxt.Text + "')";

                comd3.Connection = conn;

                conn.Open();
                comd3.ExecuteNonQuery();
                Response.Write("<script>alert('Thankyou For Sharing Your View With Us !!!');</script>");
                Response.Redirect("Home.aspx");
            }
        }
    }
}