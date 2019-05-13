<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewSchedule.aspx.cs" Inherits="MeroOffice.AdminViewSchedule" %>

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
    <form id="form1" runat="server">
        
        <div style="width:60%; margin: 0 auto;">
            <h1 style="font-size:15px; text-align:center;" > <b>FIRST SEMESTER  </b></h1>
            <br />
        <asp:GridView ID="GridView1" runat="server" style="margin:0 auto;" Width="700px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="DAY">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period1" HeaderText="Period1">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
               <asp:BoundField DataField="Period2" HeaderText="Period2">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period3" HeaderText="Period3">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period4" HeaderText="Period4">
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Period5" HeaderText="Period5">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period6" HeaderText="Period6">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
            </Columns>
            
                
           
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            
                
           
        </asp:GridView>
            <br />
             <h1 style="font-size:15px; text-align:center; "> <b>SECOND SEMESTER  </b></h1>
            <br />
        <asp:GridView ID="GridView2" runat="server"  style="margin:0 auto;" Width="700px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="DAY">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period1" HeaderText="Period1">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
               <asp:BoundField DataField="Period2" HeaderText="Period2">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period3" HeaderText="Period3">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period4" HeaderText="Period4">
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Period5" HeaderText="Period5">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period6" HeaderText="Period6">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
            </Columns>
            
                
           
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            
                
           
        </asp:GridView>
            <br />
            <h1 style="font-size:15px; text-align:center;"> <b>THIRD SEMESTER  </b></h1>
            <br />
        <asp:GridView ID="GridView3" runat="server" style="margin:0 auto;" Width="700px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="DAY">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period1" HeaderText="Period1">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
               <asp:BoundField DataField="Period2" HeaderText="Period2">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period3" HeaderText="Period3">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period4" HeaderText="Period4">
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Period5" HeaderText="Period5">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period6" HeaderText="Period6">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
            </Columns>
            
                
           
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            
                
           
        </asp:GridView>
            <br />
            <h1 style="font-size:15px; text-align:center;"> <b>FOURTH SEMESTER  </b></h1>
            <br />
        <asp:GridView ID="GridView4" runat="server" style="margin:0 auto;" Width="700px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="DAY">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period1" HeaderText="Period1">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
               <asp:BoundField DataField="Period2" HeaderText="Period2">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period3" HeaderText="Period3">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period4" HeaderText="Period4">
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Period5" HeaderText="Period5">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                <asp:BoundField DataField="Period6" HeaderText="Period6">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
            </Columns>
            
                
           
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            
                
           
        </asp:GridView>
        </div>
    </form>
</body>
</html>
