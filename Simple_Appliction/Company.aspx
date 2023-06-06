<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="Simple_Appliction.Company" MasterPageFile="~/Dash.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style12">
          <asp:Label ID="Label2" runat="server" Text="Enter the CompanyId"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10" Width="146px"></asp:TextBox>
         <hr />
            <asp:Label ID="Label1" runat="server" Text="Enter the CompanyName"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" Width="146px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Add" BackColor="Lime" CssClass="auto-style9" ForeColor="Red" Width="106px" OnClick="Button1_Click"  />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter CompanyName" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style13" Height="181px" CellPadding="4" ForeColor="#333333" GridLines="None"  Width="317px" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:ButtonField CommandName="Edit" Text="Edit" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString16 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [CompanyName] FROM [Company]">
            </asp:SqlDataSource>
         </div>
</asp:Content>
<asp:Content  runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style9 {
            margin-left: 11px;
        }
        .auto-style10 {
            margin-left: 9px;
        }
        .auto-style12 {
            height: 244px;
            margin-left: 235px;
            margin-top: 45px;
        }
    .auto-style13 {
        margin-top: 24px;
    }
    </style>
</asp:Content>
