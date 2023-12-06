using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class Bai5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double soA = double.Parse(TextBox1.Text);
            double soB = double.Parse(TextBox2.Text);
            double soC = double.Parse(TextBox3.Text);
            double delta = soB * soB - 4 * soA * soC;
            if (delta < 0)
            {
                ketQua.Text = "Phương trình vô nghiệm";
            }
            else if (delta ==0) {
                double x = -soB / (2 * soA);
                ketQua.Text = "Phương trình có nghiệm kép x1,x2 = "+x;
            }
            else
            {
                double x1 = (-soB + Math.Sqrt(delta)) / (2 * soA);
                double x2 = (-soB - Math.Sqrt(delta)) / (2 * soA);
                ketQua.Text = "x1 ="+ x1 +" và "+" x2 ="+ x2;
            }
        }
    }
}