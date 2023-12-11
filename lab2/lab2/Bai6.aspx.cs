using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Bai6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {
            string selectedValue = BulletedList1.Items[e.Index].Value;
            Response.Redirect(selectedValue);
        }

        protected void ddlDisplayMode_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetBulletedListDisplayMode();
        }
        private void SetBulletedListDisplayMode()
        {
            switch (ddlDisplayMode.SelectedValue)
            {
                case "1":
                    BulletedList1.BulletStyle = BulletStyle.Numbered;
                    break;
                case "2":
                    BulletedList1.BulletStyle = BulletStyle.LowerRoman;
                    break;
                case "3":
                    BulletedList1.BulletStyle = BulletStyle.UpperRoman;
                    break;
                case "4":
                    BulletedList1.BulletStyle = BulletStyle.Circle;
                    break;
                case "5":
                    BulletedList1.BulletStyle = BulletStyle.Square;

                    break;
                default:
                    BulletedList1.DisplayMode = BulletedListDisplayMode.LinkButton;
                    break;
            }
        }
    }
}