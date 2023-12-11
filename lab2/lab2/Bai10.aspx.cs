using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Bai10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["SelectedItems"] = new List<string>();
            }
            else
            {
                List<string> selectedItems = ViewState["SelectedItems"] as List<string>;

                if (selectedItems != null)
                {
                    foreach (string item in selectedItems)
                    {
                        ListBox1.Items.Add(new ListItem(item, item.GetHashCode().ToString()));
                    }
                    resultLabel.Text = $"{selectedItems.Count} sản phẩm";
                }
            }
        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            UpdateCheckedCount();
        }
        private void UpdateCheckedCount()
        {
            List<string> selectedItems = ViewState["SelectedItems"] as List<string>;

            if (selectedItems == null)
            {
                selectedItems = new List<string>();
            }
            int selectedCount = 0;
            ListBox1.Items.Clear();
            if (CheckBox1.Checked)
            {
                ListBox1.Items.Add(new ListItem(CheckBox1.Text, "1"));
                selectedItems.Add("Option 1");
                selectedCount++;
            }
            if (CheckBox2.Checked)
            {
                ListBox1.Items.Add(new ListItem(CheckBox2.Text, "2"));
                selectedItems.Add("Option 2");
                selectedCount++;
            }
            if (CheckBox3.Checked)
            {
                ListBox1.Items.Add(new ListItem(CheckBox3.Text, "3"));
                selectedItems.Add("Option 3");
                selectedCount++;
            }
            if (CheckBox4.Checked)
            {
                ListBox1.Items.Add(new ListItem(CheckBox4.Text, "4"));
                selectedItems.Add("Option 4");
                selectedCount++;
            }
            if (CheckBox5.Checked)
            {
                ListBox1.Items.Add(new ListItem(CheckBox5.Text, "5"));
                selectedItems.Add("Option 5");
                selectedCount++;
            }
            if (CheckBox6.Checked)
            {
                ListBox1.Items.Add(new ListItem(CheckBox6.Text, "6"));
                selectedItems.Add("Option 6");
                selectedCount++;
            }
            if (CheckBox7.Checked)
            {
                ListBox1.Items.Add(new ListItem(CheckBox7.Text, "7"));
                selectedItems.Add("Option 7");
                selectedCount++;
            }
            ViewState["SelectedItems"] = selectedItems;
            resultLabel.Text = $"{selectedCount} sản phẩm";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
            CheckBox6.Checked = false;
            CheckBox7.Checked = false;
            ViewState["SelectedItems"] = new List<string>();
            ListBox1.Items.Clear();
            resultLabel.Text = "0 sản phẩm";
        }
    }
}