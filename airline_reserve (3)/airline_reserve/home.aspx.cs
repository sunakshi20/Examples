using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Date.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}