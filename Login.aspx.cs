using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["gh"] != null) {
            Label1.Text = " You need to Log in first!";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String st = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(st);
        String se = "Select * FROM KhachHang where username ='" + TextBox1.Text + "'" + "AND pass='" + TextBox2.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(se, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count == 1)
        {
            Session["kh"] = dt;
            if (dt.Rows[0]["username"].ToString().Trim() == "admin")
            {
                Response.Redirect("adminPanel.aspx");

            }
            else
            {
                if (Session["gh"] != null)
                {
                    Response.Redirect("ShopCartInfo.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }
        else
        {
            Label1.Text = "Username or Password is not correct!";
        }

    }
}