using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wpltheoryfinalproject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) { 
            string username = namext.Text;
            string password = passtxt.Text;

            
  
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Database1.mdf';Integrated Security=True");
                SqlCommand comm = con.CreateCommand();
                comm.CommandText = " Select * from Login where Name ='" + username + "' And Password = '" + password + "' ";
                con.Open();

                bool IsRecordFound = false;


                SqlDataReader reader = comm.ExecuteReader();

                while (reader.Read())
                {
                    IsRecordFound = true;
                Response.Redirect("Home.aspx");

            }
                con.Close();
                if (!IsRecordFound)
                {
                Response.Write("<script>alert('Member Not Found');</script>");
                }

            }
        }
        protected void signupbutton_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Signup.aspx");
           
        }
    }
    }
