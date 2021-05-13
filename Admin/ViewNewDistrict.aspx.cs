using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DALUtility;

namespace EGAGFS.Admin
{
    public partial class ViewNewDistrict : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMasters();
            }
        }

        private void bindMasters()
        {
            try
            {
                SqlParameter[] prm = { new SqlParameter("@action", "all") };
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Get_DistrictMaster", prm);
                GDV.DataSource = ds;
                GDV.DataBind();
            }
            catch (Exception ex)
            {
            }
        }     

        protected void GDV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GDV.PageIndex = e.NewPageIndex;
            bindMasters();
        }

        protected void imgDelete_Click(object sender, EventArgs e)
        {
            GridViewRow clickedrow = ((LinkButton)sender).NamingContainer as GridViewRow;
            HiddenField _hdId = (HiddenField)clickedrow.FindControl("hdId");
            SqlParameter[] prm = {
                new SqlParameter("@District_Id", _hdId.Value),
                new SqlParameter("@Delete_By",_hdId.Value)
            };

            DataSet ds = clsSQLExecute.Exec_Dataset_sp("sp_DeleteDistrict", prm);
            if (ds != null & ds.Tables.Count > 0)
            {
                if (int.Parse(ds.Tables[0].Rows[0][0].ToString()) > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "MSG", "alert('District has been deleted successfully')", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "MSG", "alert('District could not be deleted successfully')", true);
                    return;
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "MSG", "alert('An error occurred while processing your request.')", true);
                return;
            }
        }
    }
}