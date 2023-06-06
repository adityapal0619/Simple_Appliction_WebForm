<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Simple_Appliction.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Login Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
           background-image:url("https://images.unsplash.com/photo-1554755229-ca4470e07232?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdlYnNpdGUlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
        }
        #Register{
            float:right;
            background-color:springgreen;
            color:white;
            border: 1px solid #ccc;
             cursor:pointer;

             
        }
        #Register:hover{
            background-color:gold;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
        .cnbtn:hover{
            background-color:blueviolet;
        }
        .lgnbtn:hover{
            background-color:chocolate;
        }
        
    </style>

</head>
<body>
    <form id="form1" runat="server" class="frmalg">

        <div class="container">
            <asp:Button ID="Register" runat="server"  Text="Register" OnClick="Register_Click" />
            <center>
                <h3>Login </h3>
            </center>
            <label for="uname"><b>Username
            </b></label>
            &nbsp;
&nbsp;<label id="psw" for="psw"><b>
            </b></label>
            <asp:TextBox runat="server" ID="Username" placeholder="Enter Username" MaxLength="15"></asp:TextBox>
            <asp:Label ID="user" runat="server" Text=""></asp:Label>
            <br />

            <label id="psw" for="psw"><b>Password
            </b></label>
            &nbsp;
            <asp:TextBox runat="server" ID="password" TextMode="Password" placeholder="Enter Password" MaxLength="15"></asp:TextBox>
            <asp:Label ID="pass" runat="server" Text=""></asp:Label>
            
            <br />

            <asp:Button runat="server" ID="Login" CssClass="lgnbtn" Text="Login" OnClick="Login_Click" />
            <asp:Button runat="server" ID="Reset" Text="Reset" class="cnbtn" OnClick="Reset_Click" />

            
             
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
