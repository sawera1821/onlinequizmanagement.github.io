using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wpltheoryfinalproject
{
    public partial class Intermediatequiz : System.Web.UI.Page
    {

        static int hh, mm, ss;
        static double TimeAllSecondes =300;
        DataSet ds = new DataSet();
       
     
        int score = 0;

        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            submit.Enabled = false;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Questions.mdf';Integrated Security=True";
            //Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\tcp\source\repos\Wpltheoryfinalproject\App_Data\Questions.mdf; Integrated Security = True
            conn.Open();
            if (!IsPostBack)
            {
                ViewState["i"] = 0;
                SqlDataAdapter da = new SqlDataAdapter("select * from Intermediate", conn);
                DataSet ds = new DataSet();
                da.Fill(ds, "Intermediate");
                quesno.Text = ds.Tables[0].Rows[0]["quesno"].ToString();
                ques.Text = ds.Tables[0].Rows[0]["question"].ToString();
                ans1.Text = ds.Tables[0].Rows[0]["option1"].ToString();
                ans2.Text = ds.Tables[0].Rows[0]["option2"].ToString();
                ans3.Text = ds.Tables[0].Rows[0]["option3"].ToString();

            }

            conn.Close();
        }
        protected void next_click(object sender, EventArgs e)
        {
            ans1.Checked = false;
            ans2.Checked = false;
            ans3.Checked = false;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Questions.mdf';Integrated Security=True";
            conn.Open();
            i = Convert.ToInt32(ViewState["i"]) + 1;
            SqlDataAdapter da = new SqlDataAdapter("select * from Intermediate", conn);
            da.Fill(ds, "Intermediate");
            ViewState["i"] = (int)ViewState["i"] + 1;
            if (ds != null && (int)ViewState["i"] < ds.Tables[0].Rows.Count)
            {
                ds.Tables[0].Rows[i]["correctans"] = "";
                quesno.Text = ds.Tables[0].Rows[i]["quesno"].ToString();
                ques.Text = ds.Tables[0].Rows[i]["question"].ToString();
                ans1.Text = ds.Tables[0].Rows[i]["option1"].ToString();
                ans2.Text = ds.Tables[0].Rows[i]["option2"].ToString();
                ans3.Text = ds.Tables[0].Rows[i]["option3"].ToString();
            }
            else
            {
                //Timer1.Enabled = false;
                Response.Write("<script>alert('Time Is Over Head To Submit Button ');</script>");
                next.Enabled = false;
                submit.Enabled = true;
                checkans.Enabled = true;
            }
            conn.Close();
        }

     
        // protected void Timer1_Tick(object sender, EventArgs e)
        //{

        //    if (TimeAllSecondes > 0)
        //    {
        //        TimeAllSecondes = TimeAllSecondes - 1;
        //    }

        //    TimeSpan time_Span = TimeSpan.FromSeconds(TimeAllSecondes);
        //    hh = time_Span.Hours;
        //    mm = time_Span.Minutes;
        //    ss = time_Span.Seconds;

        //    timelabel.Text = "  " + hh + ":" + mm + ":" + ss;
        //    if (TimeAllSecondes <= 0)
        //    {
        //        Timer1.Enabled = false;
        //        //Response.Write("<script>alert('Time Is Over Head To Submit Button ');</script>");
        //        next.Enabled = false;
        //        submit.Enabled = true;
        //    }


        //}

        protected void ans1_CheckedChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Questions.mdf';Integrated Security=True";
            conn.Open();
            SqlCommand comd = new SqlCommand();
            comd.CommandText = "update Intermediate set ans=@ans where quesno=@quesno";
            comd.Connection = conn;
            comd.Parameters.Add(new SqlParameter("@ans", ans1.Text));
            comd.Parameters.Add(new SqlParameter("@quesno", quesno.Text));

            comd.ExecuteNonQuery();
          
            conn.Close();
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Questions.mdf';Integrated Security=True";
            conn.Open();
            SqlCommand comd = new SqlCommand();
            comd.CommandText = "select * from Intermediate";
            comd.Connection = conn;
            DataTable dt = new DataTable();
            dt.Load(comd.ExecuteReader());

            string cans1 = Convert.ToString(dt.Rows[0]["correctans"]);
            string cans2 = Convert.ToString(dt.Rows[1]["correctans"]);
            string cans3 = Convert.ToString(dt.Rows[2]["correctans"]);
            string cans4 = Convert.ToString(dt.Rows[3]["correctans"]);
            string cans5 = Convert.ToString(dt.Rows[4]["correctans"]);
            string cans6 = Convert.ToString(dt.Rows[5]["correctans"]);
            string cans7 = Convert.ToString(dt.Rows[6]["correctans"]);
            string cans8 = Convert.ToString(dt.Rows[7]["correctans"]);
            string cans9 = Convert.ToString(dt.Rows[8]["correctans"]);
            string cans10 = Convert.ToString(dt.Rows[9]["correctans"]);


            string ans1 = Convert.ToString(dt.Rows[0]["ans"]);
            string ans2 = Convert.ToString(dt.Rows[1]["ans"]);
            string ans3 = Convert.ToString(dt.Rows[2]["ans"]);
            string ans4 = Convert.ToString(dt.Rows[3]["ans"]);
            string ans5 = Convert.ToString(dt.Rows[4]["ans"]);
            string ans6 = Convert.ToString(dt.Rows[5]["ans"]);
            string ans7 = Convert.ToString(dt.Rows[6]["ans"]);
            string ans8 = Convert.ToString(dt.Rows[7]["ans"]);
            string ans9 = Convert.ToString(dt.Rows[8]["ans"]);
            string ans10 = Convert.ToString(dt.Rows[9]["ans"]);

            string[] useranswers = { ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10, };
            string[] correctanswers = { cans1, cans2, cans3, cans4, cans5, cans6, cans7, cans8, cans9, cans10, };

            for (int i = 0; i < correctanswers.Length; i++)
            {
                if (correctanswers[i] == useranswers[i])
                {
                    score += 1;
                }


            }
            Label1.Text = "Your Score Is:";
            scoree.Text = score.ToString();
        }

        protected void checkans_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Questions.mdf';Integrated Security=True";
            conn.Open();
            //SqlCommand comd = new SqlCommand();
            //comd.CommandText = "select * from Advance";
            //comd.Connection = conn;
            SqlDataAdapter Adp = new SqlDataAdapter("select * from Intermediate", conn);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            grid1.DataSource = Dt;
            grid1.DataBind();
            //return Dt;
        }

        protected void grid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void back_Click(object sender, EventArgs e)
        {

            Response.Redirect("Home.aspx");
        }

        protected void ans2_CheckedChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Questions.mdf';Integrated Security=True";
            conn.Open();
            SqlCommand comd = new SqlCommand();
            comd.CommandText = "update Intermediate set ans=@ans where quesno=@quesno";
            comd.Connection = conn;
            comd.Parameters.Add(new SqlParameter("@ans", ans2.Text));
            comd.Parameters.Add(new SqlParameter("@quesno", quesno.Text));

            comd.ExecuteNonQuery();
            conn.Close();
         
        }

        protected void ans3_CheckedChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\Questions.mdf';Integrated Security=True";
            conn.Open();
            SqlCommand comd = new SqlCommand();
            comd.CommandText = "update Intermediate set ans=@ans where quesno=@quesno";
            comd.Connection = conn;
            comd.Parameters.Add(new SqlParameter("@ans", ans3.Text));
            comd.Parameters.Add(new SqlParameter("@quesno", quesno.Text));
            comd.ExecuteNonQuery();
            conn.Close();
        }
    }
}

