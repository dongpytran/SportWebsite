using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["gh"] != null) {
            count.Text = "!!";
        }
            if (Session["kh"] != null)
            {
                DataTable d = (DataTable)Session["kh"];
                user.Text = "[ " +d.Rows[0]["username"].ToString()+" ]";
                HyperLink1.Visible = false;
                Image1.ImageUrl = "User Avatar/" + d.Rows[0]["avatar"];
            }
            else {
                user.Text =null;
                user.Visible = false;
                HyperLink1.Visible = true;
            }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["search"] = TextBox2.Text.Trim();
        Response.Redirect("Allproducts.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["kh"] = null;
        Session["gh"] = null;
        Response.Redirect("Login.aspx");
    }
}
