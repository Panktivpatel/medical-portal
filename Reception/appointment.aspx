<%@ Page Title="" Language="C#" MasterPageFile="~/Reception/Reception.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="Medical.Reception.appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item mt-5">
                    <a class="nav-link pt-5" href="Dashboard.aspx">
                        <span class="menu-title">Dashboard</span>
                        <i class="mdi mdi-home menu-icon text-success"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                        <span class="menu-title">Availbility</span>
                        <i class="menu-arrow"></i>
                        <i class="mdi mdi-crosshairs-gps menu-icon text-success"></i>
                    </a>
                    <div class="collapse" id="ui-basic">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"><a class="nav-link" href="Rooms.aspx">Rooms</a></li>
                            <li class="nav-item"><a class="nav-link" href="Docotors.aspx">Doctors</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="appointment.aspx">
                        <span class="menu-title">Book Appointment</span>
                        <i class="mdi mdi-contacts menu-icon text-success"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Billing.aspx">
                        <span class="menu-title">Billing</span>
                        <i class="mdi mdi-table-large menu-icon text-success"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                        <span class="menu-title">Attendence</span>
                        <i class="menu-arrow"></i>
                        <i class="mdi mdi-medical-bag menu-icon text-success"></i>
                    </a>
                    <div class="collapse" id="general-pages">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"><a class="nav-link" href="DentistsAttendence.aspx">Dentistry</a></li>
                            <li class="nav-item"><a class="nav-link" href="CardiologyAttendence.aspx">Cardiology</a></li>
                            <li class="nav-item"><a class="nav-link" href="ENTAttendence.aspx">ENT</a></li>
                            <li class="nav-item"><a class="nav-link" href="OrthopedicAttendence.aspx">Orthopedic</a></li>
                            <li class="nav-item"><a class="nav-link" href="PulmonologyAttendence.aspx">Pulmonology</a></li>
                            <li class="nav-item"><a class="nav-link" href="BloodScreeningAttendence.aspx">Blood Screening</a></li>
                            <li class="nav-item"><a class="nav-link" href="GynaecologyAttendence.aspx">Gynaecology</a></li>
                            <li class="nav-item"><a class="nav-link" href="PediatricAttendence.aspx">Pediatric</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>

        <div class="main-panel pt-5 mt-3">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Patient Info</h4>
                                <div class="form-sample">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Full Name</label>
                                            <div class="form-group row">
                                                <div class="col-md-12">
                                                    <asp:TextBox ID="name" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Email</label>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Message</label>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="message" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Gender</label>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <asp:DropDownList ID="gender" CssClass="form-control select-focus" runat="server">
                                                        <asp:ListItem>Male</asp:ListItem>
                                                        <asp:ListItem>Female</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                        <asp:ListItem>Does not want to reveal</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Time Slot</label>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <asp:DropDownList ID="time" CssClass="form-control select-focus" runat="server">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="col-sm-6 col-form-label">Appointment Date</label>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="doa" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Phone</label>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="phone" type="number" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Symptoms</label>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="symptoms" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Department</label>
                                            <div class="form-group row">
                                                <div class="col-md-12">
                                                    <asp:DropDownList ID="department" CssClass="form-control select-focus" runat="server" OnSelectedIndexChanged="department_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="col-sm-3 col-form-label">Doctor</label>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <asp:DropDownList ID="doctor" CssClass="form-control select-focus" AutoPostBack="true" runat="server">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <asp:Button ID="book" CssClass="btn btn-success mb-2" runat="server" Text="Book An Appointment" OnClick="book_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
