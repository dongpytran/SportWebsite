using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);

            String strsel = "Select MaSp,TenSp,GiaBan,HinhAnh,MaLoai From SanPham where New =1";
            SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
            DataSet ds = new DataSet("psnew");
            da.Fill(ds, "spnew");

            DataList1.DataSource = ds.Tables["spnew"];
            DataList1.DataBind();
        }
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Allproducts.aspx");
    }
    int Contain(DataTable dt, int m)
    {
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i]["ID"].ToString() == m.ToString())
                return i;
        }
        return -1;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int masp = int.Parse(e.CommandArgument.ToString());
        string tensp = ((Label)e.Item.FindControl("Label2")).Text;
        int gia = int.Parse(((Label)e.Item.FindControl("Label3")).Text);
        string filename = ((Image)e.Item.FindControl("Image1")).ImageUrl;
        if (Session["gh"] == null)
        {
            DataTable tbGioHang = new DataTable();
            tbGioHang.Rows.Clear();
            tbGioHang.Columns.Clear();
            tbGioHang.Columns.Add("ID", typeof(int));
            tbGioHang.Columns.Add("Name", typeof(string));
            tbGioHang.Columns.Add("Hinh", typeof(string));
            tbGioHang.Columns.Add("Quantity", typeof(int));
            tbGioHang.Columns.Add("Price", typeof(int));
            tbGioHang.Columns.Add("Total", typeof(int), "Quantity*Price");
            tbGioHang.Rows.Add(masp, tensp, filename, 1, gia);

            Session["gh"] = tbGioHang;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Add Product Successfully!')", true);
        }
        else
        {
            DataTable a = (DataTable)Session["gh"];
            int vt = Contain(a, masp);
            if (vt == -1)
            {
                a.Rows.Add(masp, tensp, filename, 1, gia);
            }
            else
            {
                a.Rows[vt]["Quantity"] = (int)a.Rows[vt]["Quantity"] + 1;
            }
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Add Product Successfully!')", true);
        }
    }
}