using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Button2.Enabled = false;
            DataTable dt = Session["kh"] as DataTable;
            TextBox1.Text = dt.Rows[0]["firstname"].ToString();
            TextBox2.Text = dt.Rows[0]["lastname"].ToString();
            TextBox3.Text = dt.Rows[0]["birth"].ToString();
            string g = dt.Rows[0]["gender"].ToString().Trim();
            if (g == "1")
            {
                TextBox4.Text = "Male";
            }
            else
            {
                TextBox4.Text = "Female";
            }
            TextBox5.Text = dt.Rows[0]["adress"].ToString();
            TextBox6.Text = dt.Rows[0]["phone"].ToString();
            TextBox7.Text = dt.Rows[0]["email"].ToString();
            TextBox8.Text = dt.Rows[0]["username"].ToString();
            TextBox9.Text = dt.Rows[0]["pass"].ToString();
            Image1.ImageUrl = "User Avatar/" + dt.Rows[0]["avatar"].ToString();

            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
            TextBox6.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            FileUpload1.Enabled = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button2.Enabled = true;
        Button1.Enabled = false;
        TextBox1.Enabled = true;
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
        TextBox4.Enabled = true;
        TextBox5.Enabled = true;
        TextBox6.Enabled = true;
        TextBox7.Enabled = true;
        FileUpload1.Enabled = true;
    }
    protected int checkGender(String s) {
        int gender;
        if (s == "Male")
        {
            gender = 1;
        }
        else
        {
            gender = 0;
        }
        return gender;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string first = TextBox1.Text.Trim();
        string last = TextBox2.Text.Trim();
        string day = TextBox3.Text.Trim();
        int gender = checkGender(TextBox4.Text.Trim());
        string file = FileUpload1.FileName;
        FileUpload1.SaveAs(MapPath("User Avatar/" + file));
        Image1.ImageUrl = "User Avatar/" + file;
        string adress = TextBox5.Text.Trim();
        string phone = TextBox6.Text.Trim();
        string email = TextBox7.Text.Trim();
        string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        String updateq = "Update KhachHang Set firstname =" + "'" + first + "'," + "lastname=" + "'" + last + "'," + "birth=" + "'" + day + "'," + "adress=" + "'" + adress + "'," + "phone=" + "'" + phone + "'," + "email=" + "'"+ email + "'," + "gender=" + gender + "," + "avatar=" + "'" + file + "'" + "where username=" + "'" + TextBox8.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand();
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = updateq;

        int rs = cmd.ExecuteNonQuery();
        if (rs == 1) {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Profile has Updated!')", true);
        }
        String se = "Select * FROM KhachHang where username ='" + TextBox8.Text.Trim() + "'" + "AND pass='" + TextBox9.Text.Trim() + "'";
        SqlDataAdapter da = new SqlDataAdapter(se, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Session["kh"] = dt;


    }
}