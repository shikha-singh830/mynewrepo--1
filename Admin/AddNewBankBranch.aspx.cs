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
    public partial class AddNewBankBranch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                statebind();
               /// districtbind();
                bankbind();
                if (Request.QueryString["nt"] != null)
                {
                    SetRecord(sender, e);
                }
            }
        }

        //bind state dropdown

        public void statebind()
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

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            districtbind(Convert.ToInt32(ddlstate.SelectedValue));
        }

        //bind district dropdown
        public void districtbind(int State_id)
        {
            int District_Id = Convert.ToInt32(ddldistrict.SelectedValue);
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            //SqlCommand command = new SqlCommand("select_NewDistrict", con);
            //command.CommandType = CommandType.StoredProcedure;
            //con.Open();
            //DataTable dt = new DataTable();
            //dt.Load(command.ExecuteReader());
            //ddldistrict.DataSource = dt;
            //ddldistrict.DataBind();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from District_Master where State='" + State_id + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ddldistrict.DataSource = ds.Tables[0];
            ddldistrict.DataBind();
        }


        //public void statebind()
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
        //    SqlCommand cmd = new SqlCommand("select * from State_Master", con);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    sda.Fill(ds);
        //    ddlstate.DataSource = ds;
        //    ddlstate.DataBind();
        //}

        //bind bank dropdown
        public void bankbind()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            SqlCommand command = new SqlCommand("select_NewBank", con);
            command.CommandType = CommandType.StoredProcedure;
            con.Open();
            DataTable dt = new DataTable();
            dt.Load(command.ExecuteReader());
            ddlbank.DataSource = dt;
            ddlbank.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                // string state = ddlstate.SelectedValue;
               // string sname = txtname.Text;
               // string desc = txtdesc.Text;
                SqlParameter[] prm = {
                                        new SqlParameter("@BankBranch_Id",Request.QueryString["nt"]),                                     
                                        new SqlParameter("@Bank_Name",ddlbank.SelectedItem.Value),
                                        new SqlParameter("@Branch_Name",txtbrname.Text),
                                        new SqlParameter("@State",ddlstate.SelectedItem.Value),
                                        new SqlParameter("@District",ddldistrict.SelectedItem.Value),
                                        new SqlParameter("@Branch_Address",txtbradd.Text),
                                        new SqlParameter("@Contact_No",txtcontno.Text),
                                        new SqlParameter("@Contact_Person_Name",txtcpn.Text),
                                        new SqlParameter("@Email_ID",txtemail.Text),
                                        new SqlParameter("@IFSC_Code",txtifsc.Text),
                                        new SqlParameter("@MICR_Code",txtmicr.Text)
                                       // new SqlParameter("@userId",((SessionHandler)Session["admin"]).userid)
                };
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Insert_NewBankBranch", prm);
                string CloseWindow = "alert('Unable to save Bank Branch, Please try again later.')";
                if (ds != null & ds.Tables.Count > 0)
                {
                    if (int.Parse(ds.Tables[0].Rows[0][0].ToString()) > 0)
                    {
                        resetFields();
                        if (Request.QueryString["nt"] != null)
                        {
                            CloseWindow = "alert('Bank Branch updated Successfully.');location.href='ViewNewBankBranch.aspx'";
                        }
                        else
                        {
                            CloseWindow = "alert('Bank Branch Saved Successfully.')";
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
            ddlbank.SelectedValue = "0";
            txtbrname.Text = "";
            ddlstate.SelectedValue = "0";
            ddldistrict.SelectedValue = "0";
            txtbradd.Text = "";
            txtcontno.Text = "";
            txtcpn.Text = "";
            txtemail.Text = "";
            txtifsc.Text = "";
            txtmicr.Text = "";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            resetFields();
        }

        private void SetRecord(object sender, EventArgs e)
        {
            try
            {
                SqlParameter[] prm = { new SqlParameter("@action", "edit"), new SqlParameter("@BankBranch_Id", Request.QueryString["nt"]) };
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Get_BankBranchMaster", prm);
                if (ds != null & ds.Tables.Count > 0)
                {
                    ddlbank.SelectedValue = ds.Tables[0].Rows[0]["Bank_Name"].ToString();
                    txtbrname.Text = ds.Tables[0].Rows[0]["Branch_Name"].ToString();
                    ddlstate.SelectedValue = ds.Tables[0].Rows[0]["State"].ToString();
                    ddldistrict.SelectedValue = ds.Tables[0].Rows[0]["District"].ToString();
                    txtbradd.Text = ds.Tables[0].Rows[0]["Branch_Address"].ToString();
                    txtcontno.Text = ds.Tables[0].Rows[0]["Contact_No"].ToString();
                    txtcpn.Text = ds.Tables[0].Rows[0]["Contact_Person_Name"].ToString();
                    txtemail.Text = ds.Tables[0].Rows[0]["Email_ID"].ToString();
                    txtifsc.Text = ds.Tables[0].Rows[0]["IFSC_Code"].ToString();
                    txtmicr.Text = ds.Tables[0].Rows[0]["MICR_Code"].ToString();
                }
            }
            catch (Exception ex) { }
        }
    }
}