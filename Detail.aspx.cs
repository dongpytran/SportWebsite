using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            string masp = Request.QueryString["msp"];
            string strcn = ConfigurationManager.ConnectionStrings["qlsptt"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);

            String strsel = "Select * From SanPham Where MaSp=" + "'" + masp + "'";
            SqlDataAdapter da = new SqlDataAdapter(strsel, cn);
            DataSet ds = new DataSet("ctsp");
            da.Fill(ds, "ctsp");

            DataList1.DataSource = ds.Tables["ctsp"];
            DataList1.DataBind();

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach(DataListItem dl in DataList1.Items){
            int masp = int.Parse(Request.QueryString["msp"]);
        string tensp = ((Label)dl.FindControl("Label2")).Text;
        int gia = int.Parse(((Label)dl.FindControl("Label3")).Text);
        string filename = ((Image)dl.FindControl("Image1")).ImageUrl;
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
}