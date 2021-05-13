<%@ Page Title="View Project" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewNewProject.aspx.cs" Inherits="EGAGFS.Admin.ViewNewProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section style="min-height: 400px">
        <div class="container">
            <ul class="breadcam">
                <li class="current">View Project</li>
            </ul>
             <div class="text-right m-b10">
                
                <br />
                  <div class="table-responsive">
                    <asp:GridView ID="GDV" runat="server" AutoGenerateColumns="false" GridLines="None" border="2" CssClass="table table-bordered" AllowPaging="true"
                        PageSize="5" OnPageIndexChanging="GDV_PageIndexChanging" PagerStyle-HorizontalAlign="Center">   
                        <Columns>
                             <asp:TemplateField HeaderText="S.No." HeaderStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                             
                              <asp:TemplateField HeaderText="Registration No." HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Registration_No") %></span>                             
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Registration Date" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Registration_Date") %></span>                                  
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Name of FPC" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Name_of_the_FPC") %></span>                             
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Location" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                              
                           <ItemTemplate>
                        State:
                        <asp:Label ID="lblstate" runat="server" Text='<%#Eval("State") %>'></asp:Label>
                        <br />
                        District:
                        <asp:Label ID="lbldistrict" runat="server" Text='<%#Eval("District") %>'></asp:Label>
                         Address:
                        <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("Correspondence_Address") %>'></asp:Label>
                    </ItemTemplate>

                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Contact Details" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                        Mobile No.:
                        <asp:Label ID="lblstate" runat="server" Text='<%#Eval("Mobile_No") %>'></asp:Label>
                        <br />
                        Phone No.:
                        <asp:Label ID="lbldistrict" runat="server" Text='<%#Eval("Contact_No") %>'></asp:Label>
                                       <br />
                         Email:
                        <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("Email_Id") %>'></asp:Label>
                    </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="No. of Shareholders" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                               <ItemTemplate>
                       Small:
                        <asp:Label ID="lblstate" runat="server" Text='<%#Eval("No_of_Small_Shareholder_Members") %>'></asp:Label>
                        <br />
                        Medium:
                        <asp:Label ID="lbldistrict" runat="server" Text='<%#Eval("No_of_Marginal_Shareholder_Members") %>'></asp:Label>
                         Landless:
                        <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("No_of_Landless_Shareholder_Members") %>'></asp:Label>
                                      <br />
                        Total:
                        <asp:Label ID="lbltotal" runat="server" Text='<%#Eval("Total_Shareholder_Members") %>'></asp:Label>
                    </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Register Status" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <a href="#">yes</a>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Acknowledgment" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <a href="#">View</a>                                                            
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Received Due Diligence" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                  <a href="#">Add</a>    <br />  
                                     <a href="#">View</a>    
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                              <asp:TemplateField HeaderText="Content Control" HeaderStyle-Width="6%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:HiddenField ID="hdId" runat="server" Value='<%#Eval("Project_Id")%>' />
                                    <a href="AddNewProject.aspx?nt=<%#Eval("Project_Id") %>" title="click here to edit project"><i class="fa fa-pencil-square-o" aria-hidden="true">Edit</i></a>&nbsp;&nbsp;
                                  <asp:LinkButton ID="imgDelete" runat="server" ToolTip="click here to delete the project" OnClick="imgDelete_Click"><i class="fa fa-trash-o" aria-hidden="true">Delete</i></asp:LinkButton>
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
