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
    public partial class ViewNewProject : System.Web.UI.Page
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
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("Get_ProjectMaster", prm);
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
                new SqlParameter("@Project_Id", _hdId.Value),
                new SqlParameter("@Delete_By",_hdId.Value)
            };

            DataSet ds = clsSQLExecute.Exec_Dataset_sp("sp_DeleteProject", prm);
            if (ds != null & ds.Tables.Count > 0)
            {
                if (int.Parse(ds.Tables[0].Rows[0][0].ToString()) > 0)


                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "MSG", "alert('Project has been deleted successfully')", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "MSG", "alert('Project could not be deleted successfully')", true);
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