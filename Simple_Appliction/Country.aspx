<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Country.aspx.cs" Inherits="Simple_Appliction.State" MasterPageFile="~/Dash.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 style="text-align:center">Welcome For Adding Country</h1>
        <div class="auto-style8">
            <asp:Label ID="Label1" runat="server" Text="Enter the CountryName"></asp:Label>
            <asp:TextBox ID="TextBox1" Text="." runat="server" CssClass="auto-style10" Width="194px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the Country" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Add" BackColor="Lime" CssClass="auto-style9" ForeColor="Red" Width="85px" OnClick="Button1_Click1"  />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style12" DataKeyNames="CountryId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CountryId" HeaderText="CountryId" InsertVisible="False" ReadOnly="True" SortExpression="CountryId" />
                    <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AccountConnectionString13 %>" DeleteCommand="DELETE FROM [Country] WHERE [CountryId] = @original_CountryId AND (([CountryName] = @original_CountryName) OR ([CountryName] IS NULL AND @original_CountryName IS NULL))" InsertCommand="INSERT INTO [Country] ([CountryName]) VALUES (@CountryName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:AccountConnectionString13.ProviderName %>" SelectCommand="SELECT [CountryId], [CountryName] FROM [Country]" UpdateCommand="UPDATE [Country] SET [CountryName] = @CountryName WHERE [CountryId] = @original_CountryId AND (([CountryName] = @original_CountryName) OR ([CountryName] IS NULL AND @original_CountryName IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_CountryId" Type="Int32" />
                    <asp:Parameter Name="original_CountryName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CountryName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CountryName" Type="String" />
                    <asp:Parameter Name="original_CountryId" Type="Int32" />
                    <asp:Parameter Name="original_CountryName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
   </div>
           
       
   </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            height: 157px;
            margin-left: 310px;
            margin-top: 57px;
        }
        .auto-style9 {
            margin-left: 11px;
        }
        .auto-style10 {
            margin-left: 9px;
        }
        .auto-style12 {
            margin-top: 21px;
        }
    </style>
</asp:Content>