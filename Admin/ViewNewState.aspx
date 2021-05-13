<%@ Page Title="View State" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewNewState.aspx.cs" Inherits="EGAGFS.Admin.ViewNewState" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="min-height: 400px">
        <div class="container">
            <ul class="breadcam">
                <li class="current">View State</li>
            </ul>
             <div class="text-right m-b10">
                
                <br />
                  <div class="table-responsive">
                    <asp:GridView ID="GDV" runat="server" AutoGenerateColumns="false" GridLines="None" border="2" CssClass="table table-bordered" AllowPaging="true"
                        PageSize="10" OnPageIndexChanging="GDV_PageIndexChanging" PagerStyle-HorizontalAlign="Center">   
                        <Columns>
                             <asp:TemplateField HeaderText="S.No." HeaderStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="State Code" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("State_Code") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>
                              <asp:TemplateField HeaderText="State Name" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("State_Name") %></span>                             
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Description" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Description") %></span>                                  
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Action" HeaderStyle-Width="6%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:HiddenField ID="hdId" runat="server" Value='<%#Eval("State_Id")%>' />
                                    <a href="AddNewState.aspx?nt=<%#Eval("State_Id") %>" title="click here to edit state"><i class="fa fa-pencil-square-o" aria-hidden="true">Edit</i></a>&nbsp;&nbsp;
                                    <asp:LinkButton ID="imgDelete" runat="server" ToolTip="click here to delete the state" OnClick="imgDelete_Click"><i class="fa fa-trash-o" aria-hidden="true">Delete</i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                              </Columns>
                    </asp:GridView>
                      </div>
                  </div>
          <%--  <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" CausesValidation="false" OnClick="btnUpdate_Click" />&nbsp;--%>
                  <br />
            </div>
    </section>
</asp:Content>
