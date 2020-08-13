using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PurchaseHIstory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable d = Session["kh"] as DataTable;
        string user = d.Rows[0]["username"].ToString();
        string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        String strsel = "Select MaHd,username,NgayHd,Tong ,'HistoryDetail.aspx?mhd=' + cast(MaHd as nvarchar) as tt From HOADON WHERE username="+"'" + user +"'";
        SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
        DataSet ds = new DataSet("his");
        da.Fill(ds, "his");

        GridView1.DataSource = ds.Tables["his"];
        GridView1.DataBind();
    }
}