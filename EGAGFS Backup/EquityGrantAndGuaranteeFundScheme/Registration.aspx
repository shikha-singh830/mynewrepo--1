<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EGAGFS.EquityGrantAndGuaranteeFundScheme.Registration" %>
<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>Registration</title>  
<%--Botstrap Part--%>  
    <style>  
        .button {  
            background-color: #4CAF50;  
            border: none;  
            color: white;  
            padding: 15px 32px;  
            text-align: center;  
            text-decoration: none;  
            display: inline-block;  
            font-size: 16px;  
            margin: 4px 2px;  
            cursor: pointer;  
        }  
      .DataGridFixedHeader {  
    color: White;  
    font-size: 13px;  
    font-family: Verdana;   
    background-color:yellow  
}  
        .grid_item {  
     
    background-color: #E3EAEB;  
    border-width: 1px;  
    font-family: Verdana;  
    border-style: solid;  
    font-size: 12pt;  
    color: black;  
    border: 1px solid black;  
}  
        .grid_alternate {  
    border-width: 1px;  
    font-family: Verdana;  
    border-style: solid;  
    font-size: 12pt;  
    color: black;  
    background-color: White;  
}  
  
        .button4 {  
            border-radius: 9px;  
        }  
  
       
        input[type=text], select {  
        width: 40%;  
        padding: 12px 20px;  
        margin: 10px 0;  
        display: inline-block;  
        border: 1px solid #ccc;  
        border-radius: 4px;  
        box-sizing: border-box;  
        font-family: 'Montserrat', sans-serif;    
        text-indent: 10px;    
        color: blue;    
        text-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);    
        font-size: 20px;    
    }  
    </style>  
<%--Botstrap Part--%>  
<%--  Validation Part--%>  
<link href="css/template.css" rel="stylesheet" type="text/css" />  
<link href="css/validationEngine.jquery.css" rel="stylesheet" type="text/css" />  
<script src="js/jquery-1.6.min.js" type="text/javascript"></script>  
<script src="js/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>  
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>  
  
<script type="text/javascript">  
    jQuery(document).ready(function () {  
        jQuery("#form1").validationEngine();  
    });  
</script>  
    </head>  
<body>  
    <form id="form1" runat="server">  
  <fieldset>  
    <legend style="font-family: Arial Black;background-color:yellow; color:red; font-size:larger;font-style: oblique">Registration</legend>  
                <table align="center">  
                    <tr>  
                        <td colspan="3" align="center" class="auto-style1">  
                            <strong style="background-color: Yellow;color: Blue; text-align: center; font-style: oblique">Registration</strong>  
                        </td>  
                    </tr>  
                    <tr> 
                        <td>
                       <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
                            </td>
                        <td style="text-align:center">
                            
                            <asp:TextBox runat="server" ID="txtfname" placeholder="Enter First Name.." ValidationGroup="add" CssClass="validate[required]" width="200px"></asp:TextBox>  
                        </td>  
                    </tr>  
                     <tr> 
                         <td>
                         <asp:Label ID="Label2" runat="server" Text="Last Name :"></asp:Label>
                         </td>
                        <td style="text-align:center">  
                            <asp:TextBox runat="server" ID="txtlname" placeholder="Enter Last Name.." ValidationGroup="add" CssClass="validate[required]" width="200px"></asp:TextBox>  
                        </td>  
                    </tr> 
                    <tr>   
                        <td>
                        <asp:Label ID="Label3" runat="server" Text="Email Id :"></asp:Label>
                            </td>
                        <td style="text-align:center">  
                            <asp:TextBox runat="server" ID="txtemail" placeholder="Enter Email" ValidationGroup="add" CssClass="validate[required]" width="200px"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td>
                        <asp:Label ID="Label4" runat="server" Text="Phone No. :"></asp:Label>
                            </td>
                        <td style="text-align:center">  
                            <asp:TextBox runat="server" ID="txtphoneno" placeholder="Enter Phone No..."  ValidationGroup="add" CssClass="validate[required]" width="200px" ></asp:TextBox>  
                        </td>  
                        <td></td>  
                    </tr>                                       
                    <tr>  
                        <td colspan="3" align="center">  
                            <asp:Button runat="server" ID="btnAdd" Text="Add" OnClick="btnAddState_Click" class="button button4" ValidationGroup="add"/>                              
                        </td>  
                    </tr>                                    
                </table>  
      </fieldset>  
    </form>  
</body>  
</html>  

