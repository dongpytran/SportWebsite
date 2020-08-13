using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShopCartInfo : System.Web.UI.Page
{
    protected int totalPrice()
    {
        int total = 0;
        DataTable dt = (DataTable)Session["gh"];
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            total += (int.Parse(dt.Rows[i]["Price"].ToString())*int.Parse(dt.Rows[i]["Quantity"].ToString()));
        }
        return total;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["gh"] != null)
            {
                MultiView1.ActiveViewIndex = 1;
                Label3.Visible = false;
                HyperLink1.Visible = false;
                DataTable dt = (DataTable)Session["gh"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                int tt = totalPrice();
                Label1.Text = "$ " + tt.ToString();

            }
            else
            {
                Button1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = true;
                HyperLink1.Visible = true;
                MultiView1.ActiveViewIndex = 0;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["kh"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else {
            MultiView1.ActiveViewIndex = 2;
            DataTable d = Session["kh"] as DataTable;
            Label4.Text = Label1.Text;
            TextBox3.Text = d.Rows[0]["lastname"].ToString() +" " + d.Rows[0]["firstname"].ToString();
            TextBox4.Text = d.Rows[0]["adress"].ToString();
            TextBox5.Text = d.Rows[0]["email"].ToString();
            TextBox6.Text = d.Rows[0]["phone"].ToString();
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
            TextBox6.Enabled = false;
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        DataTable cart = Session["gh"] as DataTable;
        string id = cart.Rows[e.RowIndex]["ID"].ToString();
        foreach(DataRow dr in cart.Rows){
            if(dr["ID"].ToString()==id){
                dr.Delete();
                int tt = totalPrice();
                Label1.Text = "$ " + tt.ToString();
                break;
            }
        }
        Session["gh"] = cart;
        GridView1.DataSource = cart;
        GridView1.DataBind();
        if (cart.Rows.Count == 0) {
            Session["gh"] = null;
            Response.Redirect("ShopCartInfo.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        DataTable cart = Session["gh"] as DataTable;
        string id = cart.Rows[e.NewSelectedIndex]["ID"].ToString();
        TextBox quantity = GridView1.Rows[e.NewSelectedIndex].Cells[4].FindControl("Quantity") as TextBox;
        foreach (DataRow dr in cart.Rows) {
            if (dr["ID"].ToString() == id) {
                dr["Quantity"] = int.Parse(quantity.Text);
                int tt = totalPrice();
                Label1.Text = "$ " + tt.ToString();
                break;
            }
        }
        Session["gh"] = cart;
        GridView1.DataSource = cart;
        GridView1.DataBind();
    }
    private int GetColumnIndexByName(GridView grid, string name)
    {
        foreach (DataControlField col in grid.Columns)
        {
            if (col.HeaderText.ToLower().Trim() == name.ToLower().Trim())
            {
                return grid.Columns.IndexOf(col);
            }
        }

        return -1;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        DataTable cart2 = Session["gh"] as DataTable;
        GridView1.DataSource = cart2;
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DataTable cart1 = (DataTable)Session["gh"];
        cart1.Rows[e.RowIndex]["Quantity"]= ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text; 
        Session["gh"] = cart1;
        GridView1.EditIndex = -1;
        int tt = totalPrice();
        Label1.Text = "$ " + tt.ToString();
        GridView1.DataSource = cart1;
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        DataTable cart = Session["gh"] as DataTable;
        GridView1.DataSource = cart;
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[3].Enabled = false;
        e.Row.Cells[4].Enabled = false;
        e.Row.Cells[6].Enabled = false;
        e.Row.Cells[7].Enabled = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userprofile.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        int tong = totalPrice();
        string day = DateTime.Now.ToString();
        DataTable a = Session["kh"] as DataTable;
        string user = a.Rows[0]["username"].ToString().Trim();
        string t = (Label4.Text.Trim());
        String ins = "Insert into HOADON(username,Ngayhd,Tong) values("+"'" + user +"', " + "'" + day + "', "+ tong + ") select SCOPE_IDENTITY()";
        SqlCommand da = new SqlCommand();
        da.Connection = cn;
        da.CommandText = ins;
        int rs = da.ExecuteNonQuery();
        if (rs == 1) {
            //int mhd = Convert.ToInt32(da.ExecuteScalar()); Loi insert 2 dong HD;
            String max = "Select Max(MaHd) From HOADON";
            da.CommandText = max;
            int mhd = Convert.ToInt32(da.ExecuteScalar());
            DataTable gh = Session["gh"] as DataTable;
            foreach (DataRow dr in gh.Rows) {
                int msp = int.Parse(dr["ID"].ToString());
                int sl = int.Parse(dr["Quantity"].ToString());

                ins = "Insert into ChitietHd(MaHd,MaSp,sl) values (" + mhd + "," + msp + "," + sl + ")";

                da.CommandText = ins;
                da.ExecuteNonQuery();

                Session["gh"] = null;
                Response.Write("<script>if(confirm(('Pay Successfully, Continue shopping?'))){window.location.href='Allproducts.aspx';}else{window.location.href='Home.aspx';}</script>");
                
            }
        }
    }
}