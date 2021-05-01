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
    public partial class State : System.Web.UI.Page
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        private SqlCommand sqlCommand;
        private SqlDataAdapter sqlDataAdapter;
        DataSet dtSet;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStateData();
            }
            btnUpdate.Visible = false;
            btnAddState.Visible = true;
        }

        private static void ShowAlertMessage(string error)
        {
            System.Web.UI.Page page = System.Web.HttpContext.Current.Handler as System.Web.UI.Page;
            if (page != null)
            {
                error = error.Replace("'", "\'");
                System.Web.UI.ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + error + "');", true);
            }
        }
        public void CreateConnection()
        {
            SqlConnection sqlConnection = new SqlConnection(strConnectionString);
            sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
        }
        public void OpenConnection()
        {
            sqlCommand.Connection.Open();
        }
        public void CloseConnection()
        {
            sqlCommand.Connection.Close();
        }
        public void DisposeConnection()
        {
            sqlCommand.Connection.Dispose();
        }

        public void BindStateData()
        {          
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
              SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.Fill(dt);
                grvState.DataSource = dt;
                grvState.DataBind();
                try
                {
                    CreateConnection();
                    OpenConnection();
                    sqlCommand.CommandText = "Sp_AddViewState";
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@State_Id", "Select");
                    sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                    dtSet = new DataSet();
                    sqlDataAdapter.Fill(dtSet);
                    grvState.DataSource = dtSet;
                    grvState.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("The Error is " + ex);
                }
                finally
                {
                    CloseConnection();
                    DisposeConnection();
                }
        }
        

        protected void btnAddState_Click(object sender, EventArgs e)
        {
            try
            {
                CreateConnection();
                OpenConnection();
                sqlCommand.CommandText = "Sp_AddViewState";
                sqlCommand.CommandType = CommandType.StoredProcedure;
              //  sqlCommand.Parameters.AddWithValue("@State_Id", "Add");
                sqlCommand.Parameters.AddWithValue("@State_Code", Convert.ToString(txtStateCode.Text.Trim()));
                sqlCommand.Parameters.AddWithValue("@StateName", Convert.ToString(txtStateName.Text.Trim()));
                sqlCommand.Parameters.AddWithValue("@Description", Convert.ToString(txtDescription.Text.Trim()));
                int result = Convert.ToInt32(sqlCommand.ExecuteNonQuery());
                if (result > 0)
                {
                    ShowAlertMessage("Record Inserted Successfully");
                    BindStateData();
                    ClearControls();
                }
                else
                {
                    ShowAlertMessage("Failed");
                }
            }
            catch (Exception ex)
            {
                ShowAlertMessage("Check your input data");
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }
        
        protected void grvState_RowEditing(object sender, GridViewEditEventArgs e)
        {
            btnAddState.Visible = false;
            //btnUpdate.Visible = true;

            int RowIndex = e.NewEditIndex;
            Label UserId = (Label)grvState.Rows[RowIndex].FindControl("lblUserId");
            Session["UserId"] = UserId.Text;

            txtStateCode.Text = ((Label)grvState.Rows[RowIndex].FindControl("lblStateCode")).Text.ToString();
            txtStateName.Text = ((Label)grvState.Rows[RowIndex].FindControl("lblStateName")).Text.ToString();
            txtDescription.Text = ((Label)grvState.Rows[RowIndex].FindControl("lblDescription")).Text.ToString();
        }

        protected void grvState_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvState.EditIndex = -1;
            BindStateData();
        }

        protected void grvState_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                CreateConnection();
                OpenConnection();
                Label id = (Label)grvState.Rows[e.RowIndex].FindControl("lblUserId");
                sqlCommand.CommandText = "Sp_AddViewState";
                sqlCommand.Parameters.AddWithValue("@State_Id", "Delete");
                sqlCommand.Parameters.AddWithValue("@UserId", Convert.ToInt32(id.Text));
                sqlCommand.CommandType = CommandType.StoredProcedure;
                int result = Convert.ToInt32(sqlCommand.ExecuteNonQuery());
                if (result > 0)
                {
                    ShowAlertMessage("Record Is Deleted Successfully");
                    grvState.EditIndex = -1;
                    BindStateData();
                }
                else
                {
                    lblMessage.Text = "Failed";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    BindStateData();
                }
            }
            catch (Exception ex)
            {
                ShowAlertMessage("Check your input data");
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }      

        protected void grvState_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvState.PageIndex = e.NewPageIndex;
            BindStateData();
        }
   
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {

                CreateConnection();
                OpenConnection();

                sqlCommand.CommandText = "Sp_AddViewState";
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@State_Id", "Update");
                sqlCommand.Parameters.AddWithValue("@StateCode", Convert.ToString(txtStateCode.Text.Trim()));
                sqlCommand.Parameters.AddWithValue("@StateName", Convert.ToString(txtStateCode.Text.Trim()));
                sqlCommand.Parameters.AddWithValue("@Description", Convert.ToString(txtDescription.Text.Trim()));
                //sqlCommand.Parameters.AddWithValue("@Add_By", Convert.ToInt32(UserId.Text.Trim()));
                //sqlCommand.Parameters.AddWithValue("@Edit_By", Convert.ToInt32(UserId.Text.Trim()));

                int result = Convert.ToInt32(sqlCommand.ExecuteNonQuery());
                if (result > 0)
                {
                    ShowAlertMessage("Record Is Updated Successfully");
                    grvState.EditIndex = -1;
                    BindStateData();
                    ClearControls();
                }
                else
                {
                    ShowAlertMessage("Failed");
                }
            }

            catch (Exception ex)
            {
                ShowAlertMessage("Check your input data");
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearControls();
        }

        public void ClearControls()
        {
            txtStateCode.Text = "";
            txtStateName.Text = "";
            txtDescription.Text = "";
        }

        //protected void btnUpdate_Click(object sender, EventArgs e)
        //{
        //    try
        //    {

        //        CreateConnection();
        //        OpenConnection();

        //        sqlCommand.CommandText = "Sp_AddViewState";
        //        sqlCommand.CommandType = CommandType.StoredProcedure;
        //        sqlCommand.Parameters.AddWithValue("@State_Id", "Update");
        //        sqlCommand.Parameters.AddWithValue("@StateCode", Convert.ToString(txtStateCode.Text.Trim()));
        //        sqlCommand.Parameters.AddWithValue("@StateName", Convert.ToString(txtStateCode.Text.Trim()));
        //        sqlCommand.Parameters.AddWithValue("@Description", Convert.ToString(txtDescription.Text.Trim()));
        //        sqlCommand.Parameters.AddWithValue("@Add_By", Convert.ToInt32(UserId.Text.Trim()));
        //        sqlCommand.Parameters.AddWithValue("@Edit_By", Convert.ToInt32(UserId.Text.Trim()));

        //        int result = Convert.ToInt32(sqlCommand.ExecuteNonQuery());
        //        if (result > 0)
        //        {
        //            ShowAlertMessage("Record Is Updated Successfully");
        //            grvState.EditIndex = -1;
        //            BindStateData();
        //            ClearControls();
        //        }
        //        else
        //        {
        //            ShowAlertMessage("Failed");
        //        }
        //    }

        //    catch (Exception ex)
        //    {
        //        ShowAlertMessage("Check your input data");
        //    }
        //    finally
        //    {
        //        CloseConnection();
        //        DisposeConnection();
        //    }
        //}
    }
}