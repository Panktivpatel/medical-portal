<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="doctors.aspx.cs" Inherits="Medical.Admin.doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">Doctors</h4>
                </div>
                <div class="col-sm-8 col-9 text-right m-b-20">
                    <a href="add-doctors.aspx" class="btn btn-success btn-rounded float-right"><i class="fa fa-plus"></i> Add Doctor</a>
                </div>
            </div>
            <div class="row doctor-grid">
                <asp:Repeater ID="display_data" runat="server">
                    <HeaderTemplate></HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-4  col-lg-3">
                            <div class="profile-widget">
                                <div class="doctor-img">
                                    <a class="avatar" href="profile.html">
                                        <img alt="" src="../Admin/Doc_Image/<%#Eval("Doc_Image")%>">
                                    </a>
                                </div>
                                <div class="dropdown profile-action">
                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="<%# Eval("ID","edit_dooctor.aspx?ID={0}") %>"><i class="fa fa-pencil m-r-5"></i>Edit</a>
                                        <a class="dropdown-item" href="<%# Eval("ID","doctors.aspx?ID={0}&p=delete") %>" data-toggle="modal" data-target=""><i class="fa fa-trash-o m-r-5"></i>Delete</a>
                                    </div>
                                </div>
                                <h4 class="doctor-name text-ellipsis"><a href="profile.html"><%#Eval("FullName") %></a></h4>
                                <div class="doc-prof"><%#Eval("Department") %></div>
                                <div class="user-country">
                                    <i class="fa fa-map-marker"></i> <%#Eval("Address") %>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
