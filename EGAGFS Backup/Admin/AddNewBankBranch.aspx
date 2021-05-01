<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewBankBranch.aspx.cs" Inherits="EGAGFS.Admin.AddNewBankBranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
        <div class="container">
            <ul class="breadcam">            
            </ul>
            <h3 class="title-heading">Add Bank Branch</h3>
                <div class="forms">
               
                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Bank Name :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">                      
                        <asp:DropDownList ID="ddlbank" AppendDataBoundItems="true" 
                        DataTextField="Bank_Name" DataValueField="Bank_Id" runat="server" CssClass="auto-style2" >
                        <asp:ListItem Value="0">--Select Bank--</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlbank" InitialValue="0" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Branch Name:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtbrname" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbrname" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">State :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">                     
                        <asp:DropDownList ID="ddlstate" AppendDataBoundItems="true" 
                        DataTextField="State_Name" DataValueField="State_Id" runat="server" CssClass="auto-style2" >
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
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Branch Address:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtbradd" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbradd" CssClass="requirefield"
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
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Contact Person Name:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtcpn" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcpn" CssClass="requirefield"
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
                    <label for="" class="col-md-3 col-sm-12 col-form-label">IFSC Code:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtifsc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtifsc" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="Branch" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">MICR Code:<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtmicr" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

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
