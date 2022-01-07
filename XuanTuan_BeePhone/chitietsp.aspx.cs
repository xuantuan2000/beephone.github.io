using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XuanTuan_BeePhone
{
    public partial class chitietsp : System.Web.UI.Page
    {
        string conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\KyThuat_ThuongMai_DienTu\XuanTuan_BeePhone\XuanTuan_BeePhone\App_Data\QuanLyHangHoa.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["mh"] == null)
                q = "select * from mathang";
            else
            {
                string mahang = Context.Items["mh"].ToString();
                q = "select * from mathang where mahang = '" + mahang + "'";
            }
            try
            {               
                SqlDataAdapter da = new SqlDataAdapter(q, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList2.DataSource = dt;
                this.DataList2.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_muahang_Click(object sender, EventArgs e)
        {
            Button mua = (Button)sender;
            string mahang = mua.CommandArgument.ToString(); // lay bien Argument o button
            DataListItem item = (DataListItem)mua.Parent;

            string soluong = ((TextBox)item.FindControl("Textbox1")).Text;
            if (Request.Cookies["tendangnhap"] == null) return; // neu chua dang nhap thi khong lam gi ca
            string ten = Request.Cookies["tendangnhap"].Value;

            SqlConnection con1 = new SqlConnection(conn);
            con1.Open();

            string query = "select * from donhang" + "where tendangnhap = '" + ten + "' and mahang '" + mahang + "' ";

            SqlCommand comm = new SqlCommand(query, con1);
            SqlDataReader reader = comm.ExecuteReader();  // thuc thi cau lenh SQL
            if (reader.Read())
            {
                reader.Close();
                comm = new SqlCommand("update donhang set soluong=soluong+" + soluong + "where tendangnhap ='" + ten + "'and mahang='" + mahang + "' ", con1);

            }
            else
            {
                reader.Close();
                comm = new SqlCommand("insert into donhang" + "(tendangnhap, mahang, soluong) values('" + ten + "', '" + mahang + "', " + soluong + ")", con1);
            }
            comm.ExecuteNonQuery();
            con1.Close();
        }

        protected void link_giohang_Click(object sender, EventArgs e)
        {
            Server.Transfer("giohang.aspx");
        }
    }
}