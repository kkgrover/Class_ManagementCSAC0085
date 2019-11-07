<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Access_Request.aspx.cs" Inherits="Applied_project.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    <p>
        CLASS MANAGEMENT</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <form id="form1" runat="server" style="width: 1060px">
        <asp:Menu ID="Menu1" runat="server" style="background-color:white">
        <Items>
            <asp:MenuItem Text="Welcome" Value="Welcome"></asp:MenuItem>
            <asp:MenuItem Text="My Profile" Value="My Profile" NavigateUrl="~/User_Profile.aspx"></asp:MenuItem>
            <asp:MenuItem Text="User" Value="User" NavigateUrl="~/Edit_User.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Access Request" Value="Access Request" NavigateUrl="~/View_User.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <p style="font-size: large">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        ACCESS REQUESTS</p>
        <br />
        <br />
        <br />
        <br />
        Department&nbsp;
        <asp:DropDownList ID="DropDownList1" Class="DropDownList" runat="server" Width="114px" Height="36px">
            <asp:ListItem>All</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-search" style="border-color: #FFFFFF; background-color: #FFFFFF; "></i>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="114px"></asp:TextBox>
        <asp:Button ID="Button1" class= "button" runat="server" Text="Search" Height="34px" Width="106px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" class= "button" runat="server" Text="Approve" OnClick="Button2_Click" Height="36px" Width="103px" />
    <asp:Button ID="Button3" class= "button" runat="server" Text="Decline" OnClick="Button3_Click" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Request_id], [Last_name], [First_name], [Department], [Request_status] FROM [requestaccess]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Request_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1020px" Height="223px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Request_id" HeaderText="Request_id" ReadOnly="True" SortExpression="Request_id" />
                <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
                <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Request_status" HeaderText="Request_status" SortExpression="Request_status" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
        </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
