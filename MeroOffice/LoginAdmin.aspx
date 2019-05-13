<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="MeroOffice.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginAdmin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        
        <div id="main-body">
            <div id="main-head">MERO OFFICE
            </div>
            <div id="index">
            <table >
                 <tr>
                    <th class="auto-style1">&nbsp;</th>
                
                </tr>
                 <tr>
                    <th class="auto-style1">&nbsp;</th>
                </tr>
                <tr>
                    <th class="auto-style1"> Username</th>
                    <th style="width:2%">:</th>
                    <th id="username">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </th>
                </tr>
                 <tr>
                    <th class="auto-style1" id="password">Password</th>
                     <th style="width:2%">:</th>
                     <th>
                         <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                     </th>
                </tr>
                 <tr>
                    <th class="auto-style1">&nbsp;</th>
                     <th style="width:2%">&nbsp;</th>
                     <th>
                         <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="LogIn" />
                     </th>
                </tr>
              
            </table>
           </div>
        </div>

    </form>
</body>
</html>
