using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButtonConfirm_Click(object sender, EventArgs e)
        {
            label_hoTen.Text = TextBox1.Text;
            label_result.Text = "Chào mừng bạn đã đến với môn học Lập trình Web2";
        }
    }
}