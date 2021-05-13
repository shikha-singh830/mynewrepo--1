using DALUtility;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EGAGFS.Admin
{
    public partial class AddNewDistrict : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              refreshdata();
                if (Request.QueryString["nt"] != null)
                {
                    SetRecord(sender, e);
                }
            }
        }

        public void refreshdata()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            SqlCommand command = new SqlCommand("select_NewState", con);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();

            DataTable dt = new DataTable();

            dt.Load(command.ExecuteReader());
            ddlstate.DataSource = dt;
            ddlstate.DataBind();      
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
               // string state = ddlstate.SelectedValue;
                string sname = txtname.Text;
                string desc = txtdesc.Text;
                SqlParameter[] prm = {                                      
                                        new SqlParameter("@District_Id",Request.QueryString["nt"]),
                                         new SqlParameter("@State",ddlstate.SelectedItem.Value),
                                        new SqlParameter("@District_Name",txtname.Text),
                                        new SqlParameter("@Description",txtdesc.Text)
                                       // new SqlParameter("@userId",((SessionHandler)Session["admin"]).userid)
                };
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Insert_NewDistrict", prm);
                string CloseWindow = "alert('Unable to save District, Please try again later.')";
                if (ds != null & ds.Tables.Count > 0)
                {
                    if (int.Parse(ds.Tables[0].Rows[0][0].ToString()) > 0)
                    {
                        resetFields();
                        if (Request.QueryString["nt"] != null)
                        {
                            CloseWindow = "alert('District updated Successfully.');location.href='ViewNewDistrict.aspx'";
                        }
                        else
                        {
                            CloseWindow = "alert('District Saved Successfully.')";
                        }
                    }
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "CloseWindow", CloseWindow, true);
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.Message.ToString());
            }
        }

        private void resetFields()
        {
            ddlstate.SelectedValue = "0";
            txtname.Text = "";
            txtdesc.Text = "";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            resetFields();
        }
     
        private void SetRecord(object sender, EventArgs e)
        {
            try
            {
                SqlParameter[] prm = { new SqlParameter("@action", "edit"), new SqlParameter("@District_Id", Request.QueryString["nt"]) };
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Get_DistrictMaster", prm);
                if (ds != null & ds.Tables.Count > 0)
                {
                    ddlstate.SelectedValue = ds.Tables[0].Rows[0]["State"].ToString();
                    txtname.Text = ds.Tables[0].Rows[0]["District_Name"].ToString();
                    txtdesc.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                }
            }
            catch (Exception ex) { }
        }
    }
}