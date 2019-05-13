<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MeroOffice.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <th>Username</th>
                <th>:</th>
                <th><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></th>
            </tr>
            <tr>
                <th>First Name</th>
                <th>:</th>
                <th><asp:TextBox ID="txtFname" runat="server"></asp:TextBox></th>
            </tr>
            <tr>
                <th>Last Name</th>
                <th>:</th>
                <th><asp:TextBox ID="txtLname" runat="server"></asp:TextBox></th>
            </tr>
            <tr>
                <th>Address</th>
                <th>:</th>
                <th><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></th>
            </tr>
            <tr>
                <th>Password</th>
                <th>:</th>
                <th><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></th>
            </tr>

            <tr>
                <th>Date of Birth</th>
                <th>:</th>
                <th><asp:TextBox ID="txtDob" runat="server"></asp:TextBox></th>
            </tr>
            <tr>
                <th>Email</th>
                <th>:</th>
                <th><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></th>
            </tr>
            
            <tr>
                <th></th>
                <th></th>
                <th>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" />
                </th>
            </tr>
          
        </table>
     
    </form>
</body>
</html>
