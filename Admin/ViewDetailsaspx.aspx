<%@ Page Title="View Details" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewDetailsaspx.aspx.cs" Inherits="EGAGFS.Admin.ViewDetailsaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section style="min-height: 400px">
        <div class="container">
            <ul class="breadcam">
                <li class="current">View Details</li>
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
                             
                              <asp:TemplateField HeaderText="Name of the FPC" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Name_of_the_FPC") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="State " HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("State") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="District" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("District") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Correspondence Address" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Correspondence_Address") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Contact No." HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Contact_No") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>


                             <asp:TemplateField HeaderText="Mobile No." HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Mobile_No") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Email ID" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Email_Id") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Registration No." HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Registration_No") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Registration Date/ Incorporation of FPC" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Registration_Date") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Business of FPC" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Business_of_FPC") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="No. of Small Shareholder Members" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("No_of_Small_Shareholder_Members") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="No. of Marginal Shareholder Members" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("No_of_Marginal_Shareholder_Members") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="No. of Landless Shareholder Members" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("No_of_Landless_Shareholder_Members") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Total Shareholder Members" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Total_Shareholder_Members") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>


                             <asp:TemplateField HeaderText="Authorised Capital (in INR)" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Authorised_Capital") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Paid Up Capital (in INR)" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Paid_Up_Capital") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Amt. of Equity Grant Sought (in INR)" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Amt_of_Equity_Grant_Sought") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Maximum Shareholding of an Individual Shareholder Member" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Maximum_Shareholding_of_an_Individual_Shareholder_Member") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Maximum Shareholding of an Institutional Member" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Maximum_Shareholding_of_an_Institutional_Member") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>


                             <asp:TemplateField HeaderText="Bank Name in which account is maintained " HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Bank_Name_in_which_account_is_maintained") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Branch Name" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Branch_Name") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="IFSC Code" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("IFSC_Code") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Account No." HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Account_No") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="No. of Directors" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("No_of_Directors") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Mode of Board Formation" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Mode_of_Board_Formation") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="No. of Women Directors" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("No_of_Women_Directors") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Project related to ST/SC" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Project_related_to_ST_SC") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Dates of Board Meetings held in the last year" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Dates_of_Board_Meetings_held_in_the_last_year") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="No. of Functional Committees of the FPC" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("No_of_Functional_Committees_of_the_FPC") %></span>                                
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Roles & Responsibilities of Board of Directors" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <span style="font-weight: bold;"><%#Eval("Roles_Responsibilities_of_Board_of_Directors") %></span>                                
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
