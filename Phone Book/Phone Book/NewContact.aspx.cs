using System;
using System.Data.SqlClient;
using System.IO;
namespace Phone_Book
{
    public partial class NewContact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\USERS\MODJADJI\DOCUMENTS\GITHUB\SOFTWARE-DEVELOPER-TEST\PHONE BOOK\PHONE BOOK\APP_DATA\USERS.MDF;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
       
        protected void btnHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            // if ((name.Text.Length < 1) && (surname.Text.Length < 1))
            // { Label11.Text = "Exceeded 150 Characters!,please make it shorter";
            //}
            // set the upload path
            String savePath = @"C:/Users\Modjadji/Documents/GitHub/Software-Developer-Test/Phone Book/Phone Book/Images/";

            if (name.Text.Length > 0)
            {
                Label11.Text = "";
                if (surname.Text.Length > 0)
                {
                    Label12.Text = "";
                    if (about.Text.Length < 150)
                    {
                        Label13.Text = "";
                        if (about.Text.Length > 0)
                        {
                            Label13.Text = "";
                            if (phone.Text.Length == 10)
                        {
                            Label14.Text = "";
                            if (email.Text.Length > 0)
                            {
                                Label15.Text = "";
                                if (FileUpload1.HasFile)
                                {
                                    Label16.Text = "";
                                        String fileName = FileUpload1.FileName;
                                        savePath += fileName;
                                        FileUpload1.SaveAs(savePath);
                                        //string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                                        //display file A


                                        // string targetPath = (Server.MapPath("~/Images/") + fileName);
                                        

                                        //  FileUpload1.SaveAs(targetPath);
                                        
                                        txtName2.Text = fileName;
                                      SqlDataSource1.Insert();


                                       // INSERT INTO users(name, surname, about, phone, email, photo) VALUES(@i1, @i2, @i3, @i4, @i5, @i6)
                                      /*  SqlCommand cmd = new SqlCommand("insert into users(name, surname, about, phone, email, photo,photoID) " +
                                            "values(@name,@surname,@about, @phone, @email, @photo,@photoID)", con);
                                        cmd.Parameters.AddWithValue("@name", name.Text);
                                        cmd.Parameters.AddWithValue("@surname", surname.Text);
                                        cmd.Parameters.AddWithValue("@about", about.Text);
                                        cmd.Parameters.AddWithValue("@phone", phone.Text);
                                        cmd.Parameters.AddWithValue("@email", email.Text);
                                        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileBytes);
                                        cmd.Parameters.AddWithValue("@PhotoID", fileName);
                                        */


                                        Response.Redirect("HomePage.aspx");
                                }
                                else { Label16.Text = "No User Photo Was Selected"; }
                            }
                            else
                            { Label15.Text = "The Email Field Is Empty"; }
                        }
                        else
                        { Label14.Text = "Add A 10 Digit Phone Number"; }
                    }
                        else { Label13.Text = "About Field Is Empty"; }
                    }
                    else { Label13.Text = "Exceeded 150 Characters!,please make it shorter"; }
                }
                else
                {
                    Label12.Text = "The Surname Field Is Empty";
                }
            }
            else
            {
                Label11.Text = "The Name Field Is Empty";
            }


            // else if (name.Text.Length > 150)
            //{
            //  SqlDataSource1.Insert();
            //}

            //else
            //{
            //   Label11.Text = "Exceeded 150 Characters!,please make it shorter";
            //}

            //con.Open();
            // SqlCommand cmd = con.CreateCommand();
            // cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into users values('"+name.Text+"','"+surname.Text+"','"+about.Text+"','"+phone.Text+"','"+email.Text+ "')";
            //cmd.ExecuteNonQuery();
            //con.Close();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            name.Text = "";
            surname.Text = "";
            about.Text = "";
            phone.Text = "";
            email.Text = "";
            FileUpload1.Dispose();
        }

        protected void txtName2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}