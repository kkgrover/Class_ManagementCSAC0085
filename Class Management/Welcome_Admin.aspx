<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome_Admin.aspx.cs" Inherits="Class_Management.Welcome_Admin" %>

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
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome Admin"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
        </div>
    </form>
</body>
</html>
