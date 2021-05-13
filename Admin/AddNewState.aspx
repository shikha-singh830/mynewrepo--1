<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewState.aspx.cs" Inherits="EGAGFS.AddNewState" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <ul class="breadcam">
                <li><a href="#" role="link">Home</a></li>
                <li class="current">Equity Grant</li>
            </ul>
            <h3 class="title-heading">Add State</h3>
                <div class="forms">
               
                      <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">State Code:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtcode" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcode" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="State" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>


                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">State Name:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtname" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>
                    <div class="col-md-3 col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" CssClass="requirefield"
                            Display="Dynamic" ErrorMessage="Required" ValidationGroup="State" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    <div class="form-group row ">
                    <label for="" class="col-md-3 col-sm-12 col-form-label">Description:<span>*</span></label>
                    <div class="col-md-3 col-sm-12">
                        <asp:TextBox ID="txtdesc" runat="server" class="form-control" MaxLength="250"></asp:TextBox>

                    </div>              
                </div>
                                  
                        <div class="form-group row">
                    <div class="col-sm-9 col-sm-offset-3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" ValidationGroup="State" OnClick="btnSubmit_Click" />
                        &nbsp;
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-primary" OnClick="btnReset_Click" />
                    </div>
                </div>                 
                    </div>
            </div>
            </section>
            </asp:Content>  