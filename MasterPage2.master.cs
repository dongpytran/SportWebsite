using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        String strsel = "Select MaLoai, TenLoai, 'Allproducts.aspx?ml='+ cast(MaLoai as varchar(5)) +'&t=' + TenLoai as lk From LoaiSp";
        SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
        DataSet ds = new DataSet("sp");
        da.Fill(ds, "sp");

        GridView1.DataSource = ds.Tables["sp"];
        GridView1.DataBind();
    }
}
