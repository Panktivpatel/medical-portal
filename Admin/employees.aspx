<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="employees.aspx.cs" Inherits="Medical.Admin.employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">Employee</h4>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="add_employees.aspx" class="btn btn-success float-right btn-rounded"><i class="fa fa-plus"></i> Add Employee</a>
                    </div>
                </div>
                <div class="row filter-row">
                    <div class="col-sm-6 col-md-3">
                        <div class="form-group form-focus">
                            <label class="focus-label">Employee ID</label>
                            <input type="text" class="form-control floating">
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="form-group form-focus">
                            <label class="focus-label">Employee Name</label>
                            <input type="text" class="form-control floating">
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="form-group form-focus select-focus">
                            <label class="focus-label">Role</label>
                            <select class="select floating">
                                <option>Select Role</option>
                                <option>Nurse</option>
                                <option>Pharmacist</option>
                                <option>Laboratorist</option>
                                <option>Accountant</option>
                                <option>Receptionist</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <a href="#" class="btn btn-success btn-block"> Search </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
						<div class="table-responsive">
                            <table class="table table-striped custom-table">
                                <asp:Repeater ID="display" runat="server">
                                    <HeaderTemplate>
                                        <thead>
                                    <tr>
                                        <th style="min-width:200px;">Name</th>
                                        <th>Employee ID</th>
                                        <th>Email</th>
                                        <th>Mobile</th>
                                        <th style="min-width: 110px;">Join Date</th>
                                        <th>Role</th>
                                        <th class="text-right">Action</th>
                                    </tr>
                                </thead>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tbody>
                                    <tr>
                                        <td><%#Eval("FullName") %></td>
                                        <td><%#Eval("Employee_Id") %></td>
                                        <td><%#Eval("Email") %></td>
                                        <td><%#Eval("Phone") %></td>
                                        <td><%#Eval("JoiningDate") %></td>
                                        <td>
                                            <span class="custom-badge status-green"><%#Eval("Role") %></span>
                                        </td>
                                        <td class="text-right">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="<%# Eval("ID","edit_employee.aspx?ID={0}") %>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="<%# Eval("ID","employees.aspx?ID={0}&p=delete") %>"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                                    </ItemTemplate>
                                    <FooterTemplate></FooterTemplate>
                                </asp:Repeater>
                            </table>
						</div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
