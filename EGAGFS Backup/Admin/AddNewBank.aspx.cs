using DALUtility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EGAGFS.Admin
{
    public partial class AddNewBank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["nt"] != null)
                {
                    SetRecord(sender, e);
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {          
            try
            {               
                string sname = txtname.Text;
                string desc = txtdesc.Text;
                SqlParameter[] prm = {                                  
                                        new SqlParameter("@Bank_Id",Request.QueryString["nt"]),                                      
                                        new SqlParameter("@Bank_Name",txtname.Text),
                                        new SqlParameter("@Description",txtdesc.Text)
                                       // new SqlParameter("@userId",((SessionHandler)Session["admin"]).userid)
                };
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Insert_NewBank", prm);
                string CloseWindow = "alert('Unable to save Bank, Please try again later.')";
                if (ds != null & ds.Tables.Count > 0)
                {
                    if (int.Parse(ds.Tables[0].Rows[0][0].ToString()) > 0)
                    {
                        resetFields();
                        if (Request.QueryString["nt"] != null)
                        {
                            CloseWindow = "alert('Bank updated Successfully.');location.href='ViewNewBank.aspx'";
                        }
                        else
                        {
                            CloseWindow = "alert('Bank Saved Successfully.')";
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
                SqlParameter[] prm = { new SqlParameter("@action", "edit"), new SqlParameter("@Bank_Id", Request.QueryString["nt"]) };
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Get_BankMaster", prm);
                if (ds != null & ds.Tables.Count > 0)
                {                 
                    txtname.Text = ds.Tables[0].Rows[0]["Bank_Name"].ToString();
                    txtdesc.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                }
            }
            catch (Exception ex) { }
        }
    }
}