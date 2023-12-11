using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Bai4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            string selectedValue = "";

            if (radio_mayGiat.Checked)
                selectedValue = radio_mayGiat.Text;
            else if (radio_tuLanh.Checked)
                selectedValue = radio_tuLanh.Text;
            else if (radio_tivi.Checked)
                selectedValue = radio_tivi.Text;
            else if (radio_dauDia.Checked)
                selectedValue = radio_dauDia.Text;
            else if (radio_loViBa.Checked)
                selectedValue = radio_loViBa.Text;
            else if (radio_noiComDien.Checked)
                selectedValue = radio_noiComDien.Text;
            label_result.Text = "Bạn đã chọn: " + selectedValue;
        }

        protected void button_Result_Click(object sender, EventArgs e)
        {
            butteledlist_Result.Items.Clear();
            int count = 1;
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    butteledlist_Result.Items.Add(new ListItem($"{count}. {item.Text}", item.Value));
                    count++;
                }
            }
        }
    }
}