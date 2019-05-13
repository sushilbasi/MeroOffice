<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewEmployee.aspx.cs" Inherits="MeroOffice.AdminViewEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        #head {
            width: 100%;
            text-align: center;
            font-size: 45px;
            background-color: aliceblue;
        }
        .navbar {
            overflow: hidden;
            background-color: #78cdff;
            width: 60%;
            margin: 0 auto;
        }

        .menu {
            float: left;
            overflow: hidden;
            width: 25%
        }

            .menu .dropbtn {
                font-size: 16px;
                border: none;
                outline: none;
                color: white;
                padding: 14px 16px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .menu:hover .dropbtn {
                background-color: grey;
            }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content #b {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

                .dropdown-content #b:hover {
                    background-color: #ddd;
                }

        .menu:hover .dropdown-content {
            display: block;
        }

        #entry {
                float: left;
            }
        #main-1{
            float:left;
            margin-left: 380px;
            text-align:left;
            width:380px;
        }


  </style>
</head>
<body>
    <div id="head">  WELCOME ADMIN </div>
    <div class="navbar">
        <div class="menu">
            <div class="dropbtn">
                Employee
            </div>
            <div class="dropdown-content">
                <a href="AddEmployee.aspx" style="text-decoration:none;">
                    <div id="b">
                        ADD

                    </div>
                </a>
                <a href="EditEmployee.aspx" style="text-decoration:none;">
                    <div id="b">
                        EDIT

                    </div>
                </a>
                <a href="DeleteEmployee.aspx" style="text-decoration:none;">
                    <div id="b">
                        DELETE

                    </div>
                </a>
                <a href="Search.aspx" style="text-decoration:none;">
                    <div id="b">
                        SEARCH
                    </div>
                </a>

            </div>
        </div>

        <div class="menu">
            <a href="AdminViewSchedule.aspx" style="text-decoration:none;">
                <div class="dropbtn">
                    Schedule
                </div>
            </a>
       </div>
    </div>
    <form id="form1" runat="server">
        <div id="main-1">
            <table>
                 <tr>
                     <th>EID</th>
                     <th>&nbsp;</th>
                     <th class="auto-style3">
                         <asp:TextBox ID="txtEID" runat="server"></asp:TextBox>
                     </th>
                     <th class="auto-style4">
                         <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="SEARCH" />
                     </th>
                 </tr>
                 <tr>
                     <th>Full Name</th>
                     <th>:</th>
                     <th class="auto-style3">
                         <asp:Panel ID="Panel2" runat="server">
                             <asp:Label ID="lblFname" runat="server" Width="100%"></asp:Label>
                         </asp:Panel>
                     </th>
                     <th class="auto-style4">
                         <asp:Panel ID="Panel3" runat="server">
                             <asp:Label ID="lblLname" runat="server" Width="100%"></asp:Label>
                         </asp:Panel>
                     </th>
                 </tr>
                 <tr>
                     <th>Gender</th>
                     <th>:</th>
                     <th class="auto-style3">
                         <asp:Panel ID="Panel4" runat="server">
                             <asp:Label ID="lblGender" runat="server" Width="100%"></asp:Label>
                         </asp:Panel>
                     </th>
                     <th class="auto-style4">
                     </th>
                 </tr>
                <tr>
                     <th>Address</th>
                     <th>:</th>
                     <th class="auto-style3">
                         <asp:Panel ID="Panel5" runat="server">
                             <asp:Label ID="lblAddress" runat="server" Width="100%"></asp:Label>
                         </asp:Panel>
                     </th>
                 </tr>
                <tr>
                     <th>Date Of Birth</th>
                     <th>:</th>
                     <th class="auto-style3">
                         <asp:Panel ID="Panel6" runat="server">
                             <asp:Label ID="lblDob" runat="server" Width="100%"></asp:Label>
                         </asp:Panel>
                     </th>
                 </tr>
                <tr>
                     <th>Email</th>
                     <th>:</th>
                     <th class="auto-style3">
                         <asp:Panel ID="Panel7" runat="server">
                             <asp:Label ID="lblEmail" runat="server" Width="100%"></asp:Label>
                         </asp:Panel>
                     </th>
                 </tr>
                <tr>
                     <th>
                         <asp:Panel ID="Panel1" runat="server">
                         </asp:Panel>
                     </th>
                     <th>&nbsp;</th>
                     <th class="auto-style3">
                         &nbsp;</th>
                 </tr>
            </table>
        </div>
    </form>
</body>
</html>
