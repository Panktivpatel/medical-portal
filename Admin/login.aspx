<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Medical.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0"/>
   <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
   <title>MediCare</title>
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
                    <form id="form1" class="form-signin" runat="server">
                    <div>
                        <a href="index-2.html" class="logo m-4">
                            <img src="logo.png" class="figure-img p-2" alt="" width="67" height="67"/>
                            <h2 style="color:#00b98e; font-weight:700">MEDICARE</h2>
                        </a>
                    </div>
                        <br />
                        <div class="form-group">
                            <label>Username</label>
                            <asp:TextBox ID="uname" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group text-right">
                            <a href="forgot-password.html">Forgot your password?</a>
                        </div>
                        <div class="form-group text-center">
                            <asp:Button ID="submit" runat="server" CssClass="btn btn-success account-btn" Text="Login" OnClick="submit_Click"/>
                        </div>
                        <div class="text-center register-link">
                            Don’t have an account? <a href="register.aspx" class="btn btn-link">Register Now</a>
                        </div>
                        <div class="text-center text-center">
                            <asp:Label Text="" runat="server" ID="lblmsg"></asp:Label>
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
