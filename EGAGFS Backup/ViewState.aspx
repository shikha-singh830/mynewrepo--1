<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="EGAGFS.ViewState" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">   
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
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
            DataKeyNames="State_Id" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" PageSize = "10" AllowPaging ="true" OnPageIndexChanging = "OnPaging"
            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
            Width="450">
                    <Columns>  
                        <asp:TemplateField HeaderText="State Code">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtcode" runat="server" Text='<%# Bind("State_Code") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblcode" runat="server" Text='<%# Bind("State_Code") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="State Name">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("State_name") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblname" runat="server" Text='<%# Bind("State_name") %>'></asp:Label>  
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
          
                      <%--  <asp:TemplateField HeaderText="Edit">
                              <ItemTemplate>                               
                            <td width="50px;" align="left" bgcolor="#F1F1F1"><a onclick="javascript:return confirm('edit confirm?');" >
		                              <img src="images/icono-editar-png-3.png" border="0" title="Edit"></a></td>  
                                  </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                              <ItemTemplate>                               
                            <td width="50px;" align="left" bgcolor="#F1F1F1"><a onclick="javascript:return confirm('Are you sure want to delete?');" >
		                              <img src="images/delete.gif" border="0" title="Delete"></a></td>  
                                  </ItemTemplate> 
                             </asp:TemplateField>--%>
       
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
<script type="text/javascript">
    $(function () {
        BlockUI("dvGrid");
        $.blockUI.defaults.css = {};
    });
    function BlockUI(elementID) {
        var prm = Sys.WebForms.PageRequestManager.getInstance(); 
        prm.add_beginRequest(function () {
            $("#" + elementID).block({ message: '<div align = "center">' + '<img src="images/anim.gif.jpg" /></div>',
                css: {},
                overlayCSS: { backgroundColor: '#000000', opacity: 0.6, border: '3px solid #63B2EB' }
            });
        });
        prm.add_endRequest(function () {
            $("#" + elementID).unblock();
        });
    };
</script>
              