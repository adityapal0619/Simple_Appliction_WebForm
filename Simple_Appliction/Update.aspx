<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Simple_Appliction.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Update Name and Password</h1>
            <label for="id"><b>ID</b></label>&nbsp;<label id="psw" for="psw"><b>
            </b></label>
            <asp:TextBox runat="server" ID="TextBox1" placeholder="Enter Username" MaxLength="15" Width="178px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter user name" ForeColor="Red">Eneter user id</asp:RequiredFieldValidator>
            &nbsp;<br />
            User Name

            <asp:TextBox runat="server" ID="Username" placeholder="Enter Username" MaxLength="15"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="Enter user name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <label id="psw" for="psw"><b>Password
            </b></label>
            &nbsp;
            <asp:TextBox runat="server" ID="password"  placeholder="Enter Password" MaxLength="15"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <br />

            <asp:Button runat="server" ID="update1" CssClass="lgnbtn" Text="Update" OnClick="update1_Click" Width="108px" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString6 %>" DeleteCommand="DELETE FROM [Register] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Register] ([Name], [Password], [Isactive]) VALUES (@Name, @Password, @Isactive)" ProviderName="<%$ ConnectionStrings:AccountConnectionString6.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Password], [Isactive] FROM [Register]" UpdateCommand="UPDATE [Register] SET [Name] = @Name, [Password] = @Password, [Isactive] = @Isactive WHERE [Id] = @Id">
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
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Isactive" HeaderText="Isactive" SortExpression="Isactive" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
