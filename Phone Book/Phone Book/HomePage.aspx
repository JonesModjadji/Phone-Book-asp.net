<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Phone_Book.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Css/Style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <title>HomePage</title>
    <style type="text/css">
        .auto-style1 {
            width: 334px;
        }
    </style>
</head>
<body>
     <form id="form2" runat="server" style="">
         <center >
    <table>
        <thead>
          <h1> LOGIN </h1>
        </thead>
         <tr>
             <td><asp:Label runat="server" Text="Name " /></td>
             <td class="auto-style1"><asp:TextBox runat="server" ID="name" Width="310px" /></td>
             <td><asp:Label ID="Label19" runat="server"></asp:Label></td>
            </tr>
        <tr>
             <td><asp:Label runat="server" Text="Surname " /></td>
             <td class="auto-style1"><asp:TextBox runat="server" ID="surname" Width="310px" /></td>
            <td><asp:Label ID="Label20" runat="server"></asp:Label></td>
            </tr>
        <tr>
             <td><asp:Label runat="server" Text="Email " /></td>
             <td class="auto-style1"><asp:TextBox runat="server" ID="email" Width="310px" /></td>
             <td>
                 <asp:Label ID="Label21" runat="server"></asp:Label>
             </td>
            </tr>
        <br />
        <tr>
            <td></td>
             <td class="auto-style1"><asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" Text="New User" onClick="addContact_Click" Width="100px" />
                 <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary" Text="Log In" onClick="login_Click" Width="100px"/>
                 <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-primary" Width="100px" OnClick="LinkButton3_Click1">Clear</asp:LinkButton>
             </td>
            </tr>
        <tr>
            <td></td>
            <td class="auto-style1">
                <asp:Label ID="Label17" runat="server"></asp:Label>
            </td>

        </tr>
    </table>
             </center>
         </form>

    
</body>
</html>
