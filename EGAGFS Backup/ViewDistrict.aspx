<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDistrict.aspx.cs" Inherits="EGAGFS.ViewDistrict" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">   
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>View District</title>  
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</head>  
<body>  
    <form id="form1" runat="server">  
    <table style="width:100%;">      
        <tr>  
            <td>              
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
            DataKeyNames="District_Id" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" PageSize = "10" AllowPaging ="true" OnPageIndexChanging = "OnPaging"
            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
            Width="450">
                    <Columns>  
                        <asp:TemplateField HeaderText="State">  
                            <EditItemTemplate>  
                               <%-- <asp:DropDownList ID="ddlstate" AppendDataBoundItems="True" runat="server" Text='<%# Bind("State") %>'></asp:DropDownList>--%>
                                 <asp:DropDownList ID="ddlState" AppendDataBoundItems="true" 
                        DataTextField="State_Name" DataValueField="State_Id" runat="server" CssClass="auto-style2" >
                        <asp:ListItem Value="0">--Select State--</asp:ListItem>
                    </asp:DropDownList>
                              <%--  <asp:TextBox ID="txtstste" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>  --%>
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblState" runat="server" Text='<%# Bind("State") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="District Name">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("District_Name") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblname" runat="server" Text='<%# Bind("District_Name") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                          <asp:TemplateField HeaderText="Description">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtdesc" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lbldesc" runat="server" Text='<%# Bind("Description") %>'></asp:Label>  
                            </ItemTemplate>                              
                        </asp:TemplateField>
                                                
      <asp:CommandField ButtonType="Link" ShowEditButton="true" />
      <asp:TemplateField ShowHeader="False">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this entry?');">Delete </asp:LinkButton>             
        </ItemTemplate>
           </asp:TemplateField>                     
                    </Columns>  

                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />  
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />  
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />  
                    <RowStyle BackColor="White" ForeColor="#003399" />  
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />  
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />  
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />  
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />  
                    <SortedDescendingHeaderStyle BackColor="#002876" />  
                </asp:GridView>  
            </td>               
        </tr>            
    </table>       
    </form>  
</body>  
</html>  
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="scripts/jquery.blockUI.js"></script>

              
