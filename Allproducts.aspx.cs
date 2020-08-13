using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Allproducts : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["gh"] != null) {
            DataTable d = Session["gh"] as DataTable;
            int r = d.Rows.Count;
            count.Text = r.ToString();
        }
        if (Session["search"] != null)
        {
            string result = Session["search"].ToString();
            string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);

            String strsel = "Select MaSp,TenSp,GiaBan,HinhAnh,MaLoai From SanPham where TenSp Like" + "'%" + result+"%'";
            SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
            DataSet ds = new DataSet("spsearch");
            da.Fill(ds, "spsearch");

            DataList1.DataSource = ds.Tables["spsearch"];
            DataList1.DataBind();
            Label1.Text = result;
            Session["search"] = null;
        }
        else
        {
            if (!IsPostBack)
            {
                string ten = Request.QueryString["ml"];
                string tenloai = Request.QueryString["T"];
                if (ten == null)
                {
                    string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
                    SqlConnection cn = new SqlConnection(strcn);

                    String strsel = "Select MaSp,TenSp,GiaBan,HinhAnh,MaLoai From SanPham";
                    SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
                    DataSet ds = new DataSet("allsp");
                    da.Fill(ds, "allsp");

                    DataList1.DataSource = ds.Tables["allsp"];
                    DataList1.DataBind();
                    Label1.Text = "All Products";
                }
                else
                {
                    string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
                    SqlConnection cn = new SqlConnection(strcn);

                    String strsel = "Select MaSp, TenSp, GiaBan,HinhAnh,MaLoai From SanPham Where MaLoai=" + "'" + ten + "'";
                    SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
                    DataSet ds = new DataSet("spdm");
                    da.Fill(ds, "spdm");

                    DataList1.DataSource = ds.Tables["spdm"];
                    DataList1.DataBind();
                    Label1.Text = tenloai;
                }
            }
        }
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
        string image =((Image)e.Item.FindControl("Image1")).ImageUrl;
        if (Session["gh"] == null)
        {
            DataTable tbGioHang = new DataTable();
            tbGioHang.Rows.Clear();
            tbGioHang.Columns.Clear();
            tbGioHang.Columns.Add("ID" ,typeof(int));
            tbGioHang.Columns.Add("Name", typeof(string));
            tbGioHang.Columns.Add("Hinh", typeof(string));
            tbGioHang.Columns.Add("Quantity", typeof(int));
            tbGioHang.Columns.Add("Price", typeof(int));
            tbGioHang.Columns.Add("Total", typeof(int), "Quantity*Price");
            tbGioHang.Rows.Add(masp, tensp ,image, 1, gia);

            Session["gh"] = tbGioHang;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Add Product Successfully!')", true);
        }
        else
        {
            DataTable a = (DataTable)Session["gh"];
            int vt = Contain(a, masp);
            if (vt == -1)
            {
                a.Rows.Add(masp, tensp, image, 1, gia);
            }
            else
            {
                a.Rows[vt]["Quantity"] = (int)a.Rows[vt]["Quantity"] + 1;
            }
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Add Product Successfully!')", true);
        }
        DataTable d = Session["gh"] as DataTable;
        int c = d.Rows.Count;
        count.Text = c.ToString();
    }
}