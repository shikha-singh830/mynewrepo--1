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
    public partial class ViewDistrict : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                refreshdata();
            }
        }

        //protected void Adddropdown()
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
        //    SqlCommand cmd = new SqlCommand("select * from State_Master", con);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}


        public void refreshdata()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            SqlCommand cmd = new SqlCommand("select * from District_Master", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_Edit(object sender, EventArgs e)
        {

        }

        public void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.refreshdata();
        }

        public void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int District_Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            //string State = (row.FindControl("txtstate") as TextBox).Text;string selectedValue = ddlTest.SelectedItem.Value;
            // string state = DropDownList.SelectedValue.ToString(); 
            DropDownList dlist = (row.Cells[0].FindControl("ddlState") as DropDownList);
            string DistrictName = (row.FindControl("txtname") as TextBox).Text;
            string Description = (row.FindControl("txtdesc") as TextBox).Text;
            string query = "UPDATE District_Master SET State=@State, District_Name=@District_Name, Description=@Description WHERE District_Id=@District_Id";
            string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@District_Id", District_Id);                 
                   // cmd.Parameters.AddWithValue("@State",)
                    cmd.Parameters.AddWithValue("@District_Name", DistrictName);
                    cmd.Parameters.AddWithValue("@Description", Description);                  
                    cmd.Connection = con;
                    con.Open();                  
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            GridView1.EditIndex = -1;
            this.refreshdata();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);
        }

        public void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.refreshdata();
        }

        public void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int District_Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string query = "DELETE FROM District_Master WHERE District_Id=@District_Id";
            string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@District_Id", District_Id);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.refreshdata();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record deleted Successfully')", true);
        }

        //public void OnRowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
        //    {
        //        (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
        //    }
        //}

        public void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.refreshdata();
        }
    }
}