﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wpltheoryfinalproject
{
    public partial class intermediatelearning : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void istartquiz_Click(object sender, EventArgs e)
        {
            Response.Redirect("intermediatequiz.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("intermediatequiz.aspx");
        }
    }
}