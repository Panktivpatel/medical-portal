﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="add-doctors.aspx.cs" Inherits="Medical.Admin.add_doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
    $("#dob").datepicker();
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Add Doctor</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>First Name <span class="text-danger">*</span></label>
                                        <asp:TextBox ID="fname" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <asp:TextBox ID="lname" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Username <span class="text-danger">*</span></label>
                                        <asp:TextBox ID="uname" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Email <span class="text-danger">*</span></label>
                                        <asp:TextBox ID="email" type="email" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox ID="pass" type="password" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Confirm Password</label>
                                        <asp:TextBox ID="cpass" type="password" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
								<div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Date of Birth</label>
                                            <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
									<div class="form-group gender-select">
										<label class="gen-label">Gender:</label>
										<div class="form-check-inline">
                                             <asp:RadioButton ID="male" GroupName="gender" CssClass="form-check-input" runat="server" />Male
										</div>
										<div class="form-check-inline">
											<asp:RadioButton ID="female" GroupName="gender" CssClass="form-check-input" runat="server" />Female
										</div>
									</div>
                                </div>
								<div class="col-sm-12">
									<div class="row">
										<div class="col-sm-6 col-md-6 col-lg-6"">
											<div class="form-group">
												<label>Address</label>
                                                <asp:TextBox ID="address" type="text" CssClass="form-control" runat="server"></asp:TextBox>
											</div>
										</div>
                                        <div class="col-sm-6 col-md-6 col-lg-6">
											<div class="form-group">
												<label>Department</label>
                                                <asp:DropDownList ID="department" CssClass="form-control select-focus" runat="server">
                                                    <asp:ListItem>Dentistry</asp:ListItem>
                                                    <asp:ListItem>Cardiology</asp:ListItem>
                                                    <asp:ListItem>ENT</asp:ListItem>
                                                    <asp:ListItem>Orthopedic</asp:ListItem>
                                                    <asp:ListItem>Pulmonology</asp:ListItem>
                                                    <asp:ListItem>Blood Screening</asp:ListItem>
                                                    <asp:ListItem>Gynaecology</asp:ListItem>
                                                    <asp:ListItem>Pediatric</asp:ListItem>
                                                </asp:DropDownList>
											</div>
										</div>
										<div class="col-sm-6 col-md-6 col-lg-6">
											<div class="form-group">
												<label>City</label>
                                                <asp:DropDownList ID="city" CssClass="form-control select-focus" runat="server">
                                                    <asp:ListItem>Vadodara</asp:ListItem>
                                                    <asp:ListItem>Ahmedabad</asp:ListItem>
                                                    <asp:ListItem>Rajkot</asp:ListItem>
                                                    <asp:ListItem>Surat</asp:ListItem>
                                                </asp:DropDownList>
											</div>
										</div>
										<div class="col-sm-6 col-md-6 col-lg-6">
											<div class="form-group">
												<label>Postal Code</label>
                                                <asp:TextBox ID="code" type="text" CssClass="form-control" runat="server"></asp:TextBox>
											</div>
										</div>
									</div>
								</div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Phone </label>
                                        <asp:TextBox ID="phone" type="number" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
									<div class="form-group">
										<label>Photo</label>
										<div class="profile-upload">
											<div class="upload-img">
												<img alt="" src="assets/img/user.jpg">
											</div>
											<div class="upload-input">
                                                <%--<asp:TextBox ID="img" type="file" CssClass="form-control" runat="server"></asp:TextBox>--%>
                                                <asp:FileUpload ID="Img" runat="server" CssClass="form-control"/>
											</div>
										</div>
									</div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="display-block">Status</label>
								<div class="form-check form-check-inline">
                                    <asp:RadioButton ID="doctor_active" runat="server" GroupName="status" CssClass="form-check-input" Checked="true"/>
									<label class="form-check-label" for="doctor_active">
									Active
									</label>
								</div>
								<div class="form-check form-check-inline">
                                    <asp:RadioButton ID="doctor_inactive" runat="server" CssClass="form-check-input" GroupName="status"/>
									<label class="form-check-label" for="doctor_inactive">
									Inactive
									</label>
								</div>
                            </div>
                            <div class="m-t-20 text-center">
                                <asp:Button ID="add" runat="server" Text="Add Doctor" CssClass="btn btn-success submit-btn" OnClick="add_Click"/>
                                <asp:Label ID="lblMessage" runat="server" server="" Text="<asp:HyperLink runat="></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
