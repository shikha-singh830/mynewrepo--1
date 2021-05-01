<%@ Page Title="Add Project" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewProject.aspx.cs" Inherits="EGAGFS.Admin.AddNewProject" %>

<%@   Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit"  TagPrefix="asp"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <section>
        <div class="container">
            <ul class="breadcam">            
            </ul>
            <h3 class="title-heading">Add Project</h3>
                <div class="forms">
               
                  <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label"> Name of the FPC:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtnamefpc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnamefpc" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>               
                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">State :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">                     
                        <asp:DropDownList ID="ddlstate" AppendDataBoundItems="true"  AutoPostBack="true" 
                        DataTextField="State_Name" DataValueField="State_Id" runat="server" CssClass="auto-style2" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                        <asp:ListItem Value="0">--Select State--</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlstate" InitialValue="0" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">District :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">                        
                        <asp:DropDownList ID="ddldistrict" AppendDataBoundItems="true" 
                        DataTextField="District_Name" DataValueField="District_Id" runat="server" CssClass="auto-style2" >
                        <asp:ListItem Value="0">--Select District--</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddldistrict" InitialValue="0" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Correspondence Address:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtcadd" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcadd" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Contact No.:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtcontno" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcontno" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Mobile No.:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtmono" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtmono" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Email ID:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtemail" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Registration No.:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtregn" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtregn" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                  <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Registration Date/ Incorporation of FPC:<span>*</span></label>
                       <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="Textregdate" runat="server" class="form-control" MaxLength="10"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Textregdate" Format="dd-MM-yyyy"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Textregdate" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Project" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                   <%-- <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="Textregdate" runat="server" class="form-control" MaxLength="250"></asp:TextBox>
                    </div>  --%>                     
               
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Business of FPC:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtbufpc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtbufpc" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">No. of Small Shareholder Members :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtssm" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtssm" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">No. of Marginal Shareholder Members :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtmsm" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtmsm" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">No. of Landless Shareholder Members:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtlsm" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtlsm" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Total Shareholder Members:<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txttsm" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Authorised Capital (in INR):<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtac" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtac" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Paid Up Capital (in INR):<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtpuc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtpuc" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Amt. of Equity Grant Sought (in INR) :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtaegs" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtaegs" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Maximum Shareholding of an Individual Shareholder Member:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtmsism" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtmsism" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Maximum Shareholding of an Institutional Member:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtmsim" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtmsim" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Bank Name in which account is maintained :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">                     
                        <asp:DropDownList ID="ddlbankname" AppendDataBoundItems="true" 
                        DataTextField="Bank_Name" DataValueField="Bank_Id" runat="server" AutoPostBack="true" CssClass="auto-style2" OnSelectedIndexChanged="ddlbankname_SelectedIndexChanged">
                        <asp:ListItem Value="0">--Select Bank Name--</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="ddlbankname" InitialValue="0" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Branch Name  :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">                     
                        <asp:DropDownList ID="ddlbranch" AppendDataBoundItems="true" 
                        DataTextField="Branch_Name" DataValueField="BankBranch_Id" runat="server" CssClass="auto-style2" >
                        <asp:ListItem Value="0">--Select Branch--</asp:ListItem>
                    </asp:DropDownList>
                    </div>                
                </div>

                       <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">IFSC Code:<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtifsc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>             
                </div>

                       <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Account No.:<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtacc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>
                    </div>                
                </div>

                       <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">No. of Directors :<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtnod" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>                  
                </div>

                       <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Mode of Board Formation:<span></span></label>
                    <div class="col-md-3 col-sm-12">                     
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataTextField="ans"   
                    DataValueField="ans">  
                    <asp:ListItem>Election</asp:ListItem>  
                    <asp:ListItem>Nomination</asp:ListItem>  
                </asp:RadioButtonList>                          
                    </div>                  
                </div>

                       <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">No. of Women Directors:<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtnwd" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>                   
                </div>

                       <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Project related to ST/SC:<span></span></label>
                     <div class="col-md-3 col-sm-12">
                      
                       <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataTextField="ans"   
                    DataValueField="ans">  
                    <asp:ListItem>Yes</asp:ListItem>  
                    <asp:ListItem>No</asp:ListItem>  
                </asp:RadioButtonList> 
                           
                    </div>                    
                </div>

                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Dates of Board Meetings held in the last year:<span>*</span></label>
                       <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtdbmhly" runat="server" class="form-control" MaxLength="10"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtdbmhly" Format="dd-MM-yyyy"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtdbmhly" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Project" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>                                              
                </div>

                       <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">No. of Functional Committees of the FPC :(Mention the major activities of each committee):<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtnfcfpc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>
                    </div>               
                </div>

                       <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Roles & Responsibilities of Board of Directors:<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtrrbod" runat="server" class="form-control" MaxLength="250"></asp:TextBox>
                    </div>                
                </div>
                                  
                        <div class="form-group row">
                    <div class="col-sm-9 col-sm-offset-3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" ValidationGroup="District" OnClick="btnSubmit_Click" />
                        &nbsp;
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-primary" OnClick="btnReset_Click" />
                    </div>
                </div>                 
                    </div>
            </div>
            </section>
</asp:Content>
