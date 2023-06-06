<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="State.aspx.cs" Inherits="Simple_Appliction.Country" MasterPageFile="~/Dash.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div class="auto-style12">
            <h1>Add your State</h1>
            <asp:Label ID="Label1" runat="server" Text="Enter the StateName"></asp:Label>
            <asp:TextBox ID="TextBox1" Text="." runat="server" CssClass="auto-style10" Width="146px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Add" BackColor="Lime" CssClass="auto-style9" ForeColor="Red" Width="85px" OnClick="Button1_Click"  />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the State" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="StateId" DataSourceID="SqlDataSource1"  Height="170px" Width="268px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="StateId" HeaderText="StateId" InsertVisible="True" ReadOnly="True" SortExpression="StateId" />
                    <asp:BoundField DataField="StateName" HeaderText="StateName" SortExpression="StateName" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString15 %>" SelectCommand="SELECT [StateId], [StateName] FROM [State]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [State] WHERE [StateId] = @original_StateId AND [StateName] = @original_StateName" InsertCommand="INSERT INTO [State] ([StateName]) VALUES (@StateName)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [State] SET [StateName] = @StateName WHERE [StateId] = @original_StateId AND [StateName] = @original_StateName">
                <DeleteParameters>
                    <asp:Parameter Name="original_StateId" Type="Int32" />
                    <asp:Parameter Name="original_StateName" Type="String" />
                </DeleteParameters>
                
            </asp:SqlDataSource>

    </asp:Content>
    
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
   
    <style type="text/css">
        .auto-style9 {
            margin-left: 11px;
        }
        .auto-style10 {
            margin-left: 9px;
        }
        .auto-style12 {
            height: 246px;
            margin-left: 243px;
        }
    </style>
</asp:Content>

    
