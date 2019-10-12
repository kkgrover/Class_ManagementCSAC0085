<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Class_Management.Welcome_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 536px;
            margin-left: 40px;
            width: 940px;
        }
        .auto-style3 {
            width: 939px;
            height: 527px;
        }
        .auto-style4 {
            height: 114px;
            background-color:darkgrey;

        }
        .auto-style5 {
            height: 114px;
            width: 139px;
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
        <div style="margin:auto" class="auto-style1">
           
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">&nbsp;
                            <asp:Menu ID="Menu1" runat="server">
                <Items>
                    <asp:MenuItem Text="Welcome" Value="Welcome" NavigateUrl="~/Welcome_Admin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="My Profile" Value="My Profile" NavigateUrl="~/Profile.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Users" Value="Users" NavigateUrl="~/Create_user.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Access Request" Value="Access Request" NavigateUrl="~/Request_status.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
                        </td>
                        <td class="auto-style4">&nbsp;</div><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="CLASS MANAGEMENT"></asp:Label>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="USERS"></asp:Label>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#3366FF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Height="23px" Width="59px">View</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#3366FF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" Height="27px" Width="58px">Edit</asp:LinkButton>
                            <br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="156px">
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>Science</asp:ListItem>
                                <asp:ListItem>History</asp:ListItem>
                                <asp:ListItem>Arts</asp:ListItem>
                                <asp:ListItem>Technology</asp:ListItem>
                            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#3366FF" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" Height="22px" Width="67px">Search</asp:LinkButton>
                            <br />
                            &nbsp;
                            <br />
                            &nbsp;<br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [first_name], [last_name], [access_type], [department] FROM [user]"></asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                                    <asp:BoundField DataField="access_type" HeaderText="access_type" SortExpression="access_type" />
                                    <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                                </Columns>
                            </asp:GridView>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        </td>
                    </tr>
                    
                </table>
        </div>
    </form>
</body>
</html>
