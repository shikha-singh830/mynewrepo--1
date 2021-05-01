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
    public partial class AddDistrict : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
                SqlCommand cmd = new SqlCommand("select * from State_Master", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ddlState.DataSource = dt;
                ddlState.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            SqlCommand cmd = new SqlCommand("Sp_AddViewDistrict", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //int State_Id= Convert.ToInt32(@"{State_Id" .Values[0]);            
            cmd.Parameters.AddWithValue("State", ddlState.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@District_Name", txtname.Text);       
            cmd.Parameters.AddWithValue("@Description", txtdesc.Text);
            cmd.Parameters.AddWithValue("@Add_By", Session["UserId"]);
            //  cmd.Parameters.AddWithValue("@Edit_By", Session["UserId"]);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {

                //txtcode.Text = "";
                //txtname.Text = "";
                //txtdesc.Text = "";
            }
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record inserted Successfully')", true);
            Response.Redirect("ViewDistrict.aspx");
        }
    }
}