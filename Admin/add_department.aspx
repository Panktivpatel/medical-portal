<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="add_department.aspx.cs" Inherits="Medical.Admin.add_department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Add Department</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div>
							<div class="form-group">
								<label>Department Name</label>
								<asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
							</div>
                            <!-- Active - Inactive Button -->
                                <div class="form-group">
                                <label class="display-block">Schedule Status</label>
								<div class="form-check form-check-inline">
                                    <div class="btn btn-outline-success">
                                        <asp:RadioButton ID="active" GroupName="status" runat="server" /> Active
                                    </div>
								</div>
								<div class="form-check form-check-inline">
                                    <div class="btn btn-outline-danger">
                                        <asp:RadioButton ID="inactive" GroupName="status" runat="server" /> Inactive
                                    </div>
								</div>
                            </div>
                            <div class="m-t-20 text-center">
                                <asp:Button ID="add" runat="server" CssClass="btn btn-primary submit-btn" Text="Create Department" OnClick="add_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
