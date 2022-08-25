using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Web.Security;



namespace Alumni_Info
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void txtregister_Click(object sender, EventArgs e)
        {
            string std_id, name, username, password, confirmpass, district, session, ad_dat, Birth_date,
                gender, b_group, contact, email, designation, institution;

           // FileUpload1.SaveAs(Server.MapPath("~/Images/") + Path.GetFileName(FileUpload1.FileName));
           // string image = "Images/" + Path.GetFileName(FileUpload1.FileName);

            ///std_id = String.Format("{0}", Request.Form["txtstdID"]);
            std_id = txtstdID.Text;
           // std_id = Request.Form["txtstdID"];
            name = txtname.Text;
            username = txtusername.Text;
           // password = txtpassword.Text;
            string encryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassword.Text, "SHA1");

            district = txtdist.Text;
            session = txtsession.Text;
            ad_dat = ad_date.Text ;
            Birth_date = birth_date.Text;
            gender = txtgender.Text;
            b_group = bgroup.Text;
            contact = txtcontact.Text;
            email = txtemail.Text;
           // image = image1.ToString;
           
            designation = txtdesignation.Text;
            institution = txtinstitution.Text;

            String sss = "select count(UserName) from register1 where UserName='" + username + "'";
            String ss = "select count(Email) from register1 where [Student ID]='" + std_id + "'";

            SqlConnection conn = new SqlConnection();

            conn.ConnectionString =
            "Data Source=DESKTOP-1L51OAC\\SQLEXPRESS;" +
            "Initial Catalog=Alumni;" +
            "Integrated Security=SSPI;";

            SqlCommand myCommand = new SqlCommand(sss, conn);
            myCommand.Connection.Open();
            SqlCommand Command = new SqlCommand(ss, conn);
           // Command.Connection.Open();
            int a = (int)myCommand.ExecuteScalar();
            int b = (int)Command.ExecuteScalar();

            if (a == 0 && b == 0)
            {
                SqlCommand cmd = new SqlCommand();

                string sql = "insert into register1 " + " values('" + std_id+ "'," + "'" +name + "'," + "'"  +username+ "',"  + "'" + encryptedPassword + "'," + "'" + district+ "',"
               + "'" + session+ "'," + "'" + ad_dat+ "'," + "'" + Birth_date+ "'," + "'" + gender+ "'," + "'" + b_group+ "'," + "'" + contact+ "'," + "'" + email+ "'," + "'" + designation+ "'," + "'" + institution +  "')";


                cmd.Connection = conn;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = sql;
               // cmd.ExecuteNonQuery();
                cmd.ExecuteReader();
                Response.Write("<script>alert('Registration Done Successfully');window.location = 'Login.aspx';</script>");
                //Response.Redirect("~/Default.aspx");
                //MessageBox.Show("Registration Done Successfully");
            }
            else
            {
                if (b == 0) Response.Write("<script>alert('Give Unique UserName')</script>");
                else if (a == 0) Response.Write("<script>alert('Give Unique Student ID')</script>");
                else Response.Write("<script>alert('Give Unique UserName And Student ID')</script>");
            }
            conn.Close();


            /* // xd.Text = sql;

             // Response.Write("asdf // /");


              conn.Open();
             // Response.Write("Connection MAde");


              SqlDataReader dataReader;





              // adapter.InsertCommand = new SqlCommand(sql, conn);
              //  adapter.InsertCommand.ExecuteNonQuery();
              // dataReader = command.ExecuteReader();
             // cmd.CommandText = "select * from [register1] where [UserName]=username or [Student ID]=std_id";
             // cmd.Parameters.AddWithValue("@username", txtusername.Text);
             // cmd.Parameters.AddWithValue("@s_id", txtstdID.Text);
                cmd.ExecuteNonQuery();
             // dataReader = cmd.ExecuteReader();
              if (dataReader.HasRows)
              {
                  xd.Visible = true;
                  xd.Text = "UserName or Student ID is already exist";

              }

            conn.Close(); */




        }

        protected void birth_date_TextChanged(object sender, EventArgs e)
        {

        }
    }
}