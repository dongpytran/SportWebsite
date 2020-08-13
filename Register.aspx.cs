using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public Boolean checkusername(String username)
    {
        Boolean userstatus;
        string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String myquery = "Select * from KhachHang where username='" + TextBox9.Text.Trim()+"'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;

        cmd.Connection = cn;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            userstatus = false;
        }
        else
        {
            userstatus = true;

        }
        cn.Close();

        return userstatus;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        String strsel = "Select MaSp,TenSp,GiaBan,HinhAnh,MaLoai From SanPham where TenSp Like" + "'%" + result + "%'";
        SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
        DataSet ds = new DataSet("spsearch");
        da.Fill(ds, "spsearch");
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);*/

        Boolean useravailble;
        useravailble = checkusername(TextBox9.Text.Trim());
        if (useravailble)
        {
            if (TextBox7.Text.Trim() == TextBox8.Text.Trim())
            {
                string username = TextBox9.Text.Trim();
                string pass = TextBox7.Text.Trim();
                string firstname = TextBox1.Text.Trim();
                string lastname = TextBox2.Text.Trim();
                string birth = TextBox3.Text.Trim();
                string adress = TextBox4.Text.Trim();
                string phone = TextBox5.Text.Trim();
                string email = TextBox6.Text.Trim();
                string avatar = "user.png";
                int gender = int.Parse(DropDownList1.SelectedValue);
                string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
                SqlConnection cn = new SqlConnection(strcn);
                cn.Open();
                String insert = "Insert into KhachHang(username,pass,firstname,lastname,birth,adress,phone,email,avatar,gender)values(" + "'" + username + "'," + "'" + pass + "'," + "'" + firstname + "'," + "'" + lastname + "'," + "'" + birth + "'," + "'" + adress + "'," + "'" + phone + "'," + "'" + email + "'," + "'" + avatar + "'," + gender + ")";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = insert;
                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
                string s = "Login.aspx";
                Response.Write("<script>if(confirm(('Sign up Successfully, Log in now?'))){window.location.href='Login.aspx';}</script>");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password not match!')", true);
            }
        }
        else {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username has existed!')", true);
        }
    }
}