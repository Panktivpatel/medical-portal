<%@ Page Title="" Language="C#" MasterPageFile="~/Reception/Reception.Master" AutoEventWireup="true" CodeBehind="Docotors.aspx.cs" Inherits="Medical.Reception.Docotors" %>
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
                            <div class="col-lg-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
