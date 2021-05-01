<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="EGAGFS.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
     <meta charset="utf-8">
    <title>:: Equity Grant ::</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <%--<img src="images/logo.png" class="img-responsive logo" />--%>
    <div class="login">
<h3><i class="fa fa-user-o" aria-hidden="true"></i>Login</h3>
  <div class="form-group">
    <label for="">User name</label>
    <input type="text" class="form-control" id="txtUsername" runat="server" placeholder="Username" maxlength="32">
      <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username can not be blank" Font-Size="12px" ForeColor="Red" ValidationGroup="adminlogin" Display="Static" SetFocusOnError="true"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="txtPassword" runat="server" placeholder="Password" maxlength="20">
      <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password can not be blank" Font-Size="12px" ForeColor="Red" ValidationGroup="adminlogin" Display="Static" SetFocusOnError="true"></asp:RequiredFieldValidator>
  </div>
 <asp:Button ID="btnLogin" runat="server" class="btn btn-default" style="width:100%;" Text="Login" ValidationGroup="adminlogin"/>
 <%--<a href="adminhome.html" class="btn btn-default" style="width:100%;">Login Now</a>--%>
 
</div> <!--end login-->
   
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
    </form>
</body>
</html>
