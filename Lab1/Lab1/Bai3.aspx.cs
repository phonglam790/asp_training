using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class Bai3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            float soA = float.Parse(TextBox1.Text);
            float soB = float.Parse(TextBox2.Text);
            float soC = float.Parse(TextBox3.Text);

            float maxValue = soA;
            if (soB> maxValue)
            {
                maxValue = soB; 
            }
            if(soC> maxValue)
            {
                maxValue = soC;
            }
            ketQua.Text = maxValue.ToString();
               

        }
    }
}