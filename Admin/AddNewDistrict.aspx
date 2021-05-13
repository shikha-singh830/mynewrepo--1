<%@ Page Title="Add District" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewDistrict.aspx.cs" Inherits="EGAGFS.Admin.AddNewDistrict" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
        <div class="container">
            <ul class="breadcam">
<%--                <li><a href="#" role="link">Home</a></li>--%>
              
            </ul>
            <h3 class="title-heading">Add District</h3>
                <div class="forms">
               
                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">State :<span>*</span></label>
                    <div class="col-md-3 col-sm-12">  
                       <%-- OnSelectedIndexChanged="ddlstate_SelectedIndexChanged"--%>
                        <asp:DropDownList ID="ddlstate" AppendDataBoundItems="true" 
                        DataTextField="State_Name" DataValueField="State_Id" runat="server" CssClass="auto-style2" >
                        <asp:ListItem Value="0">--Select State--</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlstate" InitialValue="0" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="District" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>


                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">District Name:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtname" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="District" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Description:<span></span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtdesc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

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
