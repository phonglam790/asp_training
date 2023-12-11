using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Bai9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;

        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string uploadFolder = Server.MapPath("~/Uploads/");

                if (!Directory.Exists(uploadFolder))
                {
                    Directory.CreateDirectory(uploadFolder);
                }
                string filePath = Path.Combine(uploadFolder, fileName);
                FileUpload1.SaveAs(filePath);
                LoadFileList();
            }
        }

        private void LoadFileList()
        {
            string uploadFolder = Server.MapPath("~/Uploads/");
            string[] files = Directory.GetFiles(uploadFolder);

            ListBox1.Items.Clear();

            foreach (string file in files)
            {
                ListBox1.Items.Add(Path.GetFileName(file));
            }
        }

        protected void lnkView2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            LoadFileList();
        }

        protected void lnkView1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}