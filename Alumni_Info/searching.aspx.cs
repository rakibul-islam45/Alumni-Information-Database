using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alumni_Info
{
    public partial class searching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow == null)
            {
                DetailsView1.Visible = false;
            }
            else
            {
                DetailsView1.Visible = true;

            }
            if (TextBox1.Text == null)
            {
                 GridView1.Visible = false;
               
            }
            else
            {
                GridView1.Visible = true;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}