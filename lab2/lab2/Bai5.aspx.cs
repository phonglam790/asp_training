using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Bai5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string selectedItem = ddlDisplayMode.SelectedItem.Text;
            string quantity = textbox_soLuong.Text;

            if (string.IsNullOrEmpty(quantity))
            {
                label_error.Text = "Chưa có số lượng";
            }
            else
            {
                ListBox1.Items.Add(new ListItem(selectedItem + " (" + quantity + ")", selectedItem));
                ddlDisplayMode.SelectedIndex = 0;
                textbox_soLuong.Text = "";
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ListBox1.Items.Clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string hoTen = textbox_hoTen.Text;
            string diaChi = textbox_diaChi.Text;
            string maSoThue = textbox_maSoThue.Text;
            Session["HoTen"] = hoTen;
            Session["DiaChi"] = diaChi;
            Session["MaSoThue"] = maSoThue;

            List<string> danhSachBanh = new List<string>();
            foreach (ListItem item in ListBox1.Items)
            {
                danhSachBanh.Add(item.Text);
            }
            Session["DanhSachBanh"] = danhSachBanh;
            ShowInvoice();
        }
        private void ShowInvoice()
        {
            litHoTen.Text = Session["HoTen"] as string;
            litDiaChi.Text = Session["DiaChi"] as string;
            litMaSoThue.Text = Session["MaSoThue"] as string;
            List<string> danhSachBanh = Session["DanhSachBanh"] as List<string>;
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("TenBanh"), new DataColumn("SoLuong") });
            foreach (string banh in danhSachBanh)
            {
                dt.Rows.Add(banh, 1);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            pnlInvoice.Visible = true;
        }
    }
}