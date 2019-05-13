<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs" Inherits="MeroOffice.DeleteEmployee" %>

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
            margin-left: 280px;
            text-align:left;
            width:300px;
        }
        #display{
            float:left;
            margin-left: 50px;
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
                <a href="AdminViewEmployee.aspx" style="text-decoration:none;">
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
    <form id="form1" runat="server" >
        <div id="main-1">
            <table>
                <tr>
                    <th class="auto-style1">First Name</th>
                    <th>:</th>
                    <th><asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                    </th>
               </tr>
                <tr>
                     <th>E.ID</th>
                     <th>:</th>
                      <th><asp:TextBox ID="txtEid" runat="server"></asp:TextBox></th>
                </tr>
                <tr>
                    <th class="auto-style1">&nbsp;</th>
                    <th>&nbsp;</th>
                    <th><asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" /> </th>
                </tr>
            
            </table>
        </div>
        
        <div id="display">
            
                            <asp:GridView ID="GridView1" runat="server">
                            </asp:GridView>
            
         </div>
    </form>
</body>
</html>
