<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDistrict.aspx.cs" Inherits="EGAGFS.AddDistrict" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Add District</title>
    <style type="text/css">
        .style2
        {
            width: 189px;
        }
        .style3
        {
            width: 236px;
        }
        .auto-style1 {
            width: 76px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="State:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="ddlState" AppendDataBoundItems="true" 
                        DataTextField="State_Name" DataValueField="State_Id" runat="server" CssClass="auto-style2" >
                        <asp:ListItem Value="0">--Select your State--</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    District Name:</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>

                    <br />

                </td>
                    <td>&nbsp;</td>
                </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Description:"></asp:Label>
                    </td>
                <td>
                     <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>
                </td>
                  <td>  &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                </td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>