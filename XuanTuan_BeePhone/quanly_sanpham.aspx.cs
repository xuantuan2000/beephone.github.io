using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XuanTuan_BeePhone
{
    public partial class quanly_sanpham : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();//khởi tạo kết nối
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
                {
                        //Gán chuỗi kết nối cho dataSoure của Control(GridView1)
                   GridView1.DataSource = kn.laydata("SELECT maloai.* FROM loaihang");
                   GridView1.DataBind();//load dữ liêu lên đối tượng
                }
        }
    }
}