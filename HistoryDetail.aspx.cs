using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HistoryDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string mhd = Request.QueryString["mhd"];
        string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        String strsel = "Select SanPham.MaSp, MaHd, TenSp, GiaBan, HinhAnh, ChitietHd.sl From SanPham,ChitietHd where MaHd=" + "'"+mhd +"'" +"AND SanPham.MaSp = ChitietHd.MaSp";
        SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
        DataSet ds = new DataSet("ct");
        da.Fill(ds, "ct");

        GridView1.DataSource = ds.Tables["ct"];
        GridView1.DataBind();
    }
}