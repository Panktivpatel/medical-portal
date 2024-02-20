<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HospitalManagementSystem.Patient.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Search Start -->
    <div class="container-fluid bg-primary mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;">
            <div class="container">
                <div class="row g-2">
                    <div class="col-md-10">
                        <div class="row g-2">
                            <div class="col-md-4">
                                <input type="text" class="form-control border-0 py-3" placeholder="Search Keyword">
                            </div>
                            <div class="col-md-4">
                                <select class="form-select border-0 py-3">
                                    <option selected>Hospital Name</option>
                                    <option value="1">Trivia - MediCare Group</option>
                                    <option value="2">Coolors - MediCare Group</option>
                                    <option value="3">Life - MediCare Groups</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <select class="form-select border-0 py-3">
                                    <option selected>Location</option>
                                    <option value="1">Vadodara</option>
                                    <option value="2">Surat</option>
                                    <option value="3">Ahmedabad</option>
                                    <option value="3">Rajkot</option>
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

    <!-- Department Start -->
    <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Departments</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="#">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/icon-teeth.png" alt="Icon">
                                </div>
                                <h6>Dentistry</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="#">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/icon-heart.png" alt="Icon">
                                </div>
                                <h6>Cardiology</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="#">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/icon-ear.png" alt="Icon">
                                </div>
                                <h6>ENT</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="#">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/icon-knee.png" alt="Icon">
                                </div>
                                <h6>Orthopedic</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="#">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/icon-pulmonology.png" alt="Icon">
                                </div>
                                <h6>Pulmonology</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="#">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/icon-blood-test.png" alt="Icon">
                                </div>
                                <h6>Blood Screening</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="#">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/icon-sonography.png" alt="Icon">
                                </div>
                                <h6>Gynaecology</h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="#">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/icon-pediatrics.png" alt="Icon">
                                </div>
                                <h6>Pediatric</h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    <!-- Department End -->

    <!-- About MediCare Start -->
    <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                        <div class="about-img position-relative overflow-hidden p-5 pe-0">
                            <img class="img-fluid w-100" src="img/about.png">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                        <h1 class="mb-4">What We Provide You</h1>
                        <p class="mb-4"><strong>HAVE ACCESS TO HEALTH PROFESSIONALS ANY TIME.</strong></p>
                        <p><i class="fa fa-check text-primary me-3"></i>Pause to Wait, Avalaiable Everywhare</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Detect Disease At Home Only</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Rise in Efficiency, Quality of Care</p>
                        <a class="btn btn-primary py-3 px-5 mt-3" href="#">Learn More About Us</a>
                    </div>
                </div>
            </div>
        </div>
    <!-- About MediCare End -->

    <!-- Hospital List Start -->
    <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-0 gx-5 align-items-end">
                    <div class="col-lg-6">
                        <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
                            <h1 class="mb-3">Hospitals</h1>
                            <p>No need to travel far away, as we are always near you to provide best treatments.</p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
                        <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary active" data-bs-toggle="pill" href="#tab-1">Vadodara</a>
                            </li>
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-2">Ahmedabad</a>
                            </li>
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-3">Rajkot</a>
                            </li>
                            <li class="nav-item me-0">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-4">Surat</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/vadodara-hospital-1.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Gotri</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Infinity Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Gotri, Vadodara</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>39 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>134 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>12 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/vadodara-hospital-2.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Alkapuri</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">LifeLine Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Alkapuri, Vadodara</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>12 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>56 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>4 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/vadodara-hospital-3.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Waghodiya</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">EXA Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Waghodiya, Vadodara</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>19 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>67 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>7 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/vadodara-hospital-4.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Manjapur</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">New Life Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Manjalpur, Vadodara</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>22 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>78 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>8 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/ahmedabad-hospital-1.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Maninagar</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Oxi Care Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Maninagar, Ahmedabad</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>22 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>78 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>8 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/ahmedabad-hospital-2.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Chandkheda</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Global Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Chandkheda, Ahmedabad</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>14 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>54 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>6 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/ahmedabad-hospital-3.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Shahibaug</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Breathe Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Shahibaug, Ahmedabad</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>20 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>57 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>7 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/ahmedabad-hospital-4.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Airport Road</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Green Rich Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Airport Road, Ahmedabad</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>22 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>65 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>8 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/ahmedabad-hospital-5.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Ghuma</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">EverLife Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Ghuma, Ahmedabad</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>18 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>45 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>8 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-3" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/rajkot-hospital-1.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Shardhar</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Exponential Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Shardhar, Rajkot</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>16 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>36 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>5 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/rajkot-hospital-2.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Gondal</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Lifelong Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Gondal, Rajkot</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>16 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>36 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>5 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/rajkot-hospital-3.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Jetpur</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">EXA Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Jetpur, Rajkot</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>16 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>36 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>5 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab-4" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/surat-hospital-1.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Jetpur</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Lifelong Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Jetpur, Surat</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>23 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>67 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>9 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/surat-hospital-2.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Jetpur</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Global Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Jetpur, Surat</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>20 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>56 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>7 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href="#"><img class="img-fluid" src="img/surat-hospital-3.png" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Jetpur</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h6 class="text-primary mb-3">Venus Hospital - Medicare Group</h6>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, Jetpur, Surat</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-md text-primary me-2"></i>19 Doctors</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>48 Beds</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-ambulance text-primary me-2"></i>8 Ambulances</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- Hospital List End -->

    <!-- Call to Action Start -->
    <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded p-3">
                    <div class="bg-white rounded p-4" style="border: 1px dashed rgba(0, 185, 142, .3)">
                        <div class="row g-5 align-items-center">
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                                <img class="img-fluid rounded w-100" src="img/call-to-action.jpg" alt="">
                            </div>
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                                <div class="mb-4">
                                    <h1 class="mb-3">Contact With Our Doctors</h1>
                                </div>
                                <a href="#" class="btn btn-primary py-3 px-4 me-2"><i class="fa fa-phone-alt me-2"></i>Make A Call</a>
                                <a href="#" class="btn btn-dark py-3 px-4"><i class="fa fa-calendar-alt me-2"></i>Book An Appoinment</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- Call to Action End -->

    <!-- Team Start -->
    <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">The Owners</h1>
                    <p>Meet The Owners, who proposed the idea to reach you everywhere and everytime, whenever required.</p>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-1.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Deepika Patel</h5>
                                <small>Board of Director</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-2.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Chintan Shah</h5>
                                <small>Board of Director</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-3.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Rishita Suthar</h5>
                                <small>Board of Director</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-4.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href="#"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Kartik Gupta</h5>
                                <small>Board of Director</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- Team End -->

    <!-- Testimonial Start -->
    <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Our Clients Say!</h1>
                </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <div class="testimonial-item bg-light rounded p-3">
                        <div class="bg-white border rounded p-4">
                            <p>I am satistisfied and greatful to have my diseases treated over here. Doctors have good experience and all the saff members are soft spoken.</p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-1.jpg" style="width: 45px; height: 45px;">
                                <div class="ps-3">
                                    <h6 class="fw-bold mb-1">Sachi Patel</h6>
                                    <small>Patient</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-light rounded p-3">
                        <div class="bg-white border rounded p-4">
                            <p>Greatful to visit here. Satisfied with the treatment and felt like my second home.  The doctors got me a new life and i am fit and healthy, living my new life.</p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-2.jpg" style="width: 45px; height: 45px;">
                                <div class="ps-3">
                                    <h6 class="fw-bold mb-1">Arth Parikh</h6>
                                    <small>Patient</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-light rounded p-3">
                        <div class="bg-white border rounded p-4">
                            <p>Doctors are available 24/7. In case of emergency one can feel relaxed. I was under continous observation by the team and my health was at the worst situation.</p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-3.jpg" style="width: 45px; height: 45px;">
                                <div class="ps-3">
                                    <h6 class="fw-bold mb-1">Samarth Saxena</h6>
                                    <small>Patient</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- Testimonial End -->

</asp:Content>
