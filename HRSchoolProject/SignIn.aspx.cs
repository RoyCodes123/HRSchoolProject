using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class SignIn : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = Request.Form["email"];
        string password = Request.Form["password"];

        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\HRSchoolProject\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        string cmdString = string.Format("SELECT * FROM Workers WHERE EmailAddress = N'{0}' AND Password = '{1}'", email, password);
        cmd = new SqlCommand(cmdString, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            if (dr.Read())
                Response.Write("Success");
        }
        else { Response.Write("Failure"); }
        con.Close();
    }
}