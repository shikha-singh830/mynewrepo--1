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
    public partial class ViewDetailsaspx : System.Web.UI.Page
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
                DataSet ds = clsSQLExecute.Exec_Dataset_sp("View_Details", prm);
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
    }
}