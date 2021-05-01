<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="State.aspx.cs" Inherits="EGAGFS.State" %>
<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>Add State</title>  
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
<%--  Validation Part--%>  
  
<%--<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>  
  
</head>  
<body>  
    <form id="form1" runat="server">  
  <fieldset>  
    <legend style="font-family: Arial Black;background-color:yellow; color:red; font-size:larger;font-style: oblique">Add State</legend>  
                <table align="center">  
                    <tr>  
                        <td colspan="3" align="center" class="auto-style1">  
                            <strong style="background-color: Yellow;color: Blue; text-align: center; font-style: oblique">Add State</strong>  
                        </td>  
                    </tr>  
                    <tr>  
                         <td>
                             <asp:Label ID="Label1" runat="server" Text="State Code :"></asp:Label>
                         </td>                   
                        <td style="text-align:center">  
                            <asp:TextBox runat="server" ID="txtStateCode" placeholder="Enter State Code" ValidationGroup="add" CssClass="validate[required]" Width="220px"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                          <td>
                             <asp:Label ID="Label2" runat="server" Text="State Name :"></asp:Label>
                         </td> 
                        <td style="text-align:center">  
                            <asp:TextBox runat="server" ID="txtStateName" placeholder="Enter State Name" ValidationGroup="add" CssClass="validate[required]" Width="220px"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                         <td>
                             <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label>
                         </td> 
                        <td style="text-align:center">  
                            <asp:TextBox runat="server" placeholder="Enter Description" ID="txtDescription" ValidationGroup="add" CssClass="validate[required]" Width="220px"></asp:TextBox>  
                        </td>  
                        <td></td>  
                    </tr>  
                                      
                    <tr>  
                        <td colspan="3" align="center">  
                            <asp:Button runat="server" ID="btnAddState" Text="Add" OnClick="btnAddState_Click" class="button button4" ValidationGroup="add"/>  
                          <asp:Button runat="server" ID="btnUpdate" Text="Update" class="button button4" OnClick="btnUpdate_Click"/>
                            <asp:Button runat="server" ID="btnReset" Text="Reset"  class="button button4" OnClick="btnReset_Click"/>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td colspan="3" align="center">  
                            <br />  
                            <asp:Label runat="server" ID="lblMessage">Bind State</asp:Label>  
                            <br />  
                            <br />  
  
                        </td>  
                    </tr>  
                    <tr>  
                        <td colspan="3">  
                            <asp:GridView ID="grvState" runat="server" AllowPaging="true" CellPadding="2" EnableModelValidation="True"  
                                        ForeColor="red" GridLines="Both" ItemStyle-HorizontalAlign="center" EmptyDataText="There Is No Records In Database!" AutoGenerateColumns="false" Width="1100px"  
                                HeaderStyle-ForeColor="blue"   OnPageIndexChanging="grvState_PageIndexChanging" OnRowCancelingEdit="grvState_RowCancelingEdit" OnRowDeleting="grvState_RowDeleting" OnRowEditing="grvState_RowEditing">  
                                <HeaderStyle CssClass="DataGridFixedHeader" />  
                                <RowStyle CssClass="grid_item" />  
                                <AlternatingRowStyle CssClass="grid_alternate" />  
                                <FooterStyle CssClass="DataGridFixedHeader" />  
                                <Columns>  
                                    <asp:TemplateField HeaderText="StateId">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblStateId" Text='<%#Eval("State_Id") %>'></asp:Label>  
                                        </ItemTemplate>  
                                    </asp:TemplateField>  
                                    <asp:TemplateField HeaderText="StateCode">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblStateCode" Text='<%#Eval("State_Code") %>'></asp:Label>  
                                        </ItemTemplate>  
                                          
                                    </asp:TemplateField>  
                                    <asp:TemplateField HeaderText="StateName">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblStateName" Text='<%#Eval("State_Name") %>'></asp:Label>  
                                        </ItemTemplate>  
                                          
                                    </asp:TemplateField>  
                                       
                                     <asp:TemplateField HeaderText="Description">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblDescription" Text='<%#Eval("Description") %>'></asp:Label>  
                                        </ItemTemplate>  
                                          
                                    </asp:TemplateField> 
                                    
                                    <asp:TemplateField HeaderText="Update">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:LinkButton runat="server" ID="btnEdit" Text="Edit" CommandName="Edit" ToolTip="Click here to Edit the record" />                                                                                         
                                        </ItemTemplate>  
                                         
                                    </asp:TemplateField>  
                                    <asp:TemplateField HeaderText="Delete">  
                                        <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>                                                                          
                                                <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are You Sure You want to Delete the Record?');" ToolTip="Click here to Delete the record" />  
                                            </span>  
                                        </ItemTemplate>                                         
                                    </asp:TemplateField>  
                                </Columns>  
  
                            </asp:GridView>  
                        </td>  
                    </tr>  
                </table>  
      </fieldset>  
    </form>  
</body>  
    <br />  
    <br />  
   <%--<footer>    
        <p style="background-color: Yellow; font-weight: bold; color:blue; text-align: center; font-style: oblique">© <script> document.write(new Date().toDateString()); </script></p>    
    </footer>  --%>  
</html>  
