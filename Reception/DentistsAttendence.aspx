<%@ Page Title="" Language="C#" MasterPageFile="~/Reception/Reception.Master" AutoEventWireup="true" CodeBehind="DentistsAttendence.aspx.cs" Inherits="Medical.Reception.DentistsAttendence" %>

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
                                            <div class="form-group row">
                                                <div class="form-label">Name</div>
                                                <div class="col-sm-12">
                                                    <asp:DropDownList ID="name" CssClass="form-control select-focus" runat="server"></asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <div class="form-label">Attendence</div>
                                                <div class="col-sm-12">
                                                    <asp:DropDownList ID="attendence" CssClass="form-control select-focus" runat="server">
                                                        <asp:ListItem>Present</asp:ListItem>
                                                        <asp:ListItem>On leave</asp:ListItem>
                                                        <asp:ListItem>First Half Day</asp:ListItem>
                                                        <asp:ListItem>Second Half Day</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <div class="form-label">Arrival</div>
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="arrival" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <div class="form-label">Departure</div>
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="Departure" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <div class="form-label">Date</div>
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button ID="book" CssClass="btn btn-success mb-2" runat="server" Text="Mark Attendence" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
