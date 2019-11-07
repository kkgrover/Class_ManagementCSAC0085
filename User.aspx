<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Applied_project.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <p>
        CLASS MANAGEMENT</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <form id="form1" runat="server" style="width: 1136px; height: 567px;">
        <asp:Menu ID="Menu1" runat="server" style="background-color:white">
        <Items>
            <asp:MenuItem Text="Welcome" Value="Welcome"></asp:MenuItem>
            <asp:MenuItem Text="My Profile" Value="My Profile" NavigateUrl="~/User_Profile.aspx"></asp:MenuItem>
            <asp:MenuItem Text="User" Value="User" NavigateUrl="~/Edit_User.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Access Request" Value="Access Request" NavigateUrl="~/View_User.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <p style="font-size: large">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        USERS</p>

        <p style="text-align:right">
        <i class="fa fa-plus" style="padding: 5px; border-width: thin; border-style: outset; background-color: #f1f1f1;">Create</i>&nbsp;
        <i class="fa fa-eye" style="padding: 5px; border-style: outset; border-width: thin; background-color: #f1f1f1;">View</i>&nbsp;
        <i class="fa fa-pencil" style="padding: 5px; border-width: thin; border-style: outset; background-color: #f1f1f1;">Edit</i>&nbsp;
        <i class="fa fa-close" style="padding: 5px; border-width: thin; border-style: outset; background-color: #f1f1f1;">Delete</i></p>
        <br />
        <br />
        <br />
        Department
            <asp:DropDownList ID="DropDownList2" class="DropDownList" runat="server" Height="35px" Width="241px">
                <asp:ListItem>All</asp:ListItem>
                <asp:ListItem>Technology</asp:ListItem>
                <asp:ListItem>History</asp:ListItem>                
                <asp:ListItem>Environment Science</asp:ListItem>
                <asp:ListItem>Mathematics</asp:ListItem>
                <asp:ListItem>Science</asp:ListItem>
            </asp:DropDownList>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-search" style="border-color: #FFFFFF; background-color: #FFFFFF; "></i>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="146px"></asp:TextBox>
        <asp:Button ID="Button1" class= "button" runat="server" Text="Search" />
        <br />
        <br />
        <br />
    <br />
    <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [User_Id], [First_Name], [Last_Name], [Access_Type], [Department] FROM [user]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="User_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1057px">
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" />
                    </ItemTemplate>
                    <ControlStyle Width="85px" />
                </asp:TemplateField>
                <asp:BoundField DataField="User_Id" HeaderText="User_Id" ReadOnly="True" SortExpression="User_Id" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Access_Type" HeaderText="Access_Type" SortExpression="Access_Type" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
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
