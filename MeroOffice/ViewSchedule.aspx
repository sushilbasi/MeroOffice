<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" Inherits="MeroOffice.ViewSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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

        #main-1{
            float:left;
            margin-left: 280px;
            text-align:left;
            width:800px;
        }
    </style>

</head>
<body>
    <div id="head">  WELCOME ADMIN </div>
    <div class="navbar">
       <div class="menu">
            <a href="ViewEmployee.aspx" style="text-decoration:none;">
                <div class="dropbtn">
                    PROFILE
                </div>
            </a>
       </div>
        <div class="menu">
            <a href="ViewSchedule.aspx" style="text-decoration:none;">
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
                <th>
                    <asp:Label ID="lblEID" runat="server"></asp:Label>
                </th>
                <th></th>
            </tr>
            <tr>
                <th>&nbsp;</th>
                <th>
                    &nbsp;</th>
                <th>&nbsp;</th>
            </tr>
            <br>
            </table>
        <asp:GridView ID="GridView1" runat="server" Width="700px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="SEM 1">
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
          <br />
        <asp:GridView ID="GridView2" runat="server" Width="700px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="SEM 2">
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
        <asp:GridView ID="GridView3" runat="server" Width="700px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="SEM 3">
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
        <asp:GridView ID="GridView4" runat="server" Width="700px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="SEM 4">
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
                    <asp:Label ID="lblFirst" runat="server"></asp:Label>
                    <asp:Label ID="lblSecond" runat="server"></asp:Label>
                    <asp:Label ID="lblThird" runat="server"></asp:Label>
                    <asp:Label ID="lblFourth" runat="server"></asp:Label>
       </div>
    </form>
</body>
</html>
