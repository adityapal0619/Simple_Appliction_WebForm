<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="Simple_Appliction.City" MasterPageFile="~/Dash.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style8">
            <asp:Label ID="Label1" runat="server" Text="Enter the CityName"></asp:Label>
            <asp:TextBox ID="TextBox1" Text="." runat="server" CssClass="auto-style10" Width="146px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Add" BackColor="Lime" CssClass="auto-style9" ForeColor="Red" Width="85px" OnClick="Button1_Click1" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the City" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style11" DataKeyNames="CityId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="297px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CityId" HeaderText="CityId" InsertVisible="False" ReadOnly="True" SortExpression="CityId" />
                    <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AccountConnectionString12 %>" DeleteCommand="DELETE FROM [City] WHERE [CityId] = @original_CityId AND [CityName] = @original_CityName" InsertCommand="INSERT INTO [City] ([CityName]) VALUES (@CityName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:AccountConnectionString12.ProviderName %>" SelectCommand="SELECT [CityId], [CityName] FROM [City]" UpdateCommand="UPDATE [City] SET [CityName] = @CityName WHERE [CityId] = @original_CityId AND [CityName] = @original_CityName">
                <DeleteParameters>
                    <asp:Parameter Name="original_CityId" Type="Int32" />
                    <asp:Parameter Name="original_CityName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CityName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CityName" Type="String" />
                    <asp:Parameter Name="original_CityId" Type="Int32" />
                    <asp:Parameter Name="original_CityName" Type="String" />
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
        .auto-style11 {
            margin-top: 19px;
        }
    </style>
</asp:Content>
