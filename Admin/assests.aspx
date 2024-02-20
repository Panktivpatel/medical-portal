<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="assests.aspx.cs" Inherits="Medical.Admin.assests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-8 col-6">
                    <h4 class="page-title">Assets</h4>
                </div>
                <div class="col-sm-4 col-6 text-right m-b-30">
                    <a href="add_assests.aspx" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i>Add Asset</a>
                </div>
            </div>
            <div class="row filter-row">
                <div class="col-sm-6 col-md-3">
                    <div class="form-group form-focus">
                        <label class="focus-label">Employee Name</label>
                        <asp:DropDownList ID="user" CssClass="select floating" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="form-group form-focus">
                        <label class="focus-label">From</label>
                        <div class="cal-icon">
                            <input class="form-control floating datetimepicker" type="text">
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="form-group form-focus">
                        <label class="focus-label">To</label>
                        <div class="cal-icon">
                            <input class="form-control floating datetimepicker" type="text">
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <a href="#" class="btn btn-success btn-block">Search </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-striped custom-table mb-0 datatable">
                            <asp:Repeater ID="display_data" runat="server">
                                <HeaderTemplate>
                                    <thead>
                                        <tr>
                                            <th>Asset User</th>
                                            <th>Asset Name</th>
                                            <th>Asset Id</th>
                                            <th>Purchase Date</th>
                                            <th>Warrenty</th>
                                            <th>Manufacturer</th>
                                            <th>Amount</th>
                                            <th class="text-center">Status</th>
                                            <th class="text-right">Actions</th>
                                        </tr>
                                    </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                            <td><%#Eval("AssetUser") %></td>
                                            <td>
                                                <strong><%#Eval("Name") %></strong>
                                            </td>
                                            <td><%#Eval("Assest_id") %></td>
                                            <td><%#Eval("date") %></td>
                                            <td><%#Eval("Warranty") %></td>
                                            <td><%#Eval("manufacturer") %></td>
                                            <td><%#Eval("Price") %></td>
                                            <td class="text-center">
                                                <div class="dropdown action-label">
                                                    <a class="custom-badge status-red dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">Pending
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="#">Pending</a>
                                                        <a class="dropdown-item" href="#">Approved</a>
                                                        <a class="dropdown-item" href="#">Returned</a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-right">
                                                <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="<%# Eval("ID","edit_assests.aspx?ID={0}") %>"><i class="fa fa-pencil m-r-5"></i>Edit</a>
                                                        <a class="dropdown-item" href="<%# Eval("ID","assests.aspx?ID={0}&p=delete") %>" data-toggle="modal" data-target="#"><i class="fa fa-trash-o m-r-5"></i>Delete</a>
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
