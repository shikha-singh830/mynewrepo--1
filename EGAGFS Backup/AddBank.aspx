<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBank.aspx.cs" Inherits="EGAGFS.AddBank" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html  
    xmlns="http://www.w3.org/1999/xhtml">  
    <head runat="server">  
        <title>Add Bank</title>  
        <style type="text/css">  
.style1  
{  
width: 139px;  
}  
.style2  
{  
width: 158px;  
}  
.style3  
{  
width: 139px;  
height: 23px;  
}  
.style4  
{  
width: 158px;  
height: 23px;  
}  
.style5  
{  
height: 23px;  
}  
.style6  
{  
font-size: large;  
text-decoration: underline;  
}  
            .auto-style1 {
                width: 128px;
            }
        </style>  
    </head>  
    <body>  
        <form id="form1" runat="server">  
            <div>  
                <strong>  
                    <span class="style6">Add Bank</span>  
                </strong>  
                <br />  
                <table style="width:100%;">  
                  
                    <tr>  
                        <td class="style1">Bank Name</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>  
                        </td>  
                        <td></td>  
                    </tr>  
                    <tr>  
                        <td class="style1">Discription</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>  
                        </td>  
                        <td></td>  
                    </tr>                                       
                    <tr>  
                        <td class="style1"></td>  
                        <td class="auto-style1">  
                            <asp:Button ID="btnClick" runat="server" BorderColor="#CCFF66"   
ForeColor="#0066FF" onclick="Button1_Click" Text="Insert Data" />  
                        </td> 
                      <td>
                             <asp:Label ID="lbcheck" runat="server"></asp:Label>
                        </td>
                    </tr>  
                </table>  
            </div>  
        </form>  
    </body>  
</html>  
