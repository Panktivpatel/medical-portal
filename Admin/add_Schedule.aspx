<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="add_Schedule.aspx.cs" Inherits="Medical.Admin.add_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h4 class="page-title">Add Schedule</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Doctor Name</label>
                                    <asp:TextBox ID="name" runat="server" CssClass="form-control time star"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>ID</label>
                                    <asp:TextBox ID="admin_id" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <!-- select Available Days Time -->
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label>Available Days</label>
                                    <div class="col-lg-12">
                                        <asp:CheckBoxList ID="avail_days" CssClass="account-btn" RepeatColumns="7" CellPadding="10" runat="server">
                                            <asp:ListItem Value="Monday"> Monday </asp:ListItem>
                                            <asp:ListItem Value="Tuesday"> Tuesday </asp:ListItem>
                                            <asp:ListItem Value="Wednesday"> Wednesday </asp:ListItem>
                                            <asp:ListItem Value="Thursday"> Thursday </asp:ListItem>
                                            <asp:ListItem Value="Friday"> Friday </asp:ListItem>
                                            <asp:ListItem Value="saturday"> saturday </asp:ListItem>
                                            <asp:ListItem Value="Sunday"> Sunday </asp:ListItem>
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Time -->
                        <div class="row" id="datepairExample">
                            <!-- select Arrival Time -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Start Time</label>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="ArrivalHH" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-1"><b>:</b></div>
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="ArrivalMM" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:DropDownList ID="time" CssClass="form-control select-focus" runat="server">
                                                <asp:ListItem>AM</asp:ListItem>
                                                <asp:ListItem>PM</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- select Departure Time -->
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Departure Time</label>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="departHH" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-1"><b>:</b></div>
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="departMM" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:DropDownList ID="departD" CssClass="form-control select-focus" runat="server">
                                                <asp:ListItem>AM</asp:ListItem>
                                                <asp:ListItem>PM</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
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

                        <!-- Active - Inactive Button -->
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="display-block">Schedule Status</label>
                                <div class="form-check form-check-inline">
                                    <div class="btn btn-outline-success">
                                        <asp:RadioButton ID="active" GroupName="status" runat="server" />
                                        Active
                                    </div>
                                </div>
                                <div class="form-check form-check-inline">
                                    <div class="btn btn-outline-danger">
                                        <asp:RadioButton ID="inactive" GroupName="status" runat="server" />
                                        Inactive
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Add Schedule Button -->
                    <div>
                        <div class="m-t-20 text-center">
                            <asp:Button ID="add" runat="server" Text=" Add Schedule " OnClick="add_Click" CssClass="btn btn-success submit-btn" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>


</asp:Content>
