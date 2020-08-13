using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        if (!IsPostBack)
        {
            string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);

            String strsel = "Select MaLoai,TenLoai From LoaiSp";
            String max = "Select Max(MaSp) From SanPham";
            String max2 = "Select Max(MaLoai) From LoaiSp";
            SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
            DataSet ds = new DataSet("spsearch");
            da.Fill(ds, "spsearch");
            DropDownList1.DataSource = ds.Tables["spsearch"];
            DropDownList1.DataBind();
            DropDownList2.SelectedIndex = 1;
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = max;
            int maxx = Convert.ToInt32(cmd.ExecuteScalar());
            Label1.Text = maxx.ToString();
            TextBox1.Text = Convert.ToString(maxx + 1);
            TextBox1.Enabled = false;
            cn.Close();
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = max2;
            int maxx2 = Convert.ToInt32(cmd.ExecuteScalar());
            Label2.Text = maxx2.ToString();
            TextBox7.Text = Convert.ToString(maxx2 + 1);
            TextBox7.Enabled = false;
        }else{
            string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            String max = "Select Max(MaSp) From SanPham";
            String max2 = "Select Max(MaLoai) From LoaiSp";
            SqlCommand cmd = new SqlCommand();
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = max;
            int maxx = Convert.ToInt32(cmd.ExecuteScalar());
            Label1.Text = maxx.ToString();
            TextBox1.Text = Convert.ToString(maxx + 1);
            TextBox1.Enabled = false;

            cmd.CommandText = max2;
            int maxx2 = Convert.ToInt32(cmd.ExecuteScalar());
            Label2.Text = maxx2.ToString();
            TextBox7.Text = Convert.ToString(maxx2 + 1);
            TextBox7.Enabled = false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        string day = DateTime.Now.ToShortDateString();
        int msp = int.Parse(TextBox1.Text.Trim());
        string tensp = TextBox2.Text.Trim();
        string mota = TextBox3.Text.Trim();
        int gia = Convert.ToInt32(TextBox4.Text.Trim());
        string anh = TextBox5.Text.Trim();
        int maloai = Convert.ToInt32(DropDownList1.SelectedValue);
        int isnew = Convert.ToInt32(DropDownList2.SelectedValue.ToString().Trim());
        int sl = Convert.ToInt32(TextBox6.Text.Trim());
        String ins = "Insert into SanPham(MaSp,TenSp,MoTa,NgayThem,GiaBan,HinhAnh,MaLoai,new,sl) values(" + "'" + msp +"'," + "'" + tensp + "'," + "'" +mota + "'," + "'" + day + "', " + gia + "," + "'" + anh + "'," + maloai + "," + isnew + "," + sl +")";
        SqlCommand da = new SqlCommand();
        da.Connection = cn;
        da.CommandText = ins;
        int rs = da.ExecuteNonQuery();
        if (rs == 1)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Add Product to DB Success!')", true);
        }
        else {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Something wrong! Maybe Product Code You typed already has in DB!')", true);
        }
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
            string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            cn.Open();
            int maloai = int.Parse(TextBox7.Text.Trim());
            string tenloai = TextBox8.Text.Trim();
            String ins = "Insert into LoaiSp(MaLoai,TenLoai) values ("+ "'" + maloai +"'" + "," + "'" + tenloai + "')";
            String max2 = "Select Max(MaLoai) From LoaiSp";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = ins;
            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Add Category to DB Success!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Something wrong! Maybe Category Code You typed already has in DB!')", true);
            }
        
    }
}