using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EGAGFS
{
    public partial class PLogin : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Session["User_Id"].ToString();
        }
        public void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            SqlCommand cmd = new SqlCommand("select * from Login_Master where User_Name=@User_Name and Password=@Password", con);
            cmd.Parameters.AddWithValue("@User_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Session["User_Id"] = TextBox1.Text;
                Response.Redirect("AddState.aspx");
                Session.RemoveAll();
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");               
                // Label1.Text = "Invalid Credential";
                //Label1.ForeColor = System.Drawing.Color.Red;
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
}