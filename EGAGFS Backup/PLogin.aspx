﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PLogin.aspx.cs" Inherits="EGAGFS.PLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
    <body>  
    <form id="form1" runat="server">  
        <div >  
            <table class="auto-style1">
                <caption>
                    &nbsp;<strong>Login Form</strong></caption>
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
User Name:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Username"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
Password:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" Width="204px"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Password"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" />  
                    </td>  
                    <%-- <p>  
                <asp:Label ID="Label1" runat="server"></asp:Label>  
            </p>--%>
                </tr>  
            </table>  
        </div>  
    </form>  
</body> 
</html>