<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewNewBankBranch.aspx.cs" Inherits="EGAGFS.Admin.ViewNewBankBranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="min-height: 400px">
        <div class="container">
            <ul class="breadcam">
                <li class="current">View Bank Branch</li>
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

                              <asp:TemplateField HeaderText="Bank Name" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Bank_Name") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Branch Name" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Branch_Name") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="State" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("State") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="District" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("District") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Branch Address" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Branch_Address") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Contact No." HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Contact_No") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Contact Person Name" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Contact_Person_Name") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Email ID" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("@Email_ID") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="IFSC Code" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("IFSC_Code") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="MICR Code" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("MICR_Code") %></span>                             
                                </ItemTemplate>
                            </asp:TemplateField>                          

                              <asp:TemplateField HeaderText="Action" HeaderStyle-Width="6%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:HiddenField ID="hdId" runat="server" Value='<%#Eval("@BankBranch_Id")%>' />
                                    <a href="AddNew@BankBranch.aspx?nt=<%#Eval("@BankBranch_Id") %>" title="click here to edit bank branch"><i class="fa fa-pencil-square-o" aria-hidden="true">Edit</i></a>&nbsp;&nbsp;
                                    <asp:LinkButton ID="imgDelete" runat="server" ToolTip="click here to delete the bank branch" OnClick="imgDelete_Click"><i class="fa fa-trash-o" aria-hidden="true">Delete</i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                              </Columns>
                    </asp:GridView>
                      </div>
                  </div>
                  <br />
            </div>
    </section>

</asp:Content>
