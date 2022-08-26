using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace Alumni_Info
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Login_Click(object sender, EventArgs e)
        {





            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
            "Data Source=DESKTOP-1L51OAC\\SQLEXPRESS;" +
            "Initial Catalog=Alumni;" +
            "Integrated Security=SSPI;";
            conn.Open();

            string usr = luser.Text;
            string pass = lpassword.Text;
            string encryptedPassword = FormsAuthentication.
           HashPasswordForStoringInConfigFile(lpassword.Text, "SHA1");

            SqlDataReader dataReader;

            string sql = "SelECT username,password from register1 where username =" + "'" + usr + "'";

            SqlCommand command;

            command = new SqlCommand(sql, conn);

            dataReader = command.ExecuteReader();

            string x ="", xx ="";

            while (dataReader.Read())
            {
                x = (dataReader.GetValue(0).ToString());
                xx = dataReader.GetValue(1).ToString();
            }
            // Response.Write(x + " " + xx);
            if (x == usr && xx == encryptedPassword)
            {
                Response.Write("Login Succesful");

                //usrpass.Text = usr + " " + pass;
               
                Response.Redirect("User.aspx?UserName=" + luser.Text);

            }
             if (usr == "admin" && pass== "admin"){
                Response.Write("<script>alert('Admin logged In!');window.location = 'AdminView.aspx';</script>");
                //Server.Transfer("AdminView.aspx",true);
            }
            else
            {
                errorx.Text = "USER NAME OR PASSWORD IS WRONG";
            }

            conn.Close();
        }

        protected void luser_TextChanged(object sender, EventArgs e)
        {

        }
    }
}