<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Phone_Book.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Css/Style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <title>Contacts</title>
</head>
<body >
    <form id="form1" runat="server">
    <div>
          <center>
    <table style="margin-left:-400px;">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="329px" Width="295px" />
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="About" Width="700px"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="information"></asp:Label>
                <asp:Button ID="VisitWeb" runat="server" CssClass="btn btn-primary" Text="Visit Website" OnClick="VisitWeb_Click" ></asp:Button>
                <asp:Button ID="RequestCV" runat="server" CssClass="btn btn-primary" Text="Request CV" OnClick="RequestCV_Click"></asp:Button>
            </td>
        </tr>
        </center>
    </table>
    </div>    
    </form>
</body>
</html>
