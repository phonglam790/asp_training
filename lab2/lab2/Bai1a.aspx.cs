using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Bai1a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_dangKy_Click(object sender, EventArgs e)
        {
            string selectedValue = "";
            if (radio_nam.Checked)
                selectedValue = radio_nam.Text;
            else
                selectedValue = raio_nu.Text;
            bulletedlist_result.Items.Clear();
            bulletedlist_result.Items.Add($"Họ tên khách hàng: {textbox_hoTen.Text}");
            bulletedlist_result.Items.Add($"Giới tính: {selectedValue}");
            bulletedlist_result.Items.Add($"Email: {textbox_email.Text}");
            bulletedlist_result.Items.Add($"Địa chỉ: {textarea_diaChi.Value}");
            bulletedlist_result.Items.Add($"Điện thoại: {textbox_dienThoai.Text}");
        }
    }
}