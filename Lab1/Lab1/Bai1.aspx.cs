using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class Bai1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Int32 soA = Int32.Parse (txtsoA.Text);
            Int32 soB = Int32.Parse (txtsoB.Text);
            Int32 tinhTong = soA + soB;
            ketQua.Text = tinhTong.ToString();
        }
    }
}