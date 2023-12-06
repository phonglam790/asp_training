using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class Bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int soA = int.Parse (TextBox1.Text);
            int soB = int.Parse(TextBox2.Text);
            int tinhTong = soA + soB;
            ketQua.Text = tinhTong.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int soA = int.Parse(TextBox1.Text);
            int soB =int.Parse(TextBox2.Text);
            int tinhHieu = soA - soB;
            ketQua.Text = tinhHieu.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double soA = double.Parse(TextBox1.Text);
            double soB = double.Parse(TextBox2.Text);   
            double tinhThuong = soA/soB;
            ketQua.Text = tinhThuong.ToString();
        }
    }
}