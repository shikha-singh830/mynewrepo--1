using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EGAGFS.EquityGrantAndGuaranteeFundScheme
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddState_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.;Integrated Security=True;user=Tutorials_uid;password=tutorial@123;");
            SqlCommand cmd = new SqlCommand("sp_Registration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("fname", txtfname.Text);
            cmd.Parameters.AddWithValue("lname", txtlname.Text);
            cmd.Parameters.AddWithValue("email", txtemail.Text);
            cmd.Parameters.AddWithValue("phoneno", txtphoneno.Text);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}