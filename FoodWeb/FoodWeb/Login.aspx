﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FoodWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>        body {            background-color: lightgoldenrodyellow;            display: flex;            justify-content: center;            align-items: center;            height: 100vh;            margin: 0;        }        .login-container {            background: white;            padding: 20px;            border-radius: 10px;            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);            text-align: center;            width: 300px;                     }        .login-container h2 {            margin-bottom: 20px;        }        .login-container p {            margin: 10px 0;        }        .login-container input[type="text"],        .login-container input[type="password"] {            width: calc(100% - 22px);            padding: 10px;            margin: 5px 0;            border: 1px solid #ccc;            border-radius: 5px;        }        .login-container .register-label {            display: block;            margin-top: 10px;        }        .login-container .register-link {            display: block;            margin-top: 5px;            color: blue;            text-decoration: underline;        }        .login-container .register-link:hover {            text-decoration: none;        }    </style>
    <div>
        <div class="login-container"  runat="server">
            <h2>Login</h2>
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
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </p>

            <asp:Label ID="uxReg" runat="server" CssClass="register-label" Text="Don't have an account?"></asp:Label>            <asp:HyperLink ID="uxRegisterLink" runat="server" CssClass="register-link" NavigateUrl="Signup.aspx">Register</asp:HyperLink>
          
        </div>
</asp:Content>
