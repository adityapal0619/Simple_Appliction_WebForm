<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simple_Appliction.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style>
        body{
            background-image:url("https://source.unsplash.com/random/900×700/?Nature");
        }
        h1{
             width:500px;
            margin: 0 auto;
            color:red;
             background-color:aquamarine;
        }
        
        #Button1{
           
            background-color:cadetblue;
            border:none;
            color:white;
            cursor: pointer;
            top:232px;
            padding:15px 32px;
            text-align: center;
            text-decoration: none;
          display: inline-block;
            font-size: 16px;
        }
        #Button1:hover{
            background-color:orangered;
            font-size:larger;
        }

        #Button2{
            float: right;
            background-color:green;
            top:232px;
            cursor: pointer;
            border:none;
            color:white;
            padding:15px 32px;
            text-align: center;
            text-decoration: none;
          display: inline-block;
            font-size: 16px;
        }
        #Button2:hover{
            background-color:blue;
            font-size:larger;
        }
        .auto-style1 {
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center">Welcome To Aditya Website</h1>

            <div class="button">
            <asp:Button ID="Button1" runat="server" Text="Login"  Width="187px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Register" Width="165px" OnClick="Button2_Click" />
            </div>
            
        </div>
    </form>
</body>
</html>
