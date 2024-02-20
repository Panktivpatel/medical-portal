<%@ Page Title="" Language="C#" MasterPageFile="~/Reception/Reception.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Medical.Reception.Dashboard" %>

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

        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="page-header pt-5">
                    <h3 class="page-title">
                        <span class="page-title-icon bg-gradient-primary text-white me-2">
                            <i class="mdi mdi-home"></i>
                        </span>Dashboard
                    </h3>
                    <nav aria-label="breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active" aria-current="page">
                                <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="row">
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-danger card-img-holder text-white">
                            <div class="card-body">
                                <h4 class="font-weight-normal mt-2">Weekly Patients  <i class="mdi mdi-account mdi-24px float-right"></i>
                                </h4>
                                <h2>600</h2>
                                <h6 class="card-text">Increased by 10%</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-info text-white">
                            <div class="card-body">
                                <h4 class="font-weight-normal mt-2">Weekly Admits  <i class="mdi mdi-hotel mdi-24px float-right"></i>
                                </h4>
                                <h2>120</h2>
                                <h6 class="card-text">Decreased by 7%</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-success text-white">
                            <div class="card-body">
                                <h4 class="font-weight-normal mt-2">New Equipments <i class="mdi mdi-pill mdi-24px float-right"></i>
                                </h4>
                                <h2>20</h2>
                                <h6 class="card-text">Increased by 5%</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Recent Appointments</h4>
                                <div class="table-responsive">
                                    <table class="table">
                                        <asp:Repeater ID="display_data" runat="server">
                                            <HeaderTemplate>
                                                <thead>
                                                    <tr>
                                                        <th>Name </th>
                                                        <th>Department </th>
                                                        <th>Time Slot </th>
                                                        <th>Visiting Date</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tbody>
                                                    <tr>
                                                        <td><%#Eval("FullName")%> </td>
                                                        <td><%#Eval("Department")%> </td>
                                                        <td><%#Eval("TimeSlot")%> </td>
                                                        <td><%#Eval("doa") %></td>
                                                        <td><a hret="#" class="btn badge badge-gradient-success">Edit</a></td>
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
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Recent Appointments</h4>
                                <div class="table-responsive">
                                    <table class="table">
                                        <asp:Repeater ID="confrimpatients" runat="server">
                                            <HeaderTemplate>
                                                <thead>
                                                    <tr>
                                                        <th>Name </th>
                                                        <th>Department </th>
                                                        <th>Symptoms </th>
                                                        <th>Time Slot </th>
                                                        <th> </th>
                                                    </tr>
                                                </thead>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tbody>
                                                    <tr>
                                                        <td><%#Eval("Name")%> </td>
                                                        <td><%#Eval("Department")%> </td>
                                                        <td><%#Eval("Symptoms")%> </td>
                                                        <td><%#Eval("TimeSlot")%> </td>
                                                        <td><a href="<%# Eval("ID","appointment.aspx?ID={0}") %>" class="btn badge badge-gradient-success">Confirm</a> <a href="#" class="btn badge badge-gradient-danger">Cancel</a></td>
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
                <div class="row">
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-dark card-img-holder text-white">
                            <div class="card-body text-center">
                                <a href="#" class="btn text-white fw-bolder">Book An Appointment</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-dark card-img-holder text-white">
                            <div class="card-body text-center">
                                <a href="#" class="btn text-white fw-bolder">Ckeck Bed Availability</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 stretch-card grid-margin">
                        <div class="card bg-gradient-dark card-img-holder text-white">
                            <div class="card-body text-center">
                                <a href="#" class="btn text-white fw-bolder">Mark Attendence</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:partials/_footer.html -->
            <footer class="footer">
                <div class="container-fluid d-flex justify-content-between">
                    <span class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright © MediCare Hospital</span>
                </div>
            </footer>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>

</asp:Content>
