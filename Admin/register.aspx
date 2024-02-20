<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Medical.Admin.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0"/>
   <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <title>Medicare</title>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/scrollbar.css"/>
</head>
<body>
    <div class="main-wrapper account-wrapper">
        <div class="account-page">
			<div class="account-center">
				<div class="account-box">
                    <form id="form1" runat="server">
                        <div>
                            <a href="index-2.html" class="logo m-4">
                                <img src="logo.png" class="figure-img p-2" alt="" width="67" height="67"/>
                                <h2 style="color:#00b98e; font-weight:700">MEDICARE</h2>
                            </a>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Username</label>
                            <asp:TextBox ID="uname" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Email Address</label>
                            <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Mobile Number</label>
                            <asp:TextBox ID="phone" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group text-center">
                            <asp:Button ID="add" CssClass="btn btn-success account-btn" runat="server" Text="Sign Up" OnClick="add_Click" />
                        </div>
                        <div class="text-center login-link">
                            Already have an account? <a href="login.aspx" class="btn btn-link">Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>
