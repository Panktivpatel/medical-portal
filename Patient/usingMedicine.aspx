<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="usingMedicine.aspx.cs" Inherits="HospitalManagementSystem.Patient.usingMedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Search Start -->
    <div class="container-fluid bg-primary mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;">
            <div class="container">
                <div class="row g-2">
                    <div class="col-md-10">
                        <div class="row g-2">
                            <div class="col-md-6">
                                <input type="text" class="form-control border-0 py-3" placeholder="Search Keyword">
                            </div>
                            <div class="col-md-6">
                                <select class="form-select border-0 py-3">
                                    <option selected>Medicine Name</option>
                                    <option value="1">Property Type 1</option>
                                    <option value="2">Property Type 2</option>
                                    <option value="3">Property Type 3</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button class="btn btn-dark border-0 w-100 py-3">Search</button>
                    </div>
                </div>
            </div>
        </div>
    <!-- Search End -->

    <div class="container">
        <div class="wow fadeInUp" data-wow-delay="0.5s">
       <table class="table responsive-table align-content-center">
           <thead class="table-header">
           <tr class="row g-3 text-center table-row">
               <td class="col-md-6">Disease</td>
               <td class="col-md-6">Medicine</td>
           </tr>
               </thead>
           <tr class="row g-3 text-center table-row">
               <td class="col-md-6">Dengue</td>
               <td class="col-md-6">asdcvfrew-123mg</td>
           </tr>
       </table>
   </div>
    </div>


</asp:Content>
