using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_4
{
    public partial class lab_4_bai_tap_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            int a = int.Parse(txtA.Text);
            int b = int.Parse(txtB.Text);
            int uscln = TimUSCLN(a, b);
            lblResult.Text = $"USCLN của {a} và {b} là: {uscln}";
        }

        protected int TimUSCLN(int a, int b)
        {
            if (b == 0)
            {
                return a;
            }
            else
            {
                return TimUSCLN(b, a % b);
            }
        }
    }
}