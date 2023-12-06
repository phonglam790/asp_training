using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class Bai4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double soA = double.Parse(TextBox1.Text);
            double soB = double.Parse(TextBox2.Text);

            if(soA == 0)
            {
                if (soB == 0)
                    ketQua.Text = "Phương trình có vô số nghiệm";
                else
                {
                    ketQua.Text = "Phương trình không có nghiệm";
                }
            }
            else
            {
                double x = -soB / soA;
                ketQua.Text = x.ToString();
            }
        }
    }
}