<%@ Page Title="View PSC" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewPSC.aspx.cs" Inherits="EGAGFS.Admin.ViewPSC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section style="min-height: 400px">
        <div class="container">
            <ul class="breadcam">
                <li class="current">View PSC</li>
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
                                <asp:TemplateField HeaderText="Name of FPC" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Name_of_the_FPC") %></span>                             
                                </ItemTemplate>
                            </asp:TemplateField>

                                <asp:TemplateField HeaderText="No. of Shareholders" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                               <ItemTemplate>
                       Small:
                        <asp:Label ID="lblstate" runat="server" Text='<%#Eval("No_of_Small_Shareholder_Members") %>'></asp:Label>
                        <br />
                        Medium:
                        <asp:Label ID="lbldistrict" runat="server" Text='<%#Eval("No_of_Marginal_Shareholder_Members") %>'></asp:Label>
                     <br />
                         Landless:
                        <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("No_of_Landless_Shareholder_Members") %>'></asp:Label>
                                      <br />
                        Total:
                        <asp:Label ID="lbltotal" runat="server" Text='<%#Eval("Total_Shareholder_Members") %>'></asp:Label>
                    </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Agenda" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                  <a href="#">Add</a>  /
                                     <a href="#">View</a>    
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Minutes" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                  <a href="#">Add</a>/   
                                     <a href="#">View</a>    
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
