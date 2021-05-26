using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class RegistrationForm : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataSet DS = new DataSet();
            DS.ReadXml(Server.MapPath("yeshuvim_20190612.xml"));
            DropDownList1.DataTextField = "שם_ישוב_לועזי";
            DropDownList1.DataValueField = "סמל_ישוב";
            DropDownList1.DataSource = DS;
            DropDownList1.DataBind();

            ListItem li = new ListItem("Select", "-1");
            DropDownList1.Items.Insert(0, (li));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string firstName = Request.Form["fname"];
        string lastName = Request.Form["lname"];
        string email = Request.Form["email"];
        string password = Request.Form["password"];
        int age = int.Parse(Request.Form["age"]);
        string languages = "";
        string gender = "";

        foreach (ListItem li in CheckBoxList1.Items) {
            if (li.Selected) {
                languages += li.Text + " ";
            }
        }

        foreach (ListItem li in RadioButtonList1.Items) {
            if (li.Selected) {
                gender = li.Text;   
            }
        }
        
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\HRSchoolProject\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        string cmdString = string.Format("INSERT INTO Workers (FirstName, LastName, EmailAddress, Password, Year, Languages, City, Gender) VALUES (N'{0}', N'{1}', N'{2}', N'{3}', {4}, N'{5}', N'{6}', N'{7}')", firstName, lastName, email, password, age, languages, DropDownList1.SelectedItem.Text, gender);
        cmd = new SqlCommand(cmdString, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignIn.aspx");
    }
}