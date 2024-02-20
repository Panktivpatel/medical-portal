<%@ Page Title="" Language="C#" MasterPageFile="~/Reception/Reception.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Medical.Reception.Rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .open-button {
            background-color: #555;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            opacity: 0.8;
            position: fixed;
            bottom: 23px;
            right: 28px;
            width: 280px;
        }

        /* The popup form - hidden by default */
        .form-popup {
            display: none;
            position: fixed;
            bottom: 0;
            right: 15px;
            border: 3px solid #f1f1f1;
            z-index: 9;
        }

        /* Add styles to the form container */
        .form-container {
            max-width: 40%;
            margin-left: 43%;
            margin-bottom: 10%;
            background-color: white;
        }
            /* Set a style for the submit/login button */
            .form-container .btn {
                background-color: #04AA6D;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                width: 30%;
                margin-bottom: 10px;
                opacity: 0.8;
            }

            /* Add a red background color to the cancel button */
            .form-container .cancel {
                background-color: red;
            }

            /* Add some hover effects to buttons */
            .form-container .btn:hover, .open-button:hover {
                opacity: 1;
            }
    </style>
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
                                        <h4 class="card-title">Room Avaibility</h4>
                                        <div class="row">
                                            <asp:Repeater ID="room_display" runat="server">
                                                <HeaderTemplate></HeaderTemplate>
                                                <ItemTemplate>

                                                    <div class="col-2 p-3">
                                                        <button class="btn btn-success" onclick="openForm()"><%#Eval("room") %></button>
                                                    </div>
                                                    <div class="form-popup" id="myForm">
                                                        <div class="form-container">
                                                            <h1>Patient Data</h1>
                                                            <div class="col-md-6">
                                                                <div class="col-sm-3 col-form-label">Full Name</div>
                                                                <div class="form-group row">
                                                                    <div class="col-md-12">
                                                                        <asp:TextBox ID="name" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="col-sm-3 col-form-label">Full Name</div>
                                                                <div class="form-group row">
                                                                    <div class="col-md-12">
                                                                        <asp:TextBox ID="TextBox1" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                            <button type="submit" class="btn">Save</button>
                                                            <button type="button" class="btn cancel" onclick="closeForm()">X</button>
                                                        </div>
                                                    </div>

                                                </ItemTemplate>
                                                <FooterTemplate></FooterTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function openForm() {
            document.getElementById("myForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }
    </script>

</asp:Content>
