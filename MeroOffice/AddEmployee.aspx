Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="MeroOffice.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="admin.css" rel="stylesheet" />
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
  
        .auto-style1 {
            height: 27px;
        }
     
        #main-1{
            float:left;
            margin-left: 280px;
            text-align:left;
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
      <div id="show">
              
             <form id="form1" runat="server">
                        <div id="main-1">
                            <div id="entry">
                                <table>
                                    <tr>
                                        <th class="auto-style1"></th>
                                    </tr>
                                     <tr>
                                        <th class="auto-style1">&nbsp;</th>
                                    </tr>
                                     <tr>
                                        <th class="auto-style1">Username</th>
                                        <th>:</th>
                                        <th>
                                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                         </th>
                                         <th>
                                             &nbsp;</th>
                                    </tr>
                                     <tr>
                                        <th class="auto-style1">First Name</th>
                                        <th>:</th>
                                        <th>
                                            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                                         </th>
                                         <th>
                                             &nbsp;</th>
                                    </tr>
                                    <tr>
                                        <th class="auto-style1">Last Name</th>
                                        <th>:</th>
                                        <th>
                                            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                                         </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                    <tr>
                                        <th class="auto-style1">Password</th>
                                        <th>:</th>
                                        <th>
                                            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                         </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                    <tr>
                                        <th class="auto-style1">Date of Birth</th>
                                        <th>:</th>
                                        <th>
                                            <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>
                                         </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                    <tr>
                                        <th class="auto-style1">Email</th>
                                        <th>:</th>
                                        <th>
                                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                         </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                    <tr>
                                        <th class="auto-style1">Address</th>
                                        <th>:</th>
                                        <th>
                                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                         </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                    <tr>
                                        <th class="auto-style1">Gender</th>
                                        <th>:</th>
                                        <th>
                                            <asp:RadioButton ID="RadioMale" Text="Male" runat="server" GroupName="gender" />
                                            <asp:RadioButton ID="RadioFemale" Text="Female" runat="server" GroupName="gender" /> 
                                        </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                   
                                    <tr>
                                        <th class="auto-style1">Image</th>
                                        <th>&nbsp;</th>
                                        <th>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </th>
                                        <th>
                                            <asp:Label ID="lblError" runat="server"></asp:Label>
                                        </th>
                                    </tr>
                                   
                                    <tr>
                                        <th class="auto-style1">Faculty</th>
                                        <th>&nbsp;</th>
                                        <th>
                                            <asp:TextBox ID="txtFaculty" runat="server"></asp:TextBox>
                                        </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                   
                                    <tr>
                                        <th class="auto-style1">First Sem</th>
                                        <th>&nbsp;</th>
                                        <th>
                                            <asp:DropDownList ID="ddlFirst" runat="server" Height="45px" Width="274px">
                                            </asp:DropDownList>
                                        </th>
                                        <th>
                                            <asp:Label ID="lblFirst" runat="server"></asp:Label>
                                        </th>
                                    </tr>
                                   
                                    <tr>
                                        <th class="auto-style1">Second Sem</th>
                                        <th class="auto-style1"></th>
                                        <th class="auto-style1">
                                            <asp:DropDownList ID="ddlSecond" runat="server" Height="45px" Width="274px">
                                            </asp:DropDownList>
                                        </th>
                                        <th class="auto-style1">
                                        </th>
                                    </tr>
                                   
                                    <tr>
                                        <th class="auto-style1">Third</th>
                                        <th>&nbsp;</th>
                                        <th>
                                            <asp:DropDownList ID="ddlThird" runat="server" Height="45px" Width="274px">
                                            </asp:DropDownList>
                                        </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                   
                                    <tr>
                                        <th class="auto-style1">Fourth</th>
                                        <th>&nbsp;</th>
                                        <th>
                                            <asp:DropDownList ID="ddlFourth" runat="server" Height="45px" Width="274px">
                                            </asp:DropDownList>
                                        </th>
                                        <th>
                                            &nbsp;</th>
                                    </tr>
                                   
                                    <tr>
                                        <th class="auto-style1">&nbsp;</th>
                                        <th>&nbsp;</th>
                                        <th>
                                            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="SUBMIT" Width="85px" />
                                         </th>
                                        <th></th>
                                    </tr>
                                     </table>
                        </div>
                    </div>

                    <div id="display">
                        <table>
                            <tr>
                                <th></th>
                            </tr>
                             <tr>
                                <th></th>
                            </tr>
                             <tr>
                                <th>EMPLOYEE TABLE</th>
                            </tr>
                        </table><br/>

                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
            
                     </div>
        </form>
    </div>
</body>
</html>
