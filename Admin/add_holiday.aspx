<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHomePage.Master" AutoEventWireup="true" CodeBehind="add_holiday.aspx.cs" Inherits="Medical.Admin.add_holiday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h4 class="page-title">Add Holiday</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div>
                        <div class="form-group">
                            <label>Holiday Name <span class="text-danger">*</span></label>
                            <asp:TextBox ID="name" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Holiday Date <span class="text-danger">*</span></label>
                                    <div class="cal-icon">
                                        <asp:TextBox ID="date" type="text" CssClass="form-control datetimepicker" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Day <span class="text-danger">*</span></label>
                                    <asp:DropDownList ID="day" CssClass="form-control select-focus" runat="server">
                                        <asp:ListItem>Monday</asp:ListItem>
                                        <asp:ListItem>Tuesday</asp:ListItem>
                                        <asp:ListItem>Wednesday</asp:ListItem>
                                        <asp:ListItem>Thursday</asp:ListItem>
                                        <asp:ListItem>Friday</asp:ListItem>
                                        <asp:ListItem>Saturday</asp:ListItem>
                                        <asp:ListItem>Sunday</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="m-t-20 text-center">
                            <asp:Button ID="add" runat="server" Text="Add Holiday" CssClass="btn btn-success submit-btn" OnClick="add_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
