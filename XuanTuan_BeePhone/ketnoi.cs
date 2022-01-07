using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace XuanTuan_BeePhone
{   
    public class ketnoi
    {
        SqlConnection conn;

        //tạo phương thức lấy kêt nối
        private void layketnoi()
        {
            //khởi tạo giá trị cho đối tượng SqlConnection
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\KyThuat_ThuongMai_DienTu\XuanTuan_BeePhone\XuanTuan_BeePhone\App_Data\QuanLyHangHoa.mdf;Integrated Security=True");
            conn.Open();//mở kết nối
        }
        //xây dựng hàm đóng kết nối
        private void dongketnoi()
        {
            if (conn.State == ConnectionState.Open)//nếu kết nối đang mở
                conn.Close();
        }
        //tạo hàm lấy dữ liêu có kiểu dữ liêu là DataTable, giá trị truyền vào là 1 chuỗi sql
        public DataTable laydata(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                layketnoi();//mở kết nối
                SqlDataAdapter adap = new SqlDataAdapter(sql, conn);
                adap.Fill(dt);//đổ dữ liệu vào dt
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;//kết quả trả về là 1 DataTable
        }
    }
}