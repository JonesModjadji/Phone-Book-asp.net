<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewContact.aspx.cs" Inherits="Phone_Book.NewContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Css/Style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <title>New Contacts</title>
</head>
<body>
    <form id="form1" runat="server">
         <center >
    <table >
        <thead>
          <h1> SIGN UP </h1>
        </thead>
        <tr>
            <td><asp:Label runat="server" Text="Name" /></td>
            <td><asp:TextBox runat="server" ID="name" Width="310px" placeholder=" David" /></td>
            <td><asp:Label ID="Label11" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label runat="server" Text="Surname" /></td>
            <td><asp:TextBox runat="server" ID="surname" Width="310px" placeholder=" King" /></td>
                <td><asp:Label ID="Label12" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label runat="server" Text="About you" /></td>
            <td><asp:TextBox runat="server" ID="about"  Width="310px" placeholder="Start with 'I am..'"/></td>
            <td><asp:Label ID="Label13" runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td><asp:Label runat="server" Text="Phone" /></td>
            <td><asp:TextBox runat="server" ID="phone"  Width="310px" placeholder="0713223863"/></td>
             <td><asp:Label ID="Label14" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label runat="server" Text="Email" /></td>
            <td><asp:TextBox runat="server" ID="email" Type="email" Width="310px" placeholder=" David@yahoo.com"/></td>
            <td><asp:Label ID="Label15" runat="server"></asp:Label></td>
        </tr>
    <tr>
            <td><asp:Label runat="server" Text="Photo" /></td>
            <td><asp:FileUpload ID="FileUpload1" runat="server"  Width="310px" /></td>
        <td><asp:Label ID="Label16" runat="server"></asp:Label></td>
        </tr>
             <tr>
            <td>
                <asp:TextBox ID="txtName2" runat="server" Height="21px" Width="16px" OnTextChanged="txtName2_TextChanged" BorderStyle="None"></asp:TextBox>
                 </td>
            <td><asp:LinkButton runat="server" CssClass="btn btn-primary" ID="btnHomePage" Text="Home Page" OnClick="btnHomePage_Click" Width="110px" />
                <asp:LinkButton runat="server" CssClass="btn btn-primary" Text="Save" ID="btnSave" onClick="btnSave_Click" Width="100px" />
                <asp:LinkButton ID="btnClear" runat="server" CssClass="btn btn-primary" Text="Clear" onClick="btnClear_Click" Width="90px"/>
            </td>
        </tr>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True" InsertCommand="INSERT INTO users(name, surname, about, phone, email, photo, photoID) VALUES (@i1,@i2,@i3,@i4,@i5,@i6,@i7)" ProviderName="System.Data.SqlClient">
              <InsertParameters>
                  <asp:ControlParameter ControlID="name" Name="i1" PropertyName="Text" />
                  <asp:ControlParameter ControlID="surname" Name="i2" PropertyName="Text" />
                  <asp:ControlParameter ControlID="about" Name="i3" PropertyName="Text" />
                  <asp:ControlParameter ControlID="phone" Name="i4" PropertyName="Text" />
                  <asp:ControlParameter ControlID="email" Name="i5" PropertyName="Text" />
                  <asp:ControlParameter ControlID="FileUpload1" Name="i6" PropertyName="FileBytes" />
                  <asp:ControlParameter ControlID="txtName2" Name="i7" PropertyName="Text" />
              </InsertParameters>
        </asp:SqlDataSource>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
       </table>
             </center>     
    </form>
</body>
</html>
