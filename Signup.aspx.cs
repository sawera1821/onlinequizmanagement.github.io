using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wpltheoryfinalproject
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupbutton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) { 
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Database1.mdf';Integrated Security=True";

            SqlCommand comd3 = new SqlCommand();
            comd3.CommandText = "insert into Signup values('" + namext.Text + "','" + passtxt.Text + "','" + fnametxt.Text + "','" + dobtxt.Text + "','" + edutxt.Text + "')";

            comd3.Connection = conn;

            conn.Open();
            comd3.ExecuteNonQuery();
            Response.Write("<script>alert('Data Succesfully Inserted');</script>");
                SqlCommand comd4 = new SqlCommand();
                comd4.CommandText = "insert into Login values('" + namext.Text + "','" + passtxt.Text +"')";

                comd4.Connection = conn;
                comd4.ExecuteNonQuery();
                conn.Close();


            }
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
    }
