﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Phone_Book
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\USERS\MODJADJI\DOCUMENTS\GITHUB\SOFTWARE-DEVELOPER-TEST\PHONE BOOK\PHONE BOOK\APP_DATA\USERS.MDF;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
                con.Open();
            showdata();
        }
        public void showdata()
        {
           
            cmd.CommandText = "select * from users where email='"+ Session["user"]+"'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text= ds.Tables[0].Rows[0]["name"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["surname"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["about"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["phone"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["email"].ToString();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                string imagename = dr["photoID"].ToString();

                Image1.ImageUrl = "~/Images/" + imagename;
            }
           
            Label6.Text = "www." + Label5.Text + " | @info" + Label5.Text + " | " + Label4.Text ;
        }
        protected void VisitWeb_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.google.co.za");
        
        }

        protected void RequestCV_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.LinkedIn.com");
        }
    }
    
}