using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Phone_Book
{
    public partial class HomePage : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\USERS\MODJADJI\DOCUMENTS\GITHUB\SOFTWARE-DEVELOPER-TEST\PHONE BOOK\PHONE BOOK\APP_DATA\USERS.MDF;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("Contact.aspx");
            }
        }
        protected void addContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewContact.aspx");
        }

        protected void login_Click(object sender, EventArgs e)
        {
            con.Open();
            string user = email.Text.Trim();
            cmd.CommandText = "select * from users where name='" + name.Text + "'and surname='" + surname.Text + "' and email='" + email.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "users");
            if (name.Text.Length > 0)
            {
                Label19.Text = "";
                if (surname.Text.Length > 0)
                {
                    Label20.Text = "";
                    if (email.Text.Length > 0)
                    {
                        Label21.Text = "";
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            Session["user"] = user;
                            Response.Redirect("Contact.aspx");
                        }
                        else
                        {
                            Label17.Text = "User does not exist";
                        }
                    }
                    else { Label21.Text = "Email Field Is Empty"; }
                }
                else { Label20.Text = "Surname Field Is Empty"; }
            }
            else
            { Label19.Text = "Name Field Is Empty"; }


        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            name.Text = "";
            surname.Text = "";
            email.Text = "";
        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            name.Text = "";
            surname.Text = "";
            email.Text = "";
        }
    }
}