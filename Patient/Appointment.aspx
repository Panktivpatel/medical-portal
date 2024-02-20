<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="HospitalManagementSystem.Patient.Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <h1 class="text-primary">Book An Appointment</h1>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-12">
                    <div class="wow fadeInUp" data-wow-delay="0.5s">
                        <div>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="name" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label for="name">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="email" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label for="email">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="department" CssClass="form-control" runat="server"></asp:DropDownList>
                                        <label for="department">Select Department:</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="message" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label for="message">Message</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="symptoms" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label for="symptoms">Symptoms</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="phone" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label for="number">Your Phone Number</label>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-floating dropdown">
                                        <p class="button">Time Slot</p>
                                        <asp:DropDownList ID="timeSlot" CssClass="select form-control" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="book" CssClass="btn btn-primary w-100 py-3" runat="server" Text="Book Appointment" OnClick="book_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
