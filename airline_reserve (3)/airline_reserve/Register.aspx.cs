using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignIn.aspx");
    }

    protected void SignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void Search_flight_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchFlight.aspx");
    }

    protected void Contact_Us_Click(object sender, EventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }

}