<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Medical.Admin.attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Attendance Sheet</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row p-3">
                        <div class="col-md-3">
                            <div class="text-center btn-group btn-group-lg btn-toolbar btn btn-success">
                                <a href="#" class="text-white btn">Dentistry</a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="text-center btn-group btn-group-lg btn-toolbar btn btn-success">
                                <a href="#" class="text-white btn">Cardiology</a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="text-center btn-group btn-group-lg btn-toolbar btn btn-success">
                                <a href="#" class="text-white btn">ENT</a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="text-center btn-group btn-group-lg btn-toolbar btn btn-success">
                                <a href="#" class="text-white btn">Orthopedic</a>
                            </div>
                        </div>
                    </div>
                    <div class="row p-3">
                        <div class="col-md-3">
                            <div class="text-center btn-group btn-group-lg btn-toolbar btn btn-success">
                                <a href="#" class="text-white btn">Pulmonology</a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="text-center btn-group btn-group-lg btn-toolbar btn btn-success">
                                <a href="#" class="text-white btn">Blood Screening</a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="text-center btn-group btn-group-lg btn-toolbar btn btn-success">
                                <a href="#" class="text-white btn">Gynaecology</a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="text-center btn-group btn-group-lg btn-toolbar btn btn-success">
                                <a href="#" class="text-white btn">Pediatric</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
