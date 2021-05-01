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
    public partial class AddNewProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                statebind();
               //s districtbind();
                banknamebind();


                if (Request.QueryString["nt"] != null)
                {
                   // SetRecord(sender, e);
                }
            }
        }

       
        public void statebind()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            SqlCommand cmd = new SqlCommand("select * from State_Master", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ddlstate.DataSource = ds;
            ddlstate.DataBind();
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            districtbind(Convert.ToInt32( ddlstate.SelectedValue));
        }

        //bind district dropdown
        public void districtbind(int State_id)
        {
             int District_Id = Convert.ToInt32(ddldistrict.SelectedValue);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from District_Master where State='"+ State_id + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ddldistrict.DataSource = ds.Tables[0];
            ddldistrict.DataBind();

        }

        //bind bank dropdown
        public void banknamebind()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            SqlCommand cmd = new SqlCommand("select * from Bank_Master", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ddlbankname.DataSource = ds;
            ddlbankname.DataBind(); 
        }

        protected void ddlbankname_SelectedIndexChanged(object sender, EventArgs e)
        {
            branchbind(Convert.ToInt32(ddlbankname.SelectedValue));
        }

        //bind branch dropdown
        public void branchbind(int Bank_Id)
        {
            int BankBranch_Id = Convert.ToInt32(ddlbankname.SelectedValue);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Bank_Branch_Master where Bank_Id='" + BankBranch_Id + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ddlbranch.DataSource = ds.Tables[0];
            ddlbranch.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime regdate = Convert.ToDateTime(Textregdate.Text.Split('-')[2]+"-"+ Textregdate.Text.Split('-')[1]+"-"+ Textregdate.Text.Split('-')[0]);
                DateTime regdate22 = Convert.ToDateTime(txtdbmhly.Text.Split('-')[2]+"-"+ txtdbmhly.Text.Split('-')[1]+"-"+ txtdbmhly.Text.Split('-')[0]);

                SqlParameter[] prm = {
                                        new SqlParameter("@Project_Id",Request.QueryString["nt"]),
                                        new SqlParameter("@Name_of_the_FPC",txtnamefpc.Text),
                                        new SqlParameter("@State",ddlstate.SelectedItem.Value),
                                        new SqlParameter("@District",ddldistrict.SelectedItem.Value),
                                        new SqlParameter("@Correspondence_Address",txtcadd.Text),
                                        new SqlParameter("@Contact_No",txtcontno.Text),
                                        new SqlParameter("@Mobile_No",txtmono.Text),
                                        new SqlParameter("@Email_ID",txtemail.Text),
                                        new SqlParameter("@Registration_No",txtregn.Text),
                                        new SqlParameter("@Registration_Date",regdate.ToString("yyyy-MM-dd")),
                                        new SqlParameter("@Business_of_FPC",txtbufpc.Text),
                                        new SqlParameter("@No_of_Small_Shareholder_Members",txtssm.Text),
                                        new SqlParameter("@No_of_Marginal_Shareholder_Members",txtmsm.Text),
                                        new SqlParameter("@No_of_Landless_Shareholder_Members",txtlsm.Text),
                                        new SqlParameter("@Total_Shareholder_Members",txttsm.Text),
                                        new SqlParameter("@Authorised_Capital",txtac.Text),
                                        new SqlParameter("@Paid_Up_Capital",txtpuc.Text),
                                        new SqlParameter("@Amt_of_Equity_Grant_Sought",txtaegs.Text),
                                        new SqlParameter("@Maximum_Shareholding_of_an_Individual_Shareholder_Member",txtmsism.Text),
                                        new SqlParameter("@Maximum_Shareholding_of_an_Institutional_Member",txtmsim.Text),
                                        new SqlParameter("@Bank_Name_in_which_account_is_maintained",ddlbankname.SelectedItem.Value),
                                        new SqlParameter("@Branch_Name",ddlbranch.SelectedItem.Value),
                                        new SqlParameter("@IFSC_Code",txtifsc.Text),
                                        new SqlParameter("@Account_No",txtacc.Text),
                                        new SqlParameter("@No_of_Directors",txtnod.Text),
                                        new SqlParameter("@Mode_of_Board_Formation",RadioButtonList1.SelectedValue),
                                        new SqlParameter("@No_of_Women_Directors",txtnwd.Text),
                                        new SqlParameter("@Project_related_to_ST_SC",RadioButtonList2.SelectedValue),
                                        new SqlParameter("@Dates_of_Board_Meetings_held_in_the_last_year",regdate22.ToString("yyyy-MM-dd")),
                                        new SqlParameter("@No_of_Functional_Committees_of_the_FPC",txtnfcfpc.Text),
                                        new SqlParameter("@Roles_Responsibilities_of_Board_of_Directors",txtrrbod.Text)                                    
                                       // new SqlParameter("@userId",((SessionHandler)Session["admin"]).userid)
                };
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Insert_NewProject", prm);
                string CloseWindow = "alert('Unable to save Project, Please try again later.')";
                if (ds != null & ds.Tables.Count > 0)
                {
                    if (int.Parse(ds.Tables[0].Rows[0][0].ToString()) > 0)
                    {
                        //resetFields();
                        if (Request.QueryString["nt"] != null)
                        {
                            CloseWindow = "alert('Project updated Successfully.');location.href='ViewNewProject.aspx'";
                        }
                        else
                        {
                            CloseWindow = "alert('Project Saved Successfully.')";
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

        //private void resetFields()
        //{
        //    ddlbank.SelectedValue = "0";
        //    txtbrname.Text = "";
        //    ddlstate.SelectedValue = "0";
        //    ddldistrict.SelectedValue = "0";
        //    txtbradd.Text = "";
        //    txtcontno.Text = "";
        //    txtcpn.Text = "";
        //    txtemail.Text = "";
        //    txtifsc.Text = "";
        //    txtmicr.Text = "";
        //}

        protected void btnReset_Click(object sender, EventArgs e)
        {
            //resetFields();
        }

        //private void SetRecord(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        SqlParameter[] prm = { new SqlParameter("@action", "edit"), new SqlParameter("@BankBranch_Id", Request.QueryString["nt"]) };
        //        DataSet ds = clsSQLExecute.Exec_Dataset_sp("Get_BankBranchMaster", prm);
        //        if (ds != null & ds.Tables.Count > 0)
        //        {
        //            ddlbank.SelectedValue = ds.Tables[0].Rows[0]["Bank_Name"].ToString();
        //            txtbrname.Text = ds.Tables[0].Rows[0]["Branch_Name"].ToString();
        //            ddlstate.SelectedValue = ds.Tables[0].Rows[0]["State"].ToString();
        //            ddldistrict.SelectedValue = ds.Tables[0].Rows[0]["District"].ToString();
        //            txtbradd.Text = ds.Tables[0].Rows[0]["Branch_Address"].ToString();
        //            txtcontno.Text = ds.Tables[0].Rows[0]["Contact_No"].ToString();
        //            txtcpn.Text = ds.Tables[0].Rows[0]["Contact_Person_Name"].ToString();
        //            txtemail.Text = ds.Tables[0].Rows[0]["Email_ID"].ToString();
        //            txtifsc.Text = ds.Tables[0].Rows[0]["IFSC_Code"].ToString();
        //            txtmicr.Text = ds.Tables[0].Rows[0]["MICR_Code"].ToString();
        //        }
        //    }
        //    catch (Exception ex) { }
        //}
    }
}