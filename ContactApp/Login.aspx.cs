using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContactApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResendActivationLink_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@" Data Source= 172.16.1.13\mssqlserver1;Initial Catalog=AdventureWorksTraining; Integrated Security=True;User id=training;Password=training");
            SqlCommand cmd = new SqlCommand("select * from Log_Users where Username=@username and Password=@word", con);
            cmd.Parameters.AddWithValue("@username", textusername.Text);
            cmd.Parameters.AddWithValue("@word", textpassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["id"] = textusername.Text;
                Response.Redirect("SentEmail.aspx");
                Session.RemoveAll();
            }
            else
            {
                lblmsg.Text = "You're username and Password is incorrect";
                lblmsg.ForeColor = System.Drawing.Color.Red;
                textpassword.Text = "";
                textusername.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "HideLabel", "<script type=\"text/javascript\">setTimeout(\"document.getElementById('" + lblmsg.ClientID + "').style.display='none'\",2000)</script>");
                // Response.Redirect("Login.aspx");  
            } 
        }
    }
}