<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Simple_Appliction.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
        <title>Login Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image:url("https://thumbs.dreamstime.com/b/sky-blue-skies-texture-clouds-summer-day-colorful-beautiful-sky-colour-light-background-white-clouds-sunrise-sky-texture-174129856.jpg");
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
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0 8px 100px;
            cursor: pointer;
        }
        #Save:hover{
            background-color:red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="frmalg">

        <div class="container" >
            <center>
                <h3>Register</h3>
            </center>
            <label for="uname"><b>Username
            </b></label>
            &nbsp;<asp:TextBox runat="server" ID="Username" placeholder="Enter Username" MaxLength="15"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Username" ErrorMessage="Enter the UserName" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <label for="psw"><b>Password
            </b></label>
            &nbsp;<asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="Enter Password" MaxLength="15"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Enter the Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button runat="server" ID="Save" CssClass="auto-style1" Text="Save" Width="257px" OnClick="Save_Click" />
            
        </div>
    </form>
</body>
</html>
