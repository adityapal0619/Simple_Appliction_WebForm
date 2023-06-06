<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gridbox.aspx.cs" Inherits="Simple_Appliction.Gridbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 156px;
        }
        .auto-style2 {
            margin-left: 393px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to My List<asp:Button ID="Button1" runat="server" Text="Back" CssClass="auto-style1" OnClick="Button1_Click" Width="260px" /></h1>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="Id">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Isactive" HeaderText="Isactive" SortExpression="Isactive" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="update" runat="server" CssClass="auto-style2" OnClick="update_Click" Text="Update" Width="228px" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString5 %>" DeleteCommand="DELETE FROM [Register] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Register] ([Name], [Password], [Isactive]) VALUES (@Name, @Password, @Isactive)" SelectCommand="SELECT [Id], [Name], [Password], [Isactive] FROM [Register]" UpdateCommand="UPDATE [Register] SET [Name] = @Name, [Password] = @Password, [Isactive] = @Isactive WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" DefaultValue="aditya"/>
                    <asp:Parameter Name="Password" Type="String" DefaultValue="aditya"/>
                    <asp:Parameter Name="Isactive" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Isactive" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString3 %>" DeleteCommand="DELETE FROM [Register] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Register] ([Name], [Password], [Isactive]) VALUES (@Name, @Password, @Isactive)" SelectCommand="SELECT [Id], [Name], [Password], [Isactive] FROM [Register]" UpdateCommand="UPDATE [Register] SET [Name] = @Name, [Password] = @Password, [Isactive] = @Isactive WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Isactive" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Isactive" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
