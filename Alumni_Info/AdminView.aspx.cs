using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Alumni_Info
{
    public partial class AdminView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void lbtnInsert_Click(object sender, EventArgs e)
        {
            
            SqlDataSource1.InsertParameters["Student_ID"].DefaultValue =
        ((TextBox)GridView1.FooterRow.FindControl("Estd_id")).Text;

            SqlDataSource1.InsertParameters["Name"].DefaultValue =
        ((TextBox)GridView1.FooterRow.FindControl("Ename")).Text;

            SqlDataSource1.InsertParameters["UserName"].DefaultValue =
         ((TextBox)GridView1.FooterRow.FindControl("Eusername")).Text;

            string encryptedPassword = FormsAuthentication.
          HashPasswordForStoringInConfigFile(((TextBox)GridView1.FooterRow.FindControl("Epassword")).Text, "SHA1");
            SqlDataSource1.InsertParameters["Password"].DefaultValue = encryptedPassword;
         //((TextBox)GridView1.FooterRow.FindControl("Epassword")).Text;

            SqlDataSource1.InsertParameters["Home_District"].DefaultValue =
        ((TextBox)GridView1.FooterRow.FindControl("Edistrict")).Text;

            SqlDataSource1.InsertParameters["Session"].DefaultValue =
        ((TextBox)GridView1.FooterRow.FindControl("Esession")).Text;

            SqlDataSource1.InsertParameters["Admission_Date"].DefaultValue =
       ((TextBox)GridView1.FooterRow.FindControl("Ead_date")).Text;

            SqlDataSource1.InsertParameters["Birth_Date"].DefaultValue =
       ((TextBox)GridView1.FooterRow.FindControl("Ebirth_date")).Text;

            SqlDataSource1.InsertParameters["Gender"].DefaultValue =
       ((DropDownList)GridView1.FooterRow.FindControl("Egender")).SelectedValue;

            SqlDataSource1.InsertParameters["Blood_Group"].DefaultValue =
       ((DropDownList)GridView1.FooterRow.FindControl("E_bgroup")).SelectedValue;

            SqlDataSource1.InsertParameters["Contact"].DefaultValue =
       ((TextBox)GridView1.FooterRow.FindControl("Econtact")).Text;

            SqlDataSource1.InsertParameters["Email"].DefaultValue =
       ((TextBox)GridView1.FooterRow.FindControl("E_email")).Text;

            SqlDataSource1.InsertParameters["DEsignation"].DefaultValue =
      ((TextBox)GridView1.FooterRow.FindControl("Edesignation")).Text;

            SqlDataSource1.InsertParameters["Institution"].DefaultValue =
      ((TextBox)GridView1.FooterRow.FindControl("Einstitution")).Text;


            SqlDataSource1.Insert();
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}