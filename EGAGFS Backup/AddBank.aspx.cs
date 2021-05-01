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
    public partial class AddBank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbcheck.Text = Session["User_Id"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            SqlCommand cmd = new SqlCommand("Sp_AddViewBank", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //int State_Id= Convert.ToInt32(@"{State_Id" .Values[0]);
           // cmd.Parameters.AddWithValue("@Bank_Id", "Add");         
            cmd.Parameters.AddWithValue("@Bank_Name", txtname.Text);
            cmd.Parameters.AddWithValue("@Description", txtdesc.Text);
            cmd.Parameters.AddWithValue("@Add_By", Session["UserId"]);
            //  cmd.Parameters.AddWithValue("@Edit_By", Session["UserId"]);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record inserted Successfully')", true);
                Response.Redirect("ViewBank.aspx");
                //txtcode.Text = "";
                //txtname.Text = "";
                //txtdesc.Text = "";
            }
            con.Close();
        }
    }
}