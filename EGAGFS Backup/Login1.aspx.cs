using PDKnowledgePortal.admin;
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
    public partial class Login1 : System.Web.UI.Page
    {
        RemoveWildChar RemoveWildChar = new RemoveWildChar();
        protected void Page_Load(object sender, EventArgs e)
        {
            // btnLogin.Click += btnLogin_Click;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //SqlConnection con;
            //string strSQL = "";
            //con = new SqlConnection(ConfigurationManager.AppSettings["myconnection"]);
            //try
            //{
            //    con.Open();
            //    strSQL = "SELECT User_Id,User_Name,Password FROM Login_Master WHERE User_Id=@User_Id AND Password= @Password AND Status='1'";
            //    SqlCommand cmdAuthentication = new SqlCommand(strSQL.ToString(), con);

            //    SqlParameter login_User_Id = new SqlParameter("@User_Id", SqlDbType.VarChar, 50);

            //    String Output = RemoveWildChar.RemoveWildCharacterLogin(txtUsername.Value);
            //    login_User_Id.Value = Output.ToString();
            //    cmdAuthentication.Parameters.Add(login_User_Id);

            //    SqlParameter login_Password = new SqlParameter("@Password", SqlDbType.VarChar, 50);

            //    String Output1 = RemoveWildChar.RemoveWildCharacterLogin(txtPassword.Value);
            //    login_Password.Value = Output1.ToString();

            //    cmdAuthentication.Parameters.Add(login_Password);
            //    SqlDataReader myReader = cmdAuthentication.ExecuteReader();

            //    if (myReader.HasRows)
            //    {

            //        myReader.Read();
            //        if ((myReader["Password"].ToString() == txtPassword.Value.Trim()) && (myReader["User_Id"].ToString() == txtUsername.Value.Trim()))
            //        {
            //            SessionHandler oSessionHandler = new SessionHandler();
            //            oSessionHandler.username = myReader["User_Name"].ToString();
            //            oSessionHandler.userid = myReader["User_Id"].ToString();
            //            //oSessionHandler.loginid = int.Parse(myReader["userID1"].ToString());
            //            // oSessionHandler.role = myReader["accType"].ToString();

            //            Session["Login"] = oSessionHandler;
            //            //  string role = myReader["accType"].ToString();
            //            myReader.Close();
            //            Response.Redirect("Login.aspx");
            //        }

            //    }
            //    else
            //    {
            //        ClientScript.RegisterStartupScript(GetType(), "MessagePopUp", "<script language='JavaScript'>alert('Invalid Login-Id/Password!')</script>");
            //    }
            //}
            //catch (Exception ex) { Response.Write("" + ex.Message.ToString()); }
            //finally
            //{
            //    if (con.State == ConnectionState.Open)
            //    {
            //        con.Close();
            //        con.Dispose();
            //    }

            //}
        }

        //    public string RemoveWildCharacter(string strText)
        //    {

        //        strText = strText.Trim();
        //        if (strText.Length != 0)
        //        {
        //            strText = strText.Replace("<title", "");
        //            strText = strText.Replace("<script", "");
        //            strText = strText.Replace("</title>", "");
        //            strText = strText.Replace("<span", "");


        //        }
        //        else
        //        {
        //            strText = "";
        //        }
        //        return strText;

        //        //if (strText.ToString().Length > 1)
        //        //{
        //        //    //strText = Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(strText, "", ""), "=", ""), "<", ""), ">", ""), "--", ""), "'", ""), "%", ""), ";", ""), "&", ""), "", ""), "\"\"", ""), "#", ""), "", ""), "", ""), "&quot;", ""), "`", ""), "&quot;", ""), "&lt", ""), "&gt", ""), "&#40", ""), "&#41", ""), "&#35", ""), "&#38", ""), "&apos;", ""), "/", ""), "\u0027", "", RegexOptions.IgnoreCase);
        //        //    //strText = Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(strText, "<span", ""), "span", ""), "select", ""), "update", ""), "delete", ""), "", ""), "=", ""), "<", ""), ">", ""), "--", ""), "'", ""), "%", ""), ";", ""), "&", ""), "", ""), "\"\"", ""), "#", ""), "", ""), "", ""), "&quot;", ""), "`", ""), "&quot;", ""), "&lt", ""), "&gt", ""), "&#40", ""), "&#41", ""), "&#35", ""), "&#38", ""), "&apos;", ""), "/", ""), "\u0027", "", RegexOptions.IgnoreCase);
        //        //strText = Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(Regex.Replace(strText, "</title>", ""), "src=", ""), ".com/ur", ""), "http://", ""), "</script>", ""), ".com", ""), ".php", ""), "<span", ""), "span", ""), "select", ""), "update", ""), "delete", ""), "", ""), "=", ""), "<", ""), ">", ""), "--", ""), "'", ""), "%", ""), ";", ""), "&", ""), "", ""), "\"\"", ""), "#", ""), "", ""), "", ""), "&quot;", ""), "`", ""), "&quot;", ""), "&lt", ""), "&gt", ""), "&#40", ""), "&#41", ""), "&#35", ""), "&#38", ""), "&apos;", ""), "/", ""), "\u0027", "", RegexOptions.IgnoreCase);
        //        //}
        //        //return strText;

        //    }
        //}
        //public class SessionHandler
        //{
        //    //public int loginid;
        //    public string userid;
        //    public string username;
        //   // public string role;

    }

   

    }
