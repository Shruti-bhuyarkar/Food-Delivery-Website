<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="FoodWeb.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <style>        body {            background-color: lightgoldenrodyellow;            display: flex;            justify-content: center;            align-items: center;            height: 100vh;            margin: 0;        }        .signup-container {            background: white;            padding: 20px;            border-radius: 10px;            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);            text-align: center;            width: 300px;                     }        .signup-container h2 {            margin-bottom: 20px;        }        .signup-container p {            margin: 10px 0;        }        .signup-container input[type="text"],        .signup-container input[type="password"] {            width: calc(100% - 22px);            padding: 10px;            margin: 5px 0;            border: 1px solid #ccc;            border-radius: 5px;        }        .signup-container .register-label {            display: block;            margin-top: 10px;        }        .signup-container .register-link {            display: block;            margin-top: 5px;            color: blue;            text-decoration: underline;        }        .signup-container .register-link:hover {            text-decoration: none;        }    </style>
    <div class="body">
        <div class="signup-container"  runat="server">
            <h2 >Signup</h2>
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            <p>
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnSignup" runat="server" Text="Signup" OnClick="btnSignup_Click" />
            </p>
            <asp:Label ID="uxReg" runat="server" CssClass="register-label" Text="Already have an account?"></asp:Label>
            <asp:HyperLink ID="uxLoginLink" runat="server" CssClass="register-link" NavigateUrl="Login.aspx">Login</asp:HyperLink>
        </div>
    </div>
</asp:Content>
